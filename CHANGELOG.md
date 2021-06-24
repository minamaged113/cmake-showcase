
# Change Log
All notable changes to this project will be documented in this file.
 
The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [1.4.0](https://github.com/minamaged113/cmake-showcase/releases) - 24/06/2021

## Changed

- CMakeLists file hierarchy changed to create libraries and link them to the executable

## [1.3.0](https://github.com/minamaged113/cmake-showcase/releases/tag/1.3.0) - 24/06/2021

Use CMake in creating executables

### Changed

- Use CMake instead of Make.
- Build script
- github actions build script
- Add CMake installation info

## [1.2.0](https://github.com/minamaged113/cmake-showcase/releases/tag/1.2.0) - 23/06/2021

Use Make build system

### Changed

- Use Make as build system instead of g++ directly

## [1.1.0](https://github.com/minamaged113/cmake-showcase/releases/tag/1.1.0) - 23/06/2021

Distribute functionality over multiple files.

### Added

- source and header files for print_result functionality
- source and header files for addition functionality
- source and header files for division functionality
- MIT LICENSE added
- README.md added
- CHANGELOG.md added

### Changed

- main source file performs function calls to perform {addition, division, print_result}.

## [1.0.0](https://github.com/minamaged113/cmake-showcase/releases/tag/1.0.0) - 23/06/2021
  
Basic functionality of the program without using CMake
 
### Added

- An executable that takes two floats from stdin and prints their addition and division outputs.
- A build script to start the build system.
- basic .gitignore
