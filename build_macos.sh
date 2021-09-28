#!/usr/local/bin/bash

mkdir -p build
pushd build

# You can add additional source files below if needed
SOURCE_FILES="../src/template_raylib.c"
# Program name
OUTPUT="template_raylib"
# Compilation command
clang -framework CoreVideo -framework IOKit -framework Cocoa -framework GLUT -framework OpenGL ../libs/libraylib.a "$SOURCE_FILES" -o "$OUTPUT" && echo "Compiled Successfully. File: $(pwd)/$OUTPUT"

popd