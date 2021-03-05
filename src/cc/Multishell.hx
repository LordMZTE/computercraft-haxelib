package cc;

import lua.Table;
import haxe.extern.Rest;

@:native("multishell")
extern class Multishell {
	static function getCurrent():Int;
	static function getCount():Int;
	static function launch(environment:Table<Dynamic, Dynamic>, path:String, args:Rest<String>):Int;
	static function setFocus(id:Int):Void;
	static function setTitle(id:Int, title:String):Void;
	static function getTitle(id:Int):String;
	static function getFocus():Int;
}
