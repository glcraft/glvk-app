import std;
import glvk;
import glm;
import vulkan_hpp;

import MainContext;
import Types;

int main() {
    auto glfw_ctx = sdl2::Context{};

    UInt32 extensionCount = 0;
    vk::enumerateInstanceExtensionProperties(nullptr, &extensionCount, nullptr);
    std::println("{} extensions supported", extensionCount);
    std::vector<vk::ExtensionProperties> extensions(extensionCount);
    vk::enumerateInstanceExtensionProperties(nullptr, &extensionCount, extensions.data());

    for (UInt32 i = 0; i < extensionCount; i++) {
        std::println("    - {}", std::data(extensions[i].extensionName));
    }
    
    auto ctx = MainContext{glfw_ctx};

    ctx.run();

    return 0;
}