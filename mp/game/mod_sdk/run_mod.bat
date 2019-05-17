@echo off

set GameDir=%~dp0
set GameDir=%GameDir:~0,-1%
"C:\Program Files (x86)\Steam\steamapps\common\Source SDK Base 2013 Multiplayer\hl2.exe" -dev -allowdebug -condebug -windowed -noborder -console -game "%GameDir%"
