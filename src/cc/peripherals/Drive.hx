package cc.peripherals;

import haxe.extern.EitherType;

extern class Drive {
	function isDiskPresent():Bool;
	function getDiskLabel():Null<String>;
	function setDiskLabel(?label:Null<String>):Void;
	function hasData():Bool;
	function getMountPath():Null<String>;
	function hasAudio():Bool;
	function getAudioTitle():Null<EitherType<String, Bool>>;
	function playAudio():Void;
	function stopAudio():Void;
	function ejectDisk():Void;
	@:native("getDiskID") function getDiskId():Null<Int>;
}
