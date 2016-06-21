/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

/* admin init */
Admin__vehicles = false;
Admin__weapons = false;
adminMenu_root = "tct\";
_sqfconfig = execVM format["%1adminPanel\config.sqf",adminMenu_root];
waitUntil{scriptDone _sqfconfig};
_sqffuncs = execVM format["%1adminPanel\funcs.sqf",adminMenu_root];
waitUntil{scriptDone _sqffuncs};

/* execute on server */
["AdminRE",{
	_code = _this select 0;
	_player = _this select 1;
	_has = [getPlayerUID _player] call Admin_HasAccess;
	
	if (_has) then {
		[] call compile _code;
	};
}] call Net_AddHandle;