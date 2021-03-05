package cc;

import lua.Table;

@:native("help")
extern class Help {
	static function path():String;
	static function setPath(path:String):Void;
	static function lookup(topic:String):String;
	static function topics():Table<Int, String>;
	static function completeTopic(prefix:String):Table<Int, String>;
}
