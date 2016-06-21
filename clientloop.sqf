_art = _this select 0;

if (_art == "clientloop") then

{

_w1 = 0;
_w2 = 0;
_w3 = 0;
_Laterbankaccount = 0;

while {true} do

	{

//	if(vehicle player != player and !(vehicle player in INV_VehicleArray) and !(vehicle player in INV_ServerVclArray) and !(player in convoytruck) and (typeof vehicle player != "StaticWeapon") and (typeof vehicle player !="SearchLight_US_EP1") and (typeof vehicle player != "Animal"))then{deletevehicle (vehicle player)};

	if ((_Laterbankaccount != bankaccount) and (bankaccount != Startmoneh)) then

		{

		["bankaccount", bankaccount] spawn ClientSaveVar;
		_Laterbankaccount = bankaccount;

		};

	if(iscop and alive player and weaponsloaded)then

		{

		_updateweps = false;
		_updatemags = false;

		_weapons = weapons player;

		for [{_i=0}, {_i < (count _weapons)}, {_i=_i+1}] do

			{

			if(!((_weapons select _i) in playerweapons))then

				{

				playerweapons = playerweapons + [(_weapons select _i)];
				_updateweps = true;


				};

			};

		_weapons = weapons player;

		for [{_i=0}, {_i < (count playerweapons)}, {_i=_i+1}] do

			{

			if(!((playerweapons select _i) in _weapons))then

				{

				playerweapons = playerweapons - [(playerweapons select _i)];
				_updateweps = true;

				};

			};

		_mags	 = magazines player;

		for [{_i=0}, {_i < (count _mags)}, {_i=_i+1}] do

			{

			if((_i + 1) > count playermagazines)then

				{

				playermagazines = playermagazines + [(_mags select _i)];
				_updatemags = true;

				};

			};

		_mags	 = magazines player;

		for [{_i=0}, {_i < (count playermagazines)}, {_i=_i+1}] do

			{

			if((_i + 1) > count _mags)then

				{

				playermagazines set[_i, ""];
				_updatemags = true;

				};

			};

		_mags	 = magazines player;

		for [{_i=0}, {_i < (count _mags)}, {_i=_i+1}] do

			{

			if((playermagazines select _i) != (_mags select _i))then

				{

				playermagazines set[_i, ""];
				_updatemags = true;

				};

			};

		playermagazines = playermagazines - [""];

		if(_updateweps)then{["playerweapons", playerweapons] spawn ClientSaveVar};
		if(_updatemags)then{["playermagazines", playermagazines] spawn ClientSaveVar};

		};

	coparray = [cop1,cop2,cop3,cop4,cop5,cop6,cop7,cop8,cop9,cop10,cop11,cop12,cop13,cop14,cop15];
	civarray = [civ1,civ2,civ3,civ4,civ5,civ6,civ7,civ8,civ9,civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20,civ21,civ22,civ23,civ24,civ25,civ26,civ27,civ28,civ29,civ30,civ31,civ32,civ33,civ34,civ35,civ36,civ37,civ38,civ39,civ40,civ41,civ42,civ43,civ44,civ45,civ46,civ47,civ48,civ49,civ50,civ51,civ52,civ53,civ54,civ55,civ56,civ57,civ58,civ59,civ60,civ61,civ62,civ63,civ64,civ65,civ66,civ67,civ68,civ69,civ70,civ71,civ72,civ73,civ74,civ75,civ76,civ77,civ78,civ79,civ80];
	playerarray = [civ1,civ2,civ3,civ4,civ5,civ6,civ7,civ8,civ9,civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20,civ21,civ22,civ23,civ24,civ25,civ26,civ27,civ28,civ29,civ30,civ31,civ32,civ33,civ34,civ35,civ36,civ37,civ38,civ39,civ40,civ41,civ42,civ43,civ44,civ45,civ46,civ47,civ48,civ49,civ50,civ51,civ52,civ53,civ54,civ55,civ56,civ57,civ58,civ59,civ60,civ61,civ62,civ63,civ64,civ65,civ66,civ67,civ68,civ69,civ70,civ71,civ72,civ73,civ74,civ75,civ76,civ77,civ78,civ79,civ80,cop1,cop2,cop3,cop4,cop5,cop6,cop7,cop8,cop9,cop10,cop11,cop12,cop13,cop14,cop15,cop16,cop17,cop18,cop19,cop20];

	{if ((player distance (_x select 0)) < (_x select 1)) then {timeinworkplace = timeinworkplace + 1;};} forEach workplacearray;

	if (!debug and (player distance terrorhideoutlogic <= 900 or player distance assassinlogic <= 160 or player distance deadcamlogic < 400) and alive player and iscop) then {titleText [localize "STRS_southChernarus_area", "plain"]};

	if (!debug and (player distance terrorhideoutlogic <= 750 or player distance assassinlogic <= 80 or player distance deadcamlogic < 300) and alive player and iscop) then {call TeleToMainbaseFunc;};

	//if(alive player and isciv and player distance Militarybase > 100 and player distance Militarybase <= 160)then{titleText ["This is a restricted area! Turn back or you will be shot!", "plain down"]};
	//if(alive player and isciv and captive player)then{format['%1 setcaptive false;', player] call broadcast};
	//if(alive player and isciv and !firingcaptive and !(captive player) and player distance Militarybase > 100)then{format['%1 setcaptive true', player] call broadcast};
	//if(isciv and player call ISSE_IsVictim and !(captive player))then{format['%1 setcaptive true', player] call broadcast};

	_veh = vehicle player;

	if (player distance copbase1 < 190 and !iscop and !(_veh isKindOf "Air")) then

		{

		if (_veh != player) then

			{

			_veh setvelocity [0,0,0];
			player Action ["eject", _veh];
			player Action ["GET OUT", _veh];

			};

		_veh setpos getmarkerpos "telehesnotcop";
		player setpos getmarkerpos "telehesnotcop";
		player groupchat "You were teleported out of the cop base!";

		};

	if (player distance getmarkerpos "pdsub" < 20 and !iscop and !(_veh isKindOf "Air")) then

		{

		if (_veh != player) then

			{

			_veh setvelocity [0,0,0];
			player Action ["eject", _veh];
			player Action ["GET OUT", _veh];

			};

		_veh setpos getmarkerpos "telehesnotcop";
		player setpos getmarkerpos "telehesnotcop";
		player groupchat "You were teleported out of the cop base!";

		};	
		
		if (player distance getmarkerpos "inscampmkr" < 400 and (side player != resistance) and !(_veh isKindOf "Air")) then

		{

		if (_veh != player) then

			{

			_veh setvelocity [0,0,0];
			player Action ["eject", _veh];
			player Action ["GET OUT", _veh];

			};

		_veh setpos getmarkerpos "telehesnotins";
		player setpos getmarkerpos "telehesnotins";
		player groupchat "You were teleported out of the rebel base!";

		};	
		
		if (player distance tlabase1 < 250 and (side player != east) and !(_veh isKindOf "Air")) then

		{

		if (_veh != player) then

			{

			_veh setvelocity [0,0,0];
			player Action ["eject", _veh];
			player Action ["GET OUT", _veh];

			};

		_veh setpos getmarkerpos "telehesnottla";
		player setpos getmarkerpos "telehesnottla";
		player groupchat "You were teleported out of the TLA base!";

		};
		
				if ((player distance impoundarea1 < 800 and !(_veh isKindOf "Air")) or (player distance impoundarea1 < 250)) then

		{

		_veh setpos getmarkerpos "militiaspawn";
		player groupchat "You were teleported out of the game logic area!";

		};



	if ((alive player) and (DeadWaitSec > (respawnzeit+deadtimebonus))) then

		{

		DeadWaitSec = DeadWaitSec - deadtimebonus;

		};

	_moneh = 'moneh' call INV_GetItemAmount;

	if (_moneh < 0) then {['moneh', 0] call INV_SetItemAmount; _moneh = 0;};

	if (bankaccount > bank_limit) then {bankaccount = bank_limit;player groupChat localize "STRS_maxbank";};
	if (_moneh > money_limit) then {['moneh', money_limit] call INV_SetItemAmount; player groupChat localize "STRS_maxmoney";};

	{

	if ((rating _x) < 0) then {sleep 60;_x addRating (abs (rating _x))};
	if ((score _x) < 0)  then {_x addScore  (abs (score _x))};

	} forEach playerarray;

//	if(!alive HQ)then

//		{

//		0 fademusic 1;
//		sleep 3;
//		0 fademusic 1;
//		playmusic "Track16_Valentine";
//		player setpos [(getpos militarybase select 0), (getpos militarybase select 1), (getpos militarybase select 2) + 5500];
//		setViewDistance 1600;
//		titletext ["The Military Headquaters has been destroyed! The Takistan Revolution is complete!", "PLAIN", 60];
//		format['[%1] exec "ca\air2\halo\data\Scripts\HALO.sqs";', player] call broadcast;
//		player removeaction 0;
//		player removeaction 1;
//		player removeaction 2;
//		sleep 81.5;
//		endMission "END1";

//		};

	sleep 1;

	};

};