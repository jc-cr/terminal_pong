#!/bin/bash

# Create build directory if it doesn't exist
mkdir -p build

# Navigate to build directory
cd build


# Use Ninja instead
cmake -G Ninja ..
ninja

cd ..
echo "Build complete. Executable 'main' is in the project root directory."

if [ -f "main" ]; then
    objdump -h main
    size main
fi