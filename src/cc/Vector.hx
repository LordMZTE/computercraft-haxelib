package cc;

@:native("vector")
extern class Vector {
	@:native("new") static function create(x:Int, y:Int, z:Int):Vector;

	function add(other:Vector):Vector;
	function sub(other:Vector):Vector;
	function mul(n:Float):Vector;
	function dot(other:Vector):Float;
	function cross(other:Vector):Float;
	function length():Float;
	function normalize():Vector;
	function round():Vector;
	@:native("tostring") function toString():String;
}
