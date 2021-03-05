package cc;

import cc.Term;

@:native("window")
@:luaDotMethod
extern class Window extends TerminalObject {
	static function create(parent:TerminalObject, x:Int, y:Int, width:Int, height:Int, ?visible:Bool):Window;

	function setVisible(visible:Bool):Void;
	function redraw():Void;
	function restoreCursor():Void;
	function getPosition():TerminalPosition;
	function reposition(x:Int, y:Int, ?width:Int, ?height:Int):Void;
}
