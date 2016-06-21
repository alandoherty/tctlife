/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

TCT_Military = [
	["76397766","Pilot"], //alan
	["406657AX","Cadet"]  //Tinro
];

// is uid in military
TCT_MiIs = {
	_isMil = false;
	_uid = _this;
	
	{
		if (_x select 0 == format["%1",_this]) then {
			_isMil = true;
		};
	} forEach TCT_Military;
	
	_isMil
};

// get rank
TCT_MiRank = {
	_rank = "None";
	_uid = _this;
	
	{
		if (_x select 0 == format["%1",_this]) then {
			_rank = _x select 1;
		};
	} forEach TCT_Military;
	
	_rank
};

// check if in military or kick
TCT_MiSlotCheck = {
	_isMil = (getPlayerUID _this) call TCT_MiIs;
	
	// kick
	if (not _isMil) then {
		serverCommand format ['#kick %1', name this];
	};
};

// military trigger checks
[] execVM "tct\militaryTrigger.sqf";