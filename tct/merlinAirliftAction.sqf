/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

_pickup = _this select 3;

if (_pickup) {
	tctMIL = false;
	detach tctMOL;
	
	player globalChat format["Dropped vehicle %1", typeOf tctMOL];
	tctMOL = nil;
} else {
	_veh = false;
	{
		if ((typeOf _x) in TCT_MerlinAirliftVehicles) then {
			if 
		};
	} nearestObjects [(player vehicle), [], 50];

	if (_veh == false) then {
		player globalChat "No liftable vehicles within 50m";
	} else {
		tctMIL = true;
		tctMOL = _veh;
		_veh attachTo [(vehicle player), [0,0,0]];
		player globalChat format["Picked up vehicle, carrying %1", typeOf _veh];
	};
};