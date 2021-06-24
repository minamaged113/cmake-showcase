# CMake Showcase

This project is a showcase for usage of CMake to produce
* Binaries
* Shared Objects
* Static Libraries
* Header-only

Please check the [changelog](CHANGELOG.md) for more information.

## Build Systems

- [Make](https://www.gnu.org/software/make/)
- [Ninja](https://ninja-build.org/)
- [others](https://alternativeto.net/software/ninja-build/)


## System Requirments

### Debian

```bash
sudo apt-get install build-essential cmake
```

### Windows

- Check [Mingw](http://mingw-w64.org/doku.php)
- Check [CMake](https://cmake.org/download/)

## CMake

### Targets

Every target has its own properties. The ones encountered most often are:

- INTERFACE_LINK_DIRECTORIES:
    - Is set when `target_link_libraries(A <PUBLIC|INTERFACE> B C)`
    - If `PRIVATE` is used, the it is not set.
- INCLUDE_DIRECTORIES
- VERSION
- SOURCES

#### `target_include_directories`

To allow the build process to reach the correct header includes without using full path in include statements
It has 3 properties:

- PUBLIC
- PRIVATE
- INTERFACE