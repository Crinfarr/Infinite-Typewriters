haxe buildMonke.hxml
cd bin
ResourceHacker  -open Main.exe -save ..\out\Monke.exe -action addskip -res ..\assets\monkeicon.ico -mask ICONGROUP,MAINICON
cd ..