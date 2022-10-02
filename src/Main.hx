package;

import haxe.Json;
import sys.FileSystem;
import toolkit.MonkeDo;
import toolkit.MonkeSee;

class Main {
	public static macro function getDefined(key:String):haxe.macro.Expr {
		return macro $v{haxe.macro.Context.definedValue(key)}
	}

	static function main():Void {
		final dirs:Array<String> = [FileSystem.absolutePath(".")];
		trace(Json.stringify(dirs));
		for (dir in MonkeSee.indexFolders("."))
			dirs.push(dir);
		for (dir in dirs) {
			MonkeDo.annoy(dir);
			trace(dir);
		}
		while (true) {};
	}
}
