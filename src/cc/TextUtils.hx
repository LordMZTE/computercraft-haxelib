package cc;

typedef TextUtilsSerializable = Dynamic;

@:native("textutils")
extern class TextUtils {
	static function slowWrite(text:String, ?rate:Float):Void;
	static function slowPrint(text:String, ?rate:Float):Void;
	static function formatTime(time:Float, ?twentyFourHour:Bool):String;
	// todo: tabulate, paged tabulate
	static function pagedPrint(text:String, freeLines:Int):Int;
	static function serialize(data:TextUtilsSerializable):String;
	static function unserialize<T:TextUtilsSerializable>(from:String):T;
	static function serializeJSON(data:TextUtilsSerializable, ?unquoteKeys:Bool):String;
	static function urlEncode(data:String):String;
	// todo: complete
}
