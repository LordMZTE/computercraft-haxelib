package cc;

import haxe.extern.EitherType;

@:multiReturn
extern class TurtleActionResult {
	var successful:Bool;
	var error:String;
}

extern class TurtleItemDetail {
	var name:String;
	var damage:Int;
	var count:Int;
}

extern class TurtleBlockDetail {
	var name:String;
	var metadata:Int;
	var state:Dynamic;
}

@:multiReturn
extern class TurtleInspectResult {
	var successful:Bool;
	var result:EitherType<String, TurtleBlockDetail>;
}

@:native("turtle")
extern class Turtle {
	static function craft(qty:Int):TurtleActionResult;
	static function forward():TurtleActionResult;
	static function back():TurtleActionResult;
	static function up():TurtleActionResult;
	static function down():TurtleActionResult;
	static function turnLeft():TurtleActionResult;
	static function turnRight():TurtleActionResult;
	static function select(slot:Int):Bool;
	static function getSelectedSlot():Int;
	static function getItemCount(?slot:Int):Int;
	static function getItemSpace(?slot:Int):Int;
	static function getItemDetail(?slot:Int):TurtleItemDetail;
	static function equipLeft():TurtleActionResult;
	static function equipRight():TurtleActionResult;
	static function attack():TurtleActionResult;
	static function attackUp():TurtleActionResult;
	static function attackDown():TurtleActionResult;
	static function dig():TurtleActionResult;
	static function digUp():TurtleActionResult;
	static function digDown():TurtleActionResult;
	static function place(?signText:String):TurtleActionResult;
	static function placeUp():TurtleActionResult;
	static function placeDown():TurtleActionResult;
	static function detect():Bool;
	static function detectUp():Bool;
	static function detectDown():Bool;
	static function inspect():TurtleInspectResult;
	static function inspectUp():TurtleInspectResult;
	static function inspectDown():TurtleInspectResult;
	static function compare():Bool;
	static function compareUp():Bool;
	static function compareDown():Bool;
	static function compareTo(slot:Int):Bool;
	static function drop(?count:Int):TurtleActionResult;
	static function dropUp(?count:Int):TurtleActionResult;
	static function dropDown(?count:Int):TurtleActionResult;
	static function suck(?amount:Int):TurtleActionResult;
	static function suckUp(?amount:Int):TurtleActionResult;
	static function suckDown(?amount:Int):TurtleActionResult;
	static function refuel(?qty:Int):TurtleActionResult;
	static function getFuelLevel():Int;
	static function getFuelLimit():Int;
	static function transferTo(to:Int, ?qty:Int):Bool;
}
