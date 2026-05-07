#include <iostream>
#include <string>
#include <filesystem>
#include <optional>
#include <array>
#include <vector>
#include <memory>
#include <thread>
#include <sstream>
#include <chrono>
#include <Eigen/Dense>
#include <Eigen/Geometry> // Required for Quaternions


using namespace std::chrono_literals;

// This is the Flyweight
class Mesh {
    static std::vector<int> loadMesh(std::string _path) {
        std::this_thread::sleep_for(1s);
        std::vector<int> ret{};
        for(int i = 0; i < 1000; i++){
            ret.push_back(i);
        }
        return ret;
    }
public:
    std::string path;
    std::vector<int> mesh_data;

    Mesh(std::string _path) : path{_path} {
        mesh_data = Mesh::loadMesh(path);
    }
};

// We can also have this as a singleton
// An protect the generate function with a mutex
class MeshFactory {
private:
    std::vector<std::shared_ptr<Mesh>> cache;
public:
    std::shared_ptr<Mesh> generateFlyweightMesh(std::string path){
        for(auto spm : cache){
            if (spm->path == path){
                // cache hit
                return spm;
            }
        }
        
        // cache miss
        auto result = std::make_shared<Mesh>(path);
        cache.push_back(result);

        return result;
    }
};

class Link {
public:
    Eigen::Vector3f position;
    Eigen::Quaternionf orientation;
    std::shared_ptr<Mesh> mesh;

    Link(Eigen::Vector3f p, Eigen::Quaternionf o, std::string path, std::shared_ptr<MeshFactory> factory) {
        position = p;
        orientation = o;
        mesh = factory->generateFlyweightMesh(path);
    }

    std::string toString() {
        std::string ret{""};
        std::stringstream ss;
        ss << mesh.get();  
        ret += "Mesh: " + mesh->path + ": " + ss.str();
        ret += "\nX: " + std::to_string(position.x());
        ret += "\nY: " + std::to_string(position.y());
        ret += "\nZ: " + std::to_string(position.z());
        return ret;
    }
};

int main() {
    auto factory = std::make_shared<MeshFactory>();
    auto l1 = Link({0, 0, 0}, {0.0, 0, 0, 1}, "hello", factory);
    auto l2 = Link({0, 1, 3}, {0.0, 0, 0, 1}, "hello", factory);
    std::cout << l1.toString() << std::endl;
    std::cout << l2.toString() << std::endl;
}