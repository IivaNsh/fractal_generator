#include "texture.h"
#include "gl_deps.h"

Texture::Texture(unsigned int _width, unsigned int _height, 
    unsigned int interpolation_type){
    
    m_width = _width;
    m_height = _height;

    glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_2D, id);
    // set the texture wrapping/filtering options (on the currently bound texture object)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);	
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, interpolation_type);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, interpolation_type);
    // load and generate the texture
    
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA32F, m_width, m_height, 0, GL_RGBA, GL_FLOAT, NULL);
    //glGenerateMipmap(texture);

}

Texture::~Texture(){
    glDeleteTextures(1, &id);
}

void Texture::compute_bind(unsigned int location)
{
    glBindImageTexture(location, id , 0, GL_FALSE, 0, GL_READ_WRITE, GL_RGBA32F);    
}


void Texture::display_bind(unsigned int location){
    glActiveTexture(GL_TEXTURE0 + location);   
    glBindTexture(GL_TEXTURE_2D, id);
}

void Texture::resize( unsigned int width, unsigned int height ) {
    m_width = width;
    m_height = height;

    glDeleteTextures(1, &id);

    glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_2D, id);
    // set the texture wrapping/filtering options (on the currently bound texture object)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, m_interpolation_type);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, m_interpolation_type);

    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA32F, m_width, m_height, 0, GL_RGBA, GL_FLOAT, NULL);
}

void Texture::bind_to_render(){
}

