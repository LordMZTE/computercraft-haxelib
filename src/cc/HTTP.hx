package cc;

import lua.Table;

@:multiReturn
extern class HTTPCheckReturn {
	var allowed:Bool;
	var error:Null<String>;
}

extern class HTTPResponse {
	function close():Void;
	function readLine():String;
	function readAll():String;
	function getResponseCode():Int;
}

@:native("http")
extern class HTTP {
	static function checkURL(url:String):Bool;
	static function request(url:String, ?postData:String, ?headers:Table<String, String>):Void;
	static function get(url:String, ?headers:Table<String, String>):Null<HTTPResponse>;
	static function post(url:String, postData:String, ?header:Table<String, String>):Null<HTTPResponse>;
}
