package flood;

import cpp.Char;
import sys.thread.Thread;


class Filler {
	var something:Array<Array<String>> = [];

	// fills 1 kb of memory
	public function new() {
		for (i in 0...1024) {
			var v:Array<String> = [for (_ in 0...1024) "a"];
			something.push(v);
		}
	}

	public function fill(amt:Int):Void {
		for (i in 1...amt+1) {
			trace('filled ${i} mb (should be ${i+26.8} mb)');
			Thread.create(() -> {
				new Filler();
            });
		}
	}
}
