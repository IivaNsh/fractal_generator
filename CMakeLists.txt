cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(app VERSION 1.0)

if($(CMAKE_SYSTEM_NAME) MATCHES "Windows")
	set(WIN 1)
	add_compiler_definitions(PLATFORM_WIN=${WIN})
endif()

#glfw section
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
add_subdirectory(lib/glfw/glfw-3.3.8)

#glad source 
file(GLOB_RECURSE GLAD_SRC lib/glad/src/*.c)

#imgui source
file(GLOB_RECURSE IMGUI_SRC lib/imgui/*.cpp)

#my source files
file(GLOB_RECURSE MY_SRC src/*.cpp)

#add exe
add_executable(app ${MY_SRC} ${GLAD_SRC} ${IMGUI_SRC}) #add ${STB_SRC}
target_include_directories(app PUBLIC lib/glfw/glfw-3.3.8/include) #glfw inlude directory
target_include_directories(app PUBLIC lib/glad/include) #glad inlcude directory
target_include_directories(app PUBLIC lib/glm) #glad inlcude directory
target_include_directories(app PUBLIC lib/imgui) #imgui include directory
target_include_directories(app PUBLIC src)
target_link_libraries(app glfw) #glfw static linking
