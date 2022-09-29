package;

import haxe.crypto.Base64;
import haxe.Timer;
import haxe.Resource;
import haxe.io.Bytes;
import sys.thread.Thread;


class Main {
	private static macro function getDefined(key:String):haxe.macro.Expr {
		return macro $v{haxe.macro.Context.definedValue(key)}
	}
	static function main():Void {
		
	}
}
