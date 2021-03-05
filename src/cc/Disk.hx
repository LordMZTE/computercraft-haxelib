package cc;

@:native("disk")
extern class Disk {
	static function isPresent(side:String):Bool;
	static function hasData(side:String):Bool;
	static function getMountPath(side:String):String;
	static function setLabel(side:String, label:String):Void;
	static function getLabel(side:String):String;
	static function getID(side:String):Int;
	static function hasAudio(side:String):Bool;
	static function getAudioTitle(side:String):String;
	static function playAudio(side:String):Void;
	static function stopAudio(side:String):Void;
	static function eject(side:String):Void;
}
