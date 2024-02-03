add_rules("plugin.vsxmake.autoupdate")
add_rules("plugin.compile_commands.autoupdate", { outputdir = "build", lsp = "clangd" })
add_rules(
  "mode.debug",
  "mode.release",
  "mode.releasedbg",
  "mode.check",
  "mode.coverage",
  "mode.profile",
  "mode.check",
  "mode.minsizerel"
)


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