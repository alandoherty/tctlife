/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

_player = _this select 0;

if (_player == player) then {
	removeAllWeapons _player;
} else {
	format["if (player == %1) then { removeAllWeapons player; [""Your weapons have been stripped by %2!""] call Admin_Error;};", _player, (name player)] call broadcast;
};

[format["You have stripped %1!",(name _player)]] call Admin_Success;
["Strip", _player] call Admin_Log;

if (_player == player) then {
	[format["%1 stripped himself",(name player)]] call Admin_REGChat;
} else {
	[format["%1 stripped %2",(name player),(name _player)]] call Admin_REGChat;
};