package cc;

import lua.Table;
import haxe.extern.Rest;

@:native("shell")
extern class Shell {
	static function exit():Void;
	static function dir():String;
	static function setDir(path:String):Void;
	static function path():String;
	static function setPath(path:String):Void;
	static function resolve(localPath:String):String;
	static function resolveProgram(name:String):String;
	static function aliases():Table<String, String>;
	static function setAlias(alias:String, program:String):Void;
	static function clearAlias(alias:String):Void;
	static function programs(?showHidden:Bool):Table<Int, String>;
	static function getRunningProgram():String;
	static function run(command:String, args:Rest<String>):Bool;
	static function openTab(command:String, args:Rest<String>):Int;
	static function switchTab(tabID:Int):Void;
	// todo: completion functions
}
