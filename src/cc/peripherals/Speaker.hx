package cc.peripherals;

extern class Speaker {
    function playSound(name:String, ?volume:Float, ?pitch:Float):Bool;
    function playNote(name:string, ?volume:Float, ?pitch:Float):Bool;
}
