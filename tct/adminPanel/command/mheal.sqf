/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

_player = _this select 0;
_player setDamage 0;
[format["You have healed %1!",(name _player)]] call Admin_Success;
["Heal", _player] call Admin_Log;

if (_player == player) then {
	[format["%1 healed himself",(name player)]] call Admin_REGChat;
} else {
	[format["%1 healed %2",(name player),(name _player)]] call Admin_REGChat;
};