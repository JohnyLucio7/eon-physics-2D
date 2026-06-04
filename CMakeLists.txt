cmake_minimum_required(VERSION 3.22)
project(eon_physics_2D CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find SDL2
find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)

# SDL2_gfx doesn't always have a config file, we might need to find it manually
find_path(SDL2_GFX_INCLUDE_DIR SDL2/SDL2_gfxPrimitives.h)
find_library(SDL2_GFX_LIBRARY SDL2_gfx)

include_directories(${SDL2_INCLUDE_DIRS} ${SDL2_IMAGE_INCLUDE_DIRS} ${SDL2_GFX_INCLUDE_DIR} src)

file(GLOB_RECURSE SOURCES "src/*.cpp")

add_executable(app ${SOURCES})

target_link_libraries(app ${SDL2_LIBRARIES} ${SDL2_IMAGE_LIBRARIES} ${SDL2_GFX_LIBRARY} m)
