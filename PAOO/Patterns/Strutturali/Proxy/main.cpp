#include <iostream>
#include <string>
#include <filesystem>
#include <optional>
#include <memory>
#include <thread>
#include <chrono>

using namespace std::chrono_literals;


// The proxy pattern is usefull to manage access to a resource
// by controlling the access to it

// This is a general service that the system provides
class FolderExploreService {
public:
    virtual std::string explore(std::filesystem::path folder) = 0;
};

class ConcreteLocalFolderExploreService : public FolderExploreService {
public:
    std::string explore(std::filesystem::path folder) override {
        std::string ret{""};
        for (const auto& entry : std::filesystem::directory_iterator(folder)) {
            ret += entry.path().c_str();
            ret += "\n";
        }
        return ret;
    }
};

class ConcreteRemoteFolderExploreService : public FolderExploreService {
private:
    ConcreteLocalFolderExploreService local_service;
public:
    ConcreteRemoteFolderExploreService() {}
    std::string explore(std::filesystem::path folder) override {
        std::this_thread::sleep_for(200ms);
        return local_service.explore(folder);
    }
};

class LocalFolderExploreServiceCache : public FolderExploreService {
private:
    std::shared_ptr<FolderExploreService> service;
    std::string cache;
    bool isCached;
public:
    LocalFolderExploreServiceCache (std::shared_ptr<FolderExploreService> _service) : service{_service}, cache{""}, isCached{false} {}
    std::string explore(std::filesystem::path folder) override {
        if (!isCached) {
            cache = service->explore(folder);
            isCached = true;
        }
        return cache;
    }
};

class LocalFolderExploreServiceLogger : public FolderExploreService {
private:
    std::shared_ptr<FolderExploreService> service;
public:
    LocalFolderExploreServiceLogger (std::shared_ptr<FolderExploreService> _service) : service{_service} {}
    std::string explore(std::filesystem::path folder) override {
        auto start = std::chrono::high_resolution_clock::now();
        auto call_result = service->explore(folder);
        auto end = std::chrono::high_resolution_clock::now();
        auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
        auto ret = "Duration: " + std::to_string(duration.count()) + "ms\n" + call_result;
        return ret;
    }
};

int main() {
    std::shared_ptr<FolderExploreService> local_folder_service = std::make_shared<ConcreteLocalFolderExploreService>();
    std::shared_ptr<FolderExploreService> remote_folder_service = std::make_shared<ConcreteRemoteFolderExploreService>();

    std::shared_ptr<FolderExploreService> remote_folder_service_logger_no_cache = std::make_shared<LocalFolderExploreServiceLogger>(remote_folder_service);
    
    std::shared_ptr<FolderExploreService> remote_folder_service_cache = std::make_shared<LocalFolderExploreServiceCache>(remote_folder_service);
    std::shared_ptr<FolderExploreService> remote_folder_service_logger_cache = std::make_shared<LocalFolderExploreServiceLogger>(remote_folder_service_cache);

    // No Cache
    for (int i = 0; i < 5; i++) {
        std::cout << remote_folder_service_logger_no_cache->explore(std::filesystem::current_path());
    }
    
    std::cout << "Now with cache" << std::endl;
    // Cache
    for (int i = 0; i < 5; i++) {
        std::cout << remote_folder_service_logger_cache->explore(std::filesystem::current_path());
    }
}