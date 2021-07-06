# math Library

Math library is a static library.

## [CMake Scopes](https://github.com/minamaged113/cmake-showcase/blob/8f285eb9e3a42b970ca55e4985ce80fa8e0350f9/math/CMakeLists.txt#L9)

There are multiple CMake commands that use scopes.

### CMake commands with scopes

* [target_compile_definitions](https://cmake.org/cmake/help/latest/command/target_compile_definitions.html): sets `INTERFACE_COMPILE_DEFINITIONS`
* [target_sources](https://cmake.org/cmake/help/latest/command/target_sources.html): sets `INTERFACE_SOURCES`
* [target_compile_features](): sets `INTERFACE_COMPILE_FEATURES`
* [target_compile_options](): sets `INTERFACE_COMPILE_OPTIONS`
* [target_link_directories](): sets `INTERFACE_LINK_DIRECTORIES`
* [target_link_libraries](): sets `INTERFACE_LINK_LIBRARIES`
* [target_link_options](): sets `INTERFACE_LINK_OPTIONS`
* [target_precompiled_headers](): sets `INTERFACE_PRECOMPILED_HEADERS`

### CMake scopes

* **PUBLIC**: sets the corresponding property. It is used when both the target and the dependencies are going to use the included header files.
* **INTERFACE**: sets the corresponding property. It is used when only the dependencies are going to use the included header files.
* **PRIVATE**: does NOT set the corresponding property. It is used when only the target is going to use the included header files.