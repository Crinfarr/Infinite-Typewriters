package;

class Main {
	private static macro function getDefined(key:String):haxe.macro.Expr {
		return macro $v{haxe.macro.Context.definedValue(key)}
	}
	static function main():Void {
		
	}
}
