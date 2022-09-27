haxe buildFloppa.hxml
cd bin
ResourceHacker  -open Main.exe -save ..\out\Floppa.exe -action addskip -res ..\assets\floppaicon.ico -mask ICONGROUP,MAINICON
cd ..