add_rules("mode.debug", "mode.release")

add_requires("glm", "libsdl", "vulkan-headers 1.3.268")

includes("glvk")

add_cxxflags("clang::-fexperimental-library", { force = true })
add_ldflags("clang::-fexperimental-library", { force = true })
add_shflags("clang::-fexperimental-library", { force = true })
add_mxxflags("clang::-fexperimental-library", { force = true })

target("glvk-app", function()
    set_kind("binary")
    set_languages("cxx23")
    add_files(
        "src/*.cpp", 
        "modules/*.mpp"
    )
    add_packages("glm", "libsdl", "vulkan-headers")
    add_deps("glvk")
end)