add_rules("mode.debug", "mode.release")

add_requires("glm", "glfw", "vulkan-headers 1.3.268")

includes("glvk")

target("glvk-app")
    set_kind("binary")
    set_languages("cxx23")
    add_files(
        "src/*.cpp", 
        "modules/*.mpp"
    )
    add_packages("glm", "glfw", "vulkan-headers")
    add_deps("glvk")
    add_cxxflags("-stdlib=libc++", "-fexperimental-library")
    set_policy("build.c++.modules", true)
    set_policy("build.c++.clang.stdmodules", false)