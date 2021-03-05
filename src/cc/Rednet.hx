package cc;

import lua.Table;
import lua.TableTools;

typedef MessageData = Dynamic;

@:multiReturn
extern class ReceivedMessage<T:MessageData> {
	var senderID:Int;
	var message:T;
	var distance:Float;
	var protocol:String;
}

@:native("rednet")
extern class Rednet {
	static function open(modem:String):Void;
	static function close(modem:String):Void;
	static function send(to:Int, data:MessageData, ?protocol:String):Void;
	static function broadcast(data:MessageData, ?protocol:String):Void;
	static function receive<T:MessageData>(?protocol:String, ?timeout:Int):ReceivedMessage<T>;
	static function isOpen(modem:String):Bool;
	static function host(protocol:String, hostname:String):Void;
	static function unhost(protocol:String, hostname:String):Void;

	@:native("lookup")
	private static function _lookup(protocol:String, ?hostname:String):Dynamic;

	static inline function lookup(protocol:String, ?hostname:String):Table<Int, Int> {
		return TableTools.pack(_lookup(protocol, hostname));
	}

	static function run():Void;
}
