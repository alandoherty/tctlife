/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

_player = _this select 0;

if (vehicle _player == _player) then {
	if (_player == player) then { 
		[format["%1 is not inside a vehicle!",(name _player)]] call Admin_Error;
	} else {
		["You are not inside a vehicle!"] call Admin_Error;
	};
} else {
	_veh = (vehicle _player);
	_veh setDamage 0;
	_veh setFuel 1;
	[format["You fixed %1's ride!",(name _player)]] call Admin_Success;
	["Fixed Vehicle", _player] call Admin_Log;
	
	if (_player == player) then {
		[format["%1 fixed his vehicle",(name player)]] call Admin_REGChat;
	} else {
		[format["%1 fixed %2's vehicle",(name player),(name _player)]] call Admin_REGChat;
	};
};