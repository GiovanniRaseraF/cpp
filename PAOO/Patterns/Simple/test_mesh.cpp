#include <gtest/gtest.h>
#include "mesh.hpp"
#include <fstream>
#include <cstdio>

// Test 1: Verify the mesh initializes empty
TEST(MeshTest, InitializesEmpty) {
    Mesh mesh;
    EXPECT_TRUE(mesh.vertices.empty());
    EXPECT_TRUE(mesh.faces.empty());
}

// Test 2: Verify it handles missing files gracefully
TEST(MeshTest, HandlesNonExistentFile) {
    Mesh mesh;
    bool success = mesh.load_from_obj("this_file_does_not_exist.obj");
    EXPECT_FALSE(success);
}

// Test 3: Verify it accurately parses a valid mock OBJ file
TEST(MeshTest, LoadsValidObjData) {
    const std::string test_filename = "test_dummy.obj";
    
    // Create a temporary .obj file
    std::ofstream out(test_filename);
    out << "v 1.0 2.0 3.0\n";
    out << "v 4.0 5.0 6.0\n";
    out << "v 7.0 8.0 9.0\n";
    out << "f 1 2 3\n";
    out.close();

    Mesh mesh;
    bool success = mesh.load_from_obj(test_filename);
    
    // Check loading status
    EXPECT_TRUE(success);
    
    // Check sizes
    EXPECT_EQ(mesh.vertices.size(), 3);
    EXPECT_EQ(mesh.faces.size(), 1);
    
    // Check vertex data
    EXPECT_DOUBLE_EQ(mesh.vertices[0].x(), 1.0);
    EXPECT_DOUBLE_EQ(mesh.vertices[0].y(), 2.0);
    EXPECT_DOUBLE_EQ(mesh.vertices[0].z(), 3.0);
    
    // Check face data (ensure it converted 1-indexed to 0-indexed)
    EXPECT_EQ(mesh.faces[0].x(), 0);
    EXPECT_EQ(mesh.faces[0].y(), 1);
    EXPECT_EQ(mesh.faces[0].z(), 2);

    // Cleanup file
    std::remove(test_filename.c_str());
}