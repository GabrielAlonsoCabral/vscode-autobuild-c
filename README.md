# C++ Auto Build

The main purpose of this repository is help you to take advantage of the auto build code onSave feature.

## Auto Build Code On Save

This repository is configured to automatically build the C++ files whenever you save a file. The provided `build.sh` script is executed automatically, which recursively compiles all the `.cpp` files in the directory and its subdirectories. This way, you can quickly see the compiled output and catch any build errors or warnings right within your development environment.

To enable this auto build code onSave feature, make sure you have the "Run It On" extension installed in your VSCode. The extension is responsible for triggering the build script whenever a file is saved. If you don't have the extension installed, you can install it from the [VSCode Marketplace][https://marketplace.visualstudio.com/items?itemName=webdone.run-it-on](https://marketplace.visualstudio.com/items?itemName=fsevenm.run-it-on).

## Build and Run

To manually build the C++ files in this repository, you can use the provided `build.sh` script. The script recursively compiles all the `.cpp` files in the directory and its subdirectories.

```bash
./build.sh
```

The compiled executables will have the same names as the corresponding `.cpp` files (without the extension). You can run the executables by executing the following command:

```bash
./<executable_name>
```

## Prerequisites

To build and run the C++ code in this repository, you need to have the following software and extensions installed:

- GCC (GNU Compiler Collection) - The C++ compiler
- Make - A build automation tool (optional)
- "Run It On" extension for VSCode - To enable the auto build code onSave feature

Make sure you have the necessary software and extension installed before proceeding.

## Directory Structure

The repository has the following directory structure:

```
.
├── build.sh
├── file1.cpp
├── file2.cpp
├── subdir1
│   └── file3.cpp
└── subdir2
    └── file4.cpp
```

- `build.sh`: The build script for compiling the C++ files.
- `file1.cpp`, `file2.cpp`, etc.: The C++ source code files.
- `subdir1`, `subdir2`, etc.: Subdirectories containing additional C++ source code files.

Feel free to explore the code files and directories!
