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
	call Admin_ResetCharacter;
} else {
	format["if (player == %1) then { call Admin_ResetCharacter; };", _player] call broadcast;
};

[format["You have reset %1s character!",(name _player)]] call Admin_Success;
["Reset", _player] call Admin_Log;

if (_player == player) then {
	[format["%1 reset his character",(name player)]] call Admin_REGChat;
} else {
	[format["%1 reset %2s character",(name player),(name _player)]] call Admin_REGChat;
};