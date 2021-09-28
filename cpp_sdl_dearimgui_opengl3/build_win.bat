@echo off
if not exist build mkdir build
pushd build

copy ..\libs\SDL2.dll .\

cl /nologo /Zi /I..\src\ ../src/template_sdl_dearimgui_opengl3.cpp ../src/third_party/dear_imgui/imgui*.cpp /link ..\libs\SDL2.lib ..\libs\SDL2main.lib opengl32.lib shell32.lib

popd
