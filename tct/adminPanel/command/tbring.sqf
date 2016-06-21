/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

_player = _this select 0;

if (vehicle player != player) then {
	_car = vehicle player;
	_player moveInCargo _car;
	[format["You have brought %1",(name _player)]] call Admin_Success;
	["Bring", _player] call Admin_Log;
} else {
	(_player) attachto [player,[0.0,3.0,0.5]];
	sleep 4;
	detach (_player);
	[format["You have brought %1",(name _player)]] call Admin_Success;
	["Bring", _player] call Admin_Log;
};

[format["%1 brought %2",(name player),(name _player)]] call Admin_REGChat;