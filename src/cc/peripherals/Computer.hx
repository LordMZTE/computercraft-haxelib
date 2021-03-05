package cc.peripherals;

extern class Computer {
	public function turnOn():Void;
	public function shutdown():Void;
	public function reboot():Void;
	@:native("getID") public function getId():Int;
	public function isOn():Bool;
	public function getLabel():Null<String>;
}
