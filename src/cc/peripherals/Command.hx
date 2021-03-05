package cc.peripherals;

extern class Command {
	public function getCommand():String;
	public function setCommand(command:String):Void;
	public function runCommand():Void;
}
