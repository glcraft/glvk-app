match (sys | get host.name) {
    "Darwin" => {
        $env.VK_ICD_FILENAMES = ~/VulkanSDK/1.3.268.1/macOS/share/vulkan/icd.d/MoltenVK_icd.json
        $env.VK_LAYER_PATH = ~/VulkanSDK/1.3.268.1/macOS/share/vulkan/explicit_layer.d
    }
}
    