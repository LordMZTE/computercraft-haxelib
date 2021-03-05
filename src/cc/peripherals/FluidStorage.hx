package cc.peripherals;

import lua.Table;

extern class FluidStorage {
    function tanks():Table<Int, Table<String, Dynamic>>;
    function pushFluid(toName:String, ?limit:Int, ?fluidName:String):Int;
    function pullFluid(fromName:String, ?limit:Int, ?fluidName:String):Int;
}
