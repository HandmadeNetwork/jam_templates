@echo off
if not exist build mkdir build
pushd build

copy ..\libs\SDL2.dll .\
copy ..\libs\raylib.dll .\

rem ~~~ build SDL2/DearImGui/OpenGL3 template
cl /nologo /Zi /I..\src\ ../src/template_sdl_dearimgui_opengl3.cpp ../src/third_party/dear_imgui/imgui*.cpp /link ..\libs\SDL2.lib ..\libs\SDL2main.lib opengl32.lib shell32.lib

rem ~~~ build SDL2/MicroUI/OpenGL template
cl /nologo /Zi /I..\src\ ../src/template_sdl_microui_opengl3.c ../src/third_party/microui/microui.c /link ..\libs\SDL2.lib ..\libs\SDL2main.lib opengl32.lib shell32.lib

rem ~~~ build raylib template
cl /nologo /Zi /I..\src\ ../src/template_raylib.c /link ..\libs\raylibdll.lib

rem ~~~ [Odin] build SDL2/MicroUI template
odin build ../src/template_sdl_microui.odin 

popd
