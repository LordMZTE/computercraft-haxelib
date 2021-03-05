package cc;

import lua.Table;
import lua.TableTools;
import haxe.extern.Rest;

@:native("os")
extern class OS {
	static function version():String;
	static function getComputerID():Int;
	static function getComputerLabel():String;
	static function setComputerLabel(label:String):Void;
	static function run(environment:Table<Dynamic, Dynamic>, path:String, args:Rest<String>):Bool;
	static function loadAPI(path:String):Bool;
	static function unloadAPI(path:String):Void;
	static function queueEvent(type:String, data:Rest<Dynamic>):Void;
	static function clock():Float;
	static function startTimer(timeout:Int):Int;
	static function cancelTimer(id:Int):Void;
	static function time():Float;
	static function sleep(timeout:Float):Void;
	static function day():Int;
	static function setAlarm(time:Float):Int;
	static function cancelAlarm(id:Int):Void;
	static function shutdown():Void;
	static function reboot():Void;

	@:native("pullEvent") private static function _pullEvent(?type:String):Dynamic;
	@:native("pullEventRaw") private static function _pullEventRaw(?type:String):Dynamic;

	static inline function pullEvent(?type:String):Table<Int, Dynamic> {
		return cast TableTools.pack(_pullEvent(type));
	}

	static inline function pullEventRaw(?type:String):Table<Int, Dynamic> {
		return cast TableTools.pack(_pullEventRaw(type));
	}
}
