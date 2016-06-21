/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

_player = _this select 0;
tmap_Target = _player;
onMapSingleClick "vehicle tmap_Target setPos _pos; [format[""You have teleported %1"",(name tmap_Target)]] call Admin_Success; onMapSingleClick ''; [] execVM format[""%1adminPanel\checkAdmin.sqf"",adminMenu_root]; openMap false; true;";
openMap true;
["Teleport", _player] call Admin_Log;

if (_player == player) then {
	[format["%1 teleported himself",(name player)]] call Admin_REGChat;
} else {
	[format["%1 teleported %2",(name player),(name _player)]] call Admin_REGChat;
};