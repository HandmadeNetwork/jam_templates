@echo off
if not exist build mkdir build
pushd build

copy ..\libs\raylib.dll .\

cl /nologo /Zi /I..\src\ ../src/template_raylib.c /link ..\libs\raylibdll.lib

popd
