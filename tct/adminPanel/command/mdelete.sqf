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
	deleteVehicle cursorTarget;
} else {
	format["if (player == %1) then { deleteVehicle cursorTarget; };", _player] call broadcast;
};

[format["You have deleted the cursor target!",(name _player)]] call Admin_Success;
["Delete", _player] call Admin_Log;

if (_player == player) then {
	[format["%1 deleted cursor vehicle",(name player)]] call Admin_REGChat;
} else {
	[format["%1 deleted %2s cursor vehicle",(name player),(name _player)]] call Admin_REGChat;
};