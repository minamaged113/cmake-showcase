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

### [Messages](https://cmake.org/cmake/help/latest/command/message.html?highlight=message):

messages in CMake files have a common format: `message(<mode-of-display> "the message")`

The mentioned modes of display are as follows:

- `FATAL_ERROR`: CMake Error, stop processing and generation.
- `SEND_ERROR`: CMake Error, continue processing, but skip generation.
- `WARNING`: CMake Warning, continue processing.
- `AUTHOR_WARNING`: CMake Warning (dev), continue processing.
- `DEPRECATION`: CMake Deprecation Error or Warning if variable CMAKE_ERROR_DEPRECATED or CMAKE_WARN_DEPRECATED is enabled,
respectively, else no message.
- (none) or `NOTICE`: Important message printed to stderr to attract user's attention.
- `STATUS`: The main interesting messages that project users might be interested in. Ideally these should be concise, no
more than a single line, but still informative.
- `VERBOSE`: Detailed informational messages intended for project users. These messages should provide additional details
that won't be of interest in most cases, but which may be useful to those building the project when they want
deeper insight into what's happening.
- `DEBUG`: Detailed informational messages intended for developers working on the project itself as opposed to users who
just want to build it. These messages will not typically be of interest to other users building the project
and will often be closely related to internal implementation details.
- `TRACE`: Fine-grained messages with very low-level implementation details. Messages using this log level would normally
only be temporary and would expect to be removed before releasing the project, packaging up the files, etc.

### [Set]() variables

The general structure of a cmake set command is 
`set(<variable_name> <variable_value>)`

> ⚠ NOTE: all variables are strings

The variable can then be dereferenced and the value retrieved as follows:

`${variable_name}`

> 🔴 NOTE: if an unset variable is being dereferenced, CMake will give an empty string not an error.

| set command | value of VAR | `message(${VAR})` | `message("${VAR}")` |
|---|---|---|---|
| set(VAR aa bb cc) | aa;bb;cc | aabbcc | aa;bb;cc |
| set(VAR aa;bb;cc) | aa;bb;cc | aabbcc | aa;bb;cc |
| set(VAR "aa" "bb" "cc") | aa;bb;cc | aabbcc | aa;bb;cc |
| set(VAR "aa bb cc") | aa bb cc | aa bb cc | aa bb cc |
| set(VAR "aa;bb;cc") | aa;bb;cc | aabbcc | aa;bb;cc |

### [List](https://cmake.org/cmake/help/latest/command/list.html) variables

It6 has a general form of `list(<subcommand> <name_of_list>... ... ... <return_variable>)`

The most-used available subcommands are:

- `APPEND`
- `REMOVE_ITEM`
- `REMOVE_AT`
- `INSERT`
- `REVERSE`
- `FILTER`
- `GET`
- `JOIN`
- `REMOVE_DUPLICATES`
- `SORT`

#### list indexing

For a command that looks like the following: `set(VAR a b c;d "e,f" 2,718 "Hello There")`

| set(VAR | a | b | c; | d | "e, | f" | 2,718 | "Hello There") |
|---|---|---|---|---|---|---|---|---|
| +ve index | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
| -ve index | -8 | -7 | -6 | -5 | -4 | -3 | -2 | -1 |
| -ve index | -8 | -7 | -6 | -5 | -4 | -3 | -2 | -1 |

### [Generator Expressions](https://cmake.org/cmake/help/latest/manual/cmake-generator-expressions.7.html)

Beware not to mix these with variables