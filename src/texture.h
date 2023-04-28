#pragma once 


class Texture{
public:

    unsigned int m_width, m_height;
    unsigned int m_interpolation_type;
    unsigned int id;

    Texture(unsigned int _width, unsigned int _height, unsigned int interpolation_type);
    ~Texture();

    void display_bind(unsigned int location);
    void compute_bind(unsigned int location);
    void resize(unsigned int width, unsigned int height);
    void bind_to_render();


};