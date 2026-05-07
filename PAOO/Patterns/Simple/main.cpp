#include <iostream>
#include <boost/program_options.hpp>
#include "mesh.hpp"

namespace po = boost::program_options;

int main(int argc, char** argv) {
    try {
        po::options_description desc("Allowed options");
        desc.add_options()
            ("help,h", "Produce help message")
            ("file,f", po::value<std::string>(), "Mesh file to load (.obj format)");

        po::variables_map vm;
        po::store(po::parse_command_line(argc, argv, desc), vm);
        po::notify(vm);

        if (vm.count("help")) {
            std::cout << desc << "\n";
            return 0;
        }

        if (vm.count("file")) {
            std::string filename = vm["file"].as<std::string>();
            Mesh my_mesh;
            
            if (my_mesh.load_from_obj(filename)) {
                std::cout << "Successfully loaded mesh: " << filename << "\n";
                std::cout << "Vertices: " << my_mesh.vertices.size() << "\n";
                std::cout << "Faces: " << my_mesh.faces.size() << "\n";
            } else {
                std::cerr << "Error: Could not open file '" << filename << "'\n";
                return 1;
            }
        } else {
            std::cout << "No file provided. Use --help to see usage.\n";
        }
    } catch (const std::exception& e) {
        std::cerr << "Exception: " << e.what() << "\n";
        return 1;
    }

    return 0;
}