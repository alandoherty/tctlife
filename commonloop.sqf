_art = _this select 0;

if (_art == "serverloop1") then 

{

_counter = 0;

while {true} do 

	{

	coparray = [cop1,cop2,cop3,cop4,cop5,cop6,cop7,cop8,cop9,cop10,cop11,cop12,cop13,cop14,cop15];
	civarray = [civ1,civ2,civ3,civ4,civ5,civ6,civ7,civ8,civ9,civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20,civ21,civ22,civ23,civ24,civ25,civ26,civ27,civ28,civ29,civ30,civ31,civ32,civ33,civ34,civ35,civ36,civ37,civ38,civ39,civ40,civ41,civ42,civ43,civ44,civ45,civ46,civ47,civ48,civ49,civ50,civ51,civ52,civ53,civ54,civ55,civ56,civ57,civ58,civ59,civ60,civ61,civ62,civ63,civ64,civ65,civ66,civ67,civ68,civ69,civ70,civ71,civ72,civ73,civ74,civ75,civ76,civ77,civ78,civ79,civ80];
	playerarray = [civ1,civ2,civ3,civ4,civ5,civ6,civ7,civ8,civ9,civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20,civ21,civ22,civ23,civ24,civ25,civ26,civ27,civ28,civ29,civ30,civ31,civ32,civ33,civ34,civ35,civ36,civ37,civ38,civ39,civ40,civ41,civ42,civ43,civ44,civ45,civ46,civ47,civ48,civ49,civ50,civ51,civ52,civ53,civ54,civ55,civ56,civ57,civ58,civ59,civ60,civ61,civ62,civ63,civ64,civ65,civ66,civ67,civ68,civ69,civ70,civ71,civ72,civ73,civ74,civ75,civ76,civ77,civ78,civ79,civ80,cop1,cop2,cop3,cop4,cop5,cop6,cop7,cop8,cop9,cop10,cop11,cop12,cop13,cop14,cop15,cop16,cop17,cop18,cop19,cop20];

	_counter = _counter + 1;
	
	if(_counter >= 60)then

		{ 

		_counter = 0;

		for [{_i=0}, {_i < (count publicarbeiterarctionarray)}, {_i=_i+1}] do 

			{

			if ( (not((format["%1", ((publicarbeiterarctionarray select _i) select 1)]) call ISSE_UnitExists)) or (isNull((publicarbeiterarctionarray select _i) select 0)) ) then 

				{

				if (not(isNull((publicarbeiterarctionarray select _i) select 0))) then 

					{

					_object = ((publicarbeiterarctionarray select _i) select 0);
					_object setpos [0,0,0]; 																																								
					_object setVehicleinit "";
					deletevehicle _object;	

					};

				publicarbeiterarctionarray SET [_i, ""];
				publicarbeiterarctionarray = publicarbeiterarctionarray - [""];	

				};

			};

		};

	for [{_i=0}, {_i < (count playerarray)}, {_i=_i+1}] do 

		{

		_player = (playerarray select _i);
				
		if (!isnull _player and isnull(call compile format["oldciv%1", (_i + 1)]) and !isPlayer _player) then {deletevehicle _player};
		
		};

	sleep 1;

	};

};

if(true)exitwith{};

for [{_i=0}, {_i < (count publichideoutarray)}, {_i=_i+1}] do 

		{

		_civ = (publichideoutarray select _i) select 0;

		if (!(_civ call ISSE_UnitExists) or isNull(((publichideoutarray select _i) select 1) select 0)) then 

			{

				{

				if (NOT(isNull _x)) then 

					{

					_x setVehicleinit "";
					deletevehicle _x;

					};

				} forEach ((publichideoutarray select _i) select 1);

			publichideoutarray SET [_i, ""];
			publichideoutarray = publichideoutarray - [""];

			};

		};
