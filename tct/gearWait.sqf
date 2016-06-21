/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

disableSerialization;

//wait until gear open
WaitUntil {!IsNull (FindDisplay 106)};

//close if locked
_display = findDisplay 106;

_vehs = nearestObjects [player, ["AllVehicles"], 4];
_close = false;

if (count _vehs > 0) then {
	{
		if (locked _x) then { _close = true; }
	} forEach _vehs;
};

if (locked cursorTarget) then {
	_close = true;
};

if(_close) then {
	_display closeDisplay 1;
	player globalChat "This vehicle is locked";
};
[] execVM "tct\gearWait.sqf";