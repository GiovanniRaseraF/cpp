#pragma once

#include <Eigen/Dense>
#include <vector>
#include <string>
#include <fstream>
#include <sstream>

struct Mesh {
    std::vector<Eigen::Vector3d> vertices;
    std::vector<Eigen::Vector3i> faces;

    // Simple .obj file loader
    bool load_from_obj(const std::string& filename) {
        std::ifstream file(filename);
        if (!file.is_open()) {
            return false;
        }

        std::string line;
        while (std::getline(file, line)) {
            std::istringstream iss(line);
            std::string type;
            iss >> type;

            if (type == "v") {
                Eigen::Vector3d v;
                iss >> v.x() >> v.y() >> v.z();
                vertices.push_back(v);
            } else if (type == "f") {
                Eigen::Vector3i f;
                iss >> f.x() >> f.y() >> f.z();
                // OBJ formats are 1-indexed. We subtract 1 to make them 0-indexed for C++.
                faces.push_back(f - Eigen::Vector3i::Ones());
            }
        }
        return true;
    }
};