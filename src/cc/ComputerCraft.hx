package cc;

@:native("_G")
extern class ComputerCraft {
	static var _CC_DEFAULT_SETTINGS:String;
	static function printError(message:String):Void;
	static function sleep(seconds:Float):Void;
	static function read(?replacement:String):String; // todo: second and third args
	static var _HOST:String;
}
