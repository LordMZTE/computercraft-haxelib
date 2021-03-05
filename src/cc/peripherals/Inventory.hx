package cc.peripherals;

import lua.Table;

extern class Inventory {
    function size():Int;
    function list():Table<Int, Null<Table<Dynamic, Dynamic>>>;
    function getItemDetail(slot:Int):Table<Dynamic, Dynamic>;
    function pushItems(toName:String, fromSlot:Int, ?limit:Int, ?toSlot:Int):Int;
    function pullItems(fromName:String, fromSlot:Int, ?limit:Int, ?toSlot:Int):Int;
}
