package cc;

import lua.Table;

typedef SettingData = Dynamic;

@:native("settings")
extern class Settings {
	static function set(name:String, value:SettingData):Void;
	static function get(name:String, ?defaultValue:SettingData):SettingData;
	static function unset(name:String):Void;
	static function clear():Void;
	static function getNames():Table<Int, String>;
	static function load(path:String):Bool;
	static function save(path:String):Bool;
}
