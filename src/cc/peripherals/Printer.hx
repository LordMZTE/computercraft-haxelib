package cc.peripherals;

import cc.Term.TerminalPosition;
import cc.Term.TerminalSize;

extern class Printer {
    function write(text:String):Void;
    function getCursorPos():TerminalPosition;
    function setCursorPos(x:Int, y:Int):Void;
    function getPageSize():TerminalSize;
    function newPage():Bool;
    function endPage():Bool;
    function setPageTitle(?title:String):Void;
    function getInkLevel():Int;
    function getPaperLevel():Int;
}
