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
		var monkes = 0;
		var threads = 0;
		var monkimg:Bytes = Resource.getBytes("img");

		for (_ in 0...Std.parseInt(getDefined("threads"))) {
			Thread.create(() -> {
				while (true) {
					MonkeMultiply.Monke.worker(monkimg, './${monkes}.jpg');
					monkes++;
					if (Sys.args()[0]!= "--debug") {
						Sys.print(getDefined("outputString"));
					}
				}
			});
			threads++;
			if (Sys.args()[0] == "--debug") Sys.print('${threads} threads started    \r');
		}
		//do nothing while monkeys invade the hard drive
		if (Sys.args()[0] != "--debug") {
			while (true) {}
		}
		var oMonkes = 0;
		new Timer(100).run = () -> {
			Sys.print('${monkes-oMonkes} monkes per second (${threads} threads)                                \r');
			oMonkes = monkes;
		}
	}
}
