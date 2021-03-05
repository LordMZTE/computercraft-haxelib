package cc;

import lua.Table;

@:enum
abstract OpenFileMode(String) {
	var Read = "r";
	var Write = "w";
	var Append = "a";
}

@:luaDotMethod
extern class FileHandle {
	function close():Void;
	function readLine():String;
	function readAll():String;
	function write(data:String):Void;
	function writeLine(data:String):Void;
	function flush():Void;
}

@:native("fs")
extern class FileSystem {
	static function list(path:String):Table<Int, String>;
	static function exists(path:String):Bool;
	static function isDir(path:String):Bool;
	static function isReadOnly(path:String):Bool;
	static function getDrive(path:String):String;
	static function getSize(path:String):Int;
	static function getFreeSpace(path:String):Int;
	static function makeDir(path:String):Void;
	static function move(from:String, to:String):Void;
	static function copy(from:String, to:String):Void;
	static function delete(path:String):Void;
	static function combine(base:String, part:String):String;
	static function open(path:String, mode:OpenFileMode):FileHandle;
	static function find(pattern:String):Table<Int, String>;
	static function getDir(path:String):String;
	// todo: complete()
}
