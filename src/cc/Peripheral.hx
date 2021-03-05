package cc;

import lua.Table;
import haxe.Constraints;
import haxe.extern.Rest;

@:native("peripheral")
extern class Peripheral {
	static function isPresent(name:String):Bool;
	static function getType(name:String):String;
	static function getMethods(name:String):Table<String, Function>;
	static function call<T>(name:String, method:String, args:Rest<Dynamic>):T;
	static function wrap<T>(name:String):T;
	static function find<T>(type:String, ?filter:(String, T) -> Bool):Table<Int, T>;
	static function getNames():Table<Int, String>;
}
