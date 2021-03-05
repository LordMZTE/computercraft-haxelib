package cc;

import cc.Colors;

@:multiReturn
extern class TerminalPosition {
	var x:Int;
	var y:Int;
}

@:multiReturn
extern class TerminalSize {
	var width:Int;
	var height:Int;
}

@:luaDotMethod
extern class TerminalObject {
	function write(text:String):Void;
	function blit(text:String, colors:String, background:String):Void;
	function clear():Void;
	function clearLine():Void;
	function getCursorPos():TerminalPosition;
	function setCursorPos(x:Int, y:Int):Void;
	function setCursorBlink(value:Bool):Void;
	function isColor():Bool;
	function getSize():TerminalSize;
	function scroll(lines:Int):Void;
	function setTextColor(color:Color):Void;
	function getTextColor():Color;
	function setBackgroundColor(color:Color):Void;
	function getBackgroundColor():Color;
}

@:native("term")
extern class Term {
	static function write(text:String):Void;
	static function blit(text:String, colors:String, background:String):Void;
	static function clear():Void;
	static function clearLine():Void;
	static function getCursorPos():TerminalPosition;
	static function setCursorPos(x:Int, y:Int):Void;
	static function setCursorBlink(value:Bool):Void;
	static function isColor():Bool;
	static function getSize():TerminalSize;
	static function scroll(lines:Int):Void;
	static function setTextColor(color:Color):Void;
	static function getTextColor():Color;
	static function setBackgroundColor(color:Color):Void;
	static function getBackgroundColor():Color;

	static function redirect(target:TerminalObject):TerminalObject;
	static function current():TerminalObject;
	static function native():TerminalObject;
}
