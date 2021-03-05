package cc;

import haxe.extern.Rest;

typedef Color = Int;

@:native("colors")
extern class Colors {
	static function combine(colors:Rest<Color>):Color;
	static function subtract(from:Color, colors:Rest<Color>):Color;
	static function test(it:Color, check:Color):Bool;

	static var white:Color;
	static var orange:Color;
	static var magenta:Color;
	static var lightBlue:Color;
	static var yellow:Color;
	static var lime:Color;
	static var pink:Color;
	static var gray:Color;
	static var lightGray:Color;
	static var cyan:Color;
	static var purple:Color;
	static var blue:Color;
	static var brown:Color;
	static var green:Color;
	static var red:Color;
	static var black:Color;
}
