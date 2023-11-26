
import std;
import glvk;
import glm;
import vulkan_hpp;

import MainContext;
import Types;

int main() {
    auto ctx = MainContext{};

    UInt32 extensionCount = 0;
    vk::enumerateInstanceExtensionProperties(nullptr, &extensionCount, nullptr);

    std::println("{} extensions supported", extensionCount);

    glm::mat4 matrix;
    glm::vec4 vec;
    auto test = matrix * vec;

    ctx.run();

    return 0;
}