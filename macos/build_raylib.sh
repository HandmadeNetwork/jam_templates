#!/usr/local/bin/bash

# You can add additional source files below if needed
SOURCE_FILES="src/macos_template_raylib.c"
# Program name
OUTPUT="my_app"
# Compilation command
clang -framework CoreVideo -framework IOKit -framework Cocoa -framework GLUT -framework OpenGL libs/libraylib.a "$SOURCE_FILES" -o "$OUTPUT" && echo "Compiled Successfully. File: $(pwd)/$OUTPUT"
