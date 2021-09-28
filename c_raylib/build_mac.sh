#!/usr/bin/env bash

set -euo pipefail

# Program name
OUTPUT="my_app"

mkdir -p build
pushd build
	# You can add additional source files below if needed
	SOURCE_FILES="../src/template_raylib.c"
	clang \
		-framework CoreVideo -framework IOKit -framework Cocoa -framework GLUT -framework OpenGL \
		../libs/libraylib.a \
		"$SOURCE_FILES" \
		-o "$OUTPUT"
popd

echo "Compiled Successfully. File: $(pwd)/build/$OUTPUT"
