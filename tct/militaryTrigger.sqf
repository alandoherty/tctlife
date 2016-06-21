TCT_MilCarrierPos = [14531,358,156];
TCT_MilCarrierZone1 = 900;
TCT_MilCarrierZone2 = 1650;

while{true} do {
	_mil = ismil;
	_dist = (TCT_MilCarrierPos distance (getPosATL player));
	
	if (!_mil && (_dist < TCT_MilCarrierZone2)) then {
		_format = "[WARNING] \n\nYou are entering a military controlled area, you will be teleported in %1m\n\n~ TCT Military";
		titleText [format[_format,_dist - TCT_MilCarrierZone1], "PLAIN"];
	};
	
	if (_mil && (_dist < TCT_MilCarrierZone2) && (_dist > TCT_MilCarrierZone1)) then {
		_rank = toUpper ((getPlayerUID player) call TCT_MiRank);
		_format = "[WELCOME %1] \n\nYou are entering/leaving the military controlled area\n\n~ TCT Military";
		titleText [format[_format,_rank], "PLAIN"];
	};
	
	if (!_mil && (_dist < TCT_MilCarrierZone1)) then {
		player setPosATL [10882,2561,1.3];
	};
	sleep 1;
};