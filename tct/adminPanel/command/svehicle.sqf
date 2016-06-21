/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

_player = _this select 0;
AdminVehicleSpawn_lastPlayer = _player;
closeDialog 1620;
_wepDialog = createDialog "AdminVehicleSpawn";
{
	_id = (_x select 0);
	_name = (_x select 1);
	_index = lbAdd [1857,format["%1", _name]];
	lbSetData [1857, _index, _id];
	sliderSetRange [1853,0,1];
} forEach Admin_vehicles;