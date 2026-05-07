cmake_minimum_required(VERSION 3.25...3.29)
project(ModernMeshApp VERSION 1.0.0 LANGUAGES CXX)

# Enforce modern C++ standards
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Export compile commands for IDEs (clangd, VSCode, etc.)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# ----------------------------------------------------------------------
# Dependencies
# ----------------------------------------------------------------------
find_package(Eigen3 5.0.1 REQUIRED)
find_package(Boost 1.80 REQUIRED CONFIG COMPONENTS program_options)

# ----------------------------------------------------------------------
# Main Application Target
# ----------------------------------------------------------------------
add_executable(mesh_app main.cpp)

# Strictly link dependencies to the target, avoiding global pollution
target_link_libraries(mesh_app
    PRIVATE
        Eigen3::Eigen
        Boost::program_options
)

# Include current directory so 'mesh.hpp' can be found
target_include_directories(mesh_app PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

# ----------------------------------------------------------------------
# Testing Setup (FetchContent + CTest)
# ----------------------------------------------------------------------
include(CTest)
enable_testing()

# Modern approach to pull GoogleTest on-the-fly during the configure step
include(FetchContent)
FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG        v1.14.0 # Use a stable tag
)
# Prevent GTest from overriding parent project MSVC CRT settings on Windows
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

# Create the test executable
add_executable(mesh_tests test_mesh.cpp)

target_link_libraries(mesh_tests
    PRIVATE
        Eigen3::Eigen
        GTest::gtest_main # Automatically provides the main() function for tests
)
target_include_directories(mesh_tests PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

# Register tests with CTest so they can be run via `ctest` command
include(GoogleTest)
gtest_discover_tests(mesh_tests)