This is a selection of template projects to get up and running with for the Wheel Reinvention Jam. They are built on top of Handmade-inspired libraries (DearImGui, MicroUI, RayLib), Handmade-inspired languages (Odin), and SDL2.

For Odin files, use the latest nightly build of Odin, as the template code makes use of some newer Odin features and libraries.

For C/C++ templates, all required .lib files are included in the `libs` folder. On Windows, you'll want to run the build.bat script from the Visual Studio Native Tools Developer Prompt for x64.

We don't have a setup for GNU/Linux or additional setups aside from raylib for MacOS at the moment. However, the build for all of the templates is pretty simple so if you're on those platforms, it should be relatively straightforward to build there too. Feel free to ask in Discord if you get stuck!

Most of the templates here were sourced from the examples provided with the aforementioned libraries.

# Notes on Mac
### build_macos.sh

Includes everything you need to build a template project with the latest version of raylib (4.0)

<img width="912" alt="Screen Shot 2021-09-27 at 1 49 23 PM" src="https://user-images.githubusercontent.com/13829168/134970200-7c1e6f34-30d5-4502-87c3-753be65bbbe2.png">

Either:

- Call with bash: `bash build_macos.sh`

or

- `chmod +x build_macos.sh` and call directly: `./build_macos.sh`

Modifying:

Open `build_macos.sh` and edit `SOURCE_FILES` and/or `OUTPUT`
