@echo off
if not exist build mkdir build
pushd build

odin build ../src/template_sdl_microui.odin 

popd
