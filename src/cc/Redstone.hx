package cc;

import lua.Table;
import cc.Colors;

@:native("redstone")
extern class Redstone {
	static function getSides():Table<Int, String>;
	static function getInput(side:String):Bool;
	static function setOutput(side:String, state:Bool):Void;
	static function getOutput(side:String):Bool;
	static function getAnalogInput(side:String):Int;
	static function setAnalogOutput(side:String, strength:Int):Void;
	static function getAnalogOutput(side:String):Int;
	static function getBundledInput(side:String):Color;
	static function setBundledOutput(side:String, state:Color):Void;
	static function getBundledOutput(side:String):Color;
	static function testBundledInput(side:String, value:Color):Bool;
}
