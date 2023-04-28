#include <gl_deps.h>

#include <imgui.h>
#include <imgui_impl_glfw.h>
#include <imgui_impl_opengl3.h>

//#include <unistd.h>
#include <Windows.h>
#include <iostream>
#include <string>
#include <sstream>
#include <vector>
#include <memory>

#include "shader.h"
#include "compute_shader.h"

#include "texture.h"










class RenderRectangle{
public:
    std::vector<unsigned int> indices;
    GLuint EBO;
    std::vector<float> vertices;
    GLuint VBO;
    GLuint VAO;
    
    std::shared_ptr<Shader> m_shader;
    std::shared_ptr<Texture> m_texture;

    glm::mat4 Scale = glm::scale(glm::vec3(1,1,1));
    glm::mat4 Rotation = glm::rotate(0.f, glm::vec3(0,0,1));
    glm::mat4 Translation = glm::translate(glm::vec3(0,0,0));;
    glm::mat4 Veiw = glm::scale(glm::vec3(1,1,1));

    float m_x, m_y;


    unsigned int width, height;

    int m_depth=2;

    RenderRectangle(std::shared_ptr<Texture>& texture, std::shared_ptr<Shader> shader){


        m_shader = std::shared_ptr<Shader>(shader);
        m_texture = std::shared_ptr<Texture>(texture);
        //texture = std::make_unique<Texture>(n_width, n_height, GL_LINEAR);

        m_shader.get()->bind();
        m_shader.get()->setUniformTexure("render_texture", 0, texture.get()->id);



        indices = {
            0,1,2,2,3,0
        };

        // Generate a buffer for the indices
         glGenBuffers(1, &EBO);
         glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
         glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(unsigned int), &indices[0], GL_STATIC_DRAW);

        vertices = {
            // positions       // texture coords
             1.0f,  1.0f, 0.0f, 1.0f, 1.0f,   // top right
             1.0f, -1.0f, 0.0f, 1.0f, 0.0f,   // bottom right
            -1.0f, -1.0f, 0.0f, 0.0f, 0.0f,   // bottom left
            -1.0f,  1.0f, 0.0f, 0.0f, 1.0f    // top left 
        };


        glGenVertexArrays(1, &VAO);
        glGenBuffers(1, &VBO);
        glBindBuffer(GL_ARRAY_BUFFER, VBO);
        glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(float), &vertices[0], GL_STATIC_DRAW);

        // bind the Vertex Array Object first, then bind and set vertex buffer(s), and then configure vertex attributes(s).
        glBindVertexArray(VAO);

        //Scale = glm::scale(glm::vec3(1,texture.get()->m_width/texture.get()->m_height,1));


        glEnableVertexAttribArray(0); 
        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)(0 * sizeof(float)));

        glEnableVertexAttribArray(1); 
        glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)(3 * sizeof(float)));




    }

    void setTexture(std::shared_ptr<Texture>& texture) {
        m_texture = std::shared_ptr<Texture>(texture);
        m_shader.get()->bind();
        m_shader.get()->setUniformTexure("render_texture", 0, texture.get()->id);
    }

    ~RenderRectangle(){
        glDeleteVertexArrays(1, &VAO);
        glDeleteBuffers(1, &VBO);
        glDeleteBuffers(1, &EBO);
    }

    void render(){
        
        m_shader.get()->bind();
        m_texture.get()->display_bind(0);


        GLuint scale_id = glGetUniformLocation(m_shader.get()->id, "scale");
        glUniformMatrix4fv(scale_id, 1, GL_FALSE, &Scale[0][0]);

        GLuint rotation_id = glGetUniformLocation(m_shader.get()->id, "rotate");
        glUniformMatrix4fv(rotation_id, 1, GL_FALSE, &Rotation[0][0]);

        GLuint translation_id = glGetUniformLocation(m_shader.get()->id, "translate");
        glUniformMatrix4fv(translation_id, 1, GL_FALSE, &Translation[0][0]);

        GLuint m_id = glGetUniformLocation(m_shader.get()->id, "M_depth");
        glUniform1i(m_id, m_depth);

        glBindVertexArray(VAO);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
        glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);

    }


    void set_pos(float x, float y){
        Translation = glm::translate(glm::vec3(x,y,0));
        m_x = x, m_y = y;
    }

    void set_rotation(float angle){
        Rotation = glm::rotate(angle, glm::vec3(0,0,1));
    }
    
    void set_size(float factor_x, float factor_y){
        //update transform buffer
        Scale = glm::scale(glm::vec3(1.f*factor_x, 1.f*factor_y, 1.f));
    }
};
















bool settings_window_state = false;


float mouse_x = 0, mouse_y = 0;
bool right_mouse_b_pressed = false;
bool p_pressed = false;

int s_width = 600, s_height = 400;
int side_gui_width = 200;
int tex_w = s_width - side_gui_width; int tex_h = s_height;

bool vsync_state = true;

int selected_rect = 0;

std::unique_ptr<RenderRectangle> screen_rect;
std::vector<std::unique_ptr<RenderRectangle>> base_rects;  

std::shared_ptr<Texture> render_texture;
std::shared_ptr<Texture> display_texture;


std::string shader_path = "shaders/";
std::string post_shader_name = "post";
std::string render_shader_name = "rectangle";
std::string __vs_shader = ".vs"; std::string __fs_shader = ".fs";

std::shared_ptr<Shader> render_shader;
std::shared_ptr<Shader> post_shader;

int recursion_depth = 30;

float background_color[3] = {0.1f, 0.1f, 0.1f};
float primary_color[3] = { 0.1f, 0.1f, 0.1f };
float recurive_opacity_step = 0.1f;


void framebuffer_size_callback(GLFWwindow* window, int width, int height);

void keyboard_callback(GLFWwindow* window, int key, int scancode, int action, int mods);

void mouse_button_callback(GLFWwindow* window, int button, int action, int mods);

static void cursor_position_callback(GLFWwindow* window, double xpos, double ypos);

void GLAPIENTRY
MessageCallback( GLenum source,
                 GLenum type,
                 GLuint id,
                 GLenum severity,
                 GLsizei length,
                 const GLchar* message,
                 const void* userParam )
{
  fprintf( stderr, "GL CALLBACK: %s type = 0x%x, severity = 0x%x, message = %s\n",
           ( type == GL_DEBUG_TYPE_ERROR ? "** GL ERROR **" : "" ),
            type, severity, message );
}













int main()
{
    


#pragma region INIT

    // glfw: initialize and configure
    // ------------------------------
    // Initialise GLFW

    if( !glfwInit() )
    {
      std::cout<<"Failed to initialize GLFW\n";
      return -1;
    }
  


    const char* glsl_version = "#version 430";
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_DOUBLEBUFFER, GLFW_FALSE);

    //glfwWindowHint(GLFW_TRANSPARENT_FRAMEBUFFER, GL_TRUE);
    //glfwWindowHint(GLFW_DECORATED, GL_FALSE);


    // glfw window creation
    // --------------------
    GLFWwindow* window = glfwCreateWindow(s_width, s_height, "fractal editor", NULL, NULL);
    if (window == NULL)
    {
        std::cout << "Failed to create GLFW window" << std::endl;
        const char** errDecr;
        glfwGetError(errDecr);
        std::cout <<errDecr<<"\n";
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);
    glfwSwapInterval(0);

    // glad: load all OpenGL function pointers
    // ---------------------------------------
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }

    //glEnable              ( GL_DEBUG_OUTPUT );
    glDebugMessageCallback( MessageCallback, 0 );


    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSetKeyCallback(window, keyboard_callback);
    glfwSetMouseButtonCallback(window, mouse_button_callback);
    glfwSetCursorPosCallback(window, cursor_position_callback);



    // Setup ImGui context
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); (void)io;
    
    // Setup ImGui style
    ImGui::StyleColorsDark();
    
    // Setup ImGui Platform/Renderer backends
    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init(glsl_version);



    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA); 


    render_texture = std::make_shared<Texture>(tex_w, tex_h, GL_LINEAR);
    display_texture = std::make_shared<Texture>(tex_w, tex_h, GL_LINEAR);

    render_shader = std::make_unique<Shader>((shader_path + render_shader_name + __vs_shader).c_str(),
                                                (shader_path + render_shader_name + __fs_shader).c_str());

    post_shader = std::make_unique<Shader>((shader_path + post_shader_name + __vs_shader).c_str(),
                                                (shader_path + post_shader_name + __fs_shader).c_str());


    screen_rect = std::make_unique<RenderRectangle>(display_texture, post_shader);

















#pragma endregion
    
    
    GLuint DispFramebufferName = 0;
    glGenFramebuffers(1, &DispFramebufferName);
    

    GLuint RendFramebufferName = 0;
    glGenFramebuffers(1, &RendFramebufferName);
    



    // render loop
    // -----------
    while (!glfwWindowShouldClose(window))
    {
        
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();
        

        ImGui::SetNextWindowPos(ImVec2(tex_w, 0));
        ImGui::SetNextWindowSize(ImVec2(side_gui_width, s_height));

        ImGui::Begin("basic settings");
        ImGui::Separator();


        ImGui::Text("mouse");
        ImGui::Text("%5.3f %5.3f", mouse_x, mouse_y);
        ImGui::Separator();


        ImGui::Text("\n\nfps = %.3f | ms = %.3f", ImGui::GetIO().Framerate, 1000.f / ImGui::GetIO().Framerate);
        ImGui::Separator();

        ImGui::ColorEdit3("backgroung color", background_color, 0);
        ImGui::ColorEdit3("primary color", primary_color, 0);
        ImGui::Separator();

        ImGui::SliderFloat("step", &recurive_opacity_step, 0.0f, 1.0f, "%.5f", 1);
        ImGui::InputFloat("custome step", &recurive_opacity_step, 0.0f, 0.0f, "%.5f", 0);
        ImGui::Separator();

        ImGui::SliderInt("resurcive count", &recursion_depth, 0, 1000, "%d", 0);

        if (ImGui::Button("reload shaders")) {
            render_shader.get()->reload((shader_path + render_shader_name + __vs_shader).c_str(),
                (shader_path + render_shader_name + __fs_shader).c_str());

            post_shader.get()->reload((shader_path + post_shader_name + __vs_shader).c_str(),
                (shader_path + post_shader_name + __fs_shader).c_str());
        }

        ImGui::Checkbox("vsync", &vsync_state);

        ImGui::End();


        ImGui::Render();    


        


        if (right_mouse_b_pressed){
            if(!base_rects.empty()){
                base_rects.at(selected_rect).get()->set_pos(mouse_x, mouse_y);
            }
        }











        glViewport(0, 0, tex_w, tex_h);

        
        

        glBindFramebuffer(GL_FRAMEBUFFER, RendFramebufferName);
        glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, render_texture.get()->id, 0);
        glClearColor(1, 1, 1, (std::exp(-8.0f*recurive_opacity_step)-1.0f)/(-0.999664537372f));
        glClear(GL_COLOR_BUFFER_BIT);
        
        
        glBindFramebuffer(GL_FRAMEBUFFER, DispFramebufferName);
        glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, display_texture.get()->id, 0);

        glClearColor(0, 0, 0, 0);
        glClear(GL_COLOR_BUFFER_BIT);
        

        for (int i = 0; i < recursion_depth; i++) {
            glBindFramebuffer(GL_FRAMEBUFFER, DispFramebufferName);
            glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, display_texture.get()->id, 0);
            glClearColor(0, 0, 0, 0);
            glClear(GL_COLOR_BUFFER_BIT);

            for (int j = 0; j < base_rects.size(); j++) {
                base_rects.at(j).get()->m_shader.get()->bind();
                glUniform3f(glGetUniformLocation(render_shader.get()->id, "primary_color"), primary_color[0], primary_color[1], primary_color[2]);
                base_rects.at(j).get()->render();
            }
            
            glBindFramebuffer(GL_FRAMEBUFFER, RendFramebufferName);
            glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, render_texture.get()->id, 0);

            screen_rect.get()->render();
        }
        

        //for (int j = 0; j < base_rects.size(); j++) {
        //    base_rects.at(j).get()->render();
        //}
        
/*


        //glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        glClear(GL_COLOR_BUFFER_BIT);  
        //render semi transparent rectangles with textures
        for(int j=0; j<base_rects.size(); j++){
            base_rects.at(j).get()->render();
        }

*/





        //glBindFramebuffer(GL_FRAMEBUFFER, RendFramebufferName);
        //glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, render_texture.get()->id, 0);
        //glClearColor(0.5f, 0.5f, 0.1f, 0.1f);
        //glClear(GL_COLOR_BUFFER_BIT);

        // render
        // ------
        glBindFramebuffer(GL_FRAMEBUFFER, 0);

        glClearColor(background_color[0], background_color[1], background_color[2], 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        //
        //screen_rect.get()->render();
        


        for (int j = 0; j < base_rects.size(); j++) {
            base_rects.at(j).get()->m_shader.get()->bind();
            glUniform3f(glGetUniformLocation(render_shader.get()->id, "primary_color"), primary_color[0], primary_color[1], primary_color[2]);
            base_rects.at(j).get()->render();
        }

        


        //render ImGui on to screen
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());


        glBegin(GL_POINTS);

        glVertex3f(0.0f, 0.0f, 0.f);
        glVertex3f(10.0f, 0.1f, 0.f);
        glVertex3f(0.0f, 0.2f, 0.f);
        glVertex3f(0.0f, 0.3f, 0.f);

        glEnd();


        glFlush();
        //glfwSwapBuffers(window);
        glfwPollEvents();
        


        if(vsync_state){
            //usleep(1000);
            Sleep(1);
        }

    }
    

    // optional: de-allocate all resources once they've outlived their purpose:
    // ------------------------------------------------------------------------
    
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();


    // glfw: terminate, clearing all previously allocated GLFW resources.
    // ------------------------------------------------------------------
    glfwTerminate();
    return 0;
}

void keyboard_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if(key == GLFW_KEY_Q && action ==GLFW_PRESS){
        glfwSetWindowShouldClose(window, true);
    }

    if (key == GLFW_KEY_A && action == GLFW_PRESS){
        //add rectangle
        std::unique_ptr<RenderRectangle> new_rectangle = 
                        std::make_unique<RenderRectangle>(render_texture,render_shader);
        
        float rx = (float)rand()/(float)RAND_MAX;
        float ry = (float)rand()/(float)RAND_MAX;
        float ra = (float)rand()/(float)RAND_MAX;
        float rf = (float)rand()/(float)RAND_MAX;

        new_rectangle.get()->set_size(rf, rf);
        new_rectangle.get()->set_pos(-0.5f + rx, -0.5f + ry);
        new_rectangle.get()->set_rotation(2.0f*ra*3.1416f);

        base_rects.push_back(
            std::move(new_rectangle)
            );

        std::cout << "new object ceated" << std::endl;
    }

    if (key == GLFW_KEY_D && action == GLFW_PRESS){
        p_pressed = true;
        if(!base_rects.empty()){
            base_rects.pop_back();
        }
    }
    
    if(key == GLFW_KEY_P && action == GLFW_RELEASE){
        p_pressed = false;
    }
}


void mouse_button_callback(GLFWwindow* window, int button, int action, int mods)
{
    if (button == GLFW_MOUSE_BUTTON_RIGHT && action == GLFW_PRESS){
        right_mouse_b_pressed = true;
        float l = 100000000;
        for (int i = 0; i < base_rects.size(); i++) {
            float d = std::pow(mouse_x - base_rects.at(i).get()->m_x, 2) + std::pow(mouse_y - base_rects.at(i).get()->m_y, 2);
            if ( d < l) {
                l = d;
                selected_rect = i;
            }
        }
    }
    
    if(button == GLFW_MOUSE_BUTTON_RIGHT && action == GLFW_RELEASE){
        right_mouse_b_pressed = false;
    }


}


static void cursor_position_callback(GLFWwindow* window, double xpos, double ypos)
{
    mouse_x = (float(xpos) / float(tex_w) - 0.5f) * 2.f;
    mouse_y = (1.f - float(ypos) / float(tex_h) - 0.5f) * 2.f;

    //printf("%f    %f \n", mouse_x, mouse_y);
}

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
// ---------------------------------------------------------------------------------------------
void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and 
    // height will be significantly larger than specified on retina displays.
    s_width = width;
    s_height = height;
    
    tex_h = s_height;
    tex_w = s_width - side_gui_width;
    //
    //render_texture.get()->resize(tex_w, tex_h);
    //display_texture.get()->resize(tex_w, tex_h);

    render_texture = std::make_shared<Texture>(tex_w, tex_h, GL_LINEAR);
    display_texture = std::make_shared<Texture>(tex_w, tex_h, GL_LINEAR);

    for(int i=0; i<base_rects.size(); i++){
        base_rects.at(i).get()->setTexture(render_texture);
    }
    screen_rect = std::make_unique<RenderRectangle>(display_texture, post_shader);
    

    //glViewport(0, 0, width, height);
}
