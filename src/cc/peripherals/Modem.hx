package cc.peripherals;

import haxe.Rest;
import lua.Table;

extern class Modem {
    function open(channel:Int):Void;
    function isOpen(channel:Int):Void;
    function close(channel:Int):Void;
    function closeAll():Void;
    function transmit(channel:Int, replyChannel:Int, payload:Dynamic):Void;
    function isWireless():Bool;
    function getNamesRemote():Table<Int, String>;
    function isPresentRemote(name:String):Bool;
    function getTypeRemote(name:String):Null<String>;
    function getMethodsRemote(name:String):Null<Table<Int, String>>;
    function callRemote(remoteName:String, method:String, args:Rest<Dynamic>):Dynamic;
    function getNameLocal():Null<String>;
}
