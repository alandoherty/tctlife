_killer 		= _this select 0;
_killedbyvehicle 	= _this select 1;
_self			= player;

if (player == _killer and !iscop and !suicided) exitWith {};

if (player == _killer and !iscop and suicided) exitWith

{

player groupChat localize "STRS_handlerdeadpub_suicide";
SelfKilled = SelfKilled + 1;
extradeadtime = extradeadtime + suicidepenalty;
["extradeadtime", extradeadtime] spawn ClientSaveVar;

};

if (player == _killer and iscop) exitWith {};

if (_killer in civarray) then

{


CivsKilled = CivsKilled + 1;
_gesucht = 0;
call compile format ["_gesucht = %1_wanted;", _killer];

if (iscop) then

	{


	_civkopfgeld = call compile format ["kopfgeld_%1", _killer];

	_civkopfgeld = _civkopfgeld / 3;

	_civkopfgeld = ceil _civkopfgeld;

	if (_civkopfgeld != 0) then

	{

	(format['if (player == %3)then{bankaccount = bankaccount + %2; player groupChat "You got 1/3 of the civs bounty totaling $%2"}', player, _civkopfgeld, _self]) call broadcast;

	};
	extradeadtime = extradeadtime + killedplayerinc;
	["extradeadtime", extradeadtime] spawn ClientSaveVar;

	if (_gesucht == 0 and side _killer == civilian) then {player groupChat format [localize "STRS_handlerdeadpub_civkilled", _killer, (killstrafe call ISSE_str_IntToStr)];};

	}
	else
	{

	extradeadtime = extradeadtime + killedplayerinc;
	["extradeadtime", extradeadtime] spawn ClientSaveVar;
	true call TurnWantedFunc;

	if(_killedbyvehicle)then

		{

		INV_LizenzOwner = INV_LizenzOwner - ["car","truck"];
		["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
		player groupchat "You have lost your vehicle license for reckless driving!";
		demerits = 0;

		}else{

		player groupchat "You are now wanted, and lost your gun licenses!";
		INV_LizenzOwner = INV_LizenzOwner - ["Pistollicense","Riflelicense","automatic"];
		["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;

		};

	};

sleep 1;
if (_killedbyvehicle) then
	{
	(format ["[""KilledCiv"", %1] spawn Isse_AddCrimeLogEntry; if(%1 in civarray)then{if(!(""Hit and Run"" in %1_reason))then{%1_reason = %1_reason + [""Hit and Run""]}; kopfgeld_%1 = kopfgeld_%1 + 30000};", player]) call broadcast;
	}
	else
	{
	(format ["[""KilledCiv"", %1] spawn Isse_AddCrimeLogEntry; if(%1 in civarray)then{if(!(""Murder"" in %1_reason))then{%1_reason = %1_reason + [""Murder""]}; kopfgeld_%1 = kopfgeld_%1 + 30000};", player]) call broadcast;
	};


};



if (_killer in coparray) then

{

CopsKilled = CopsKilled + 1;

if (iscop) then

	{

	extradeadtime = extradeadtime + killedplayerinc;
	["extradeadtime", extradeadtime] spawn ClientSaveVar;
	player groupChat format [localize "STRS_handlerdeadpub_copkilledbycop", _killer];

	if ( (player distance copbase1 <= 400) or (_killer distance copbase1 <= 400) or (CopsKilled > 5) ) then

		{

		[] execVM "copprison.sqf";

		};

	}
	else
	{

	extradeadtime = extradeadtime + killedplayerinc;
	["extradeadtime", extradeadtime] spawn ClientSaveVar;
	player groupChat format [localize "STRS_handlerdeadpub_copkilled", _killer];
	true call TurnWantedFunc;

	if(_killedbyvehicle)then

		{

		INV_LizenzOwner = INV_LizenzOwner - ["car","truck"];
		["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
		player groupchat "You have lost your vehicle licenses for reckless driving!";
		demerits = 0;

		}else{

		player groupchat "You are now wanted, and lost your gun licenses!";
		INV_LizenzOwner = INV_LizenzOwner - ["Pistollicense","Riflelicense","automatic"];
		["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;

		};

	};

sleep 1;

if (_killedbyvehicle) then
	{
	(format ["[""KilledCop"", %1, ""%2""] spawn Isse_AddCrimeLogEntry; if(%1 in civarray)then{if(!(""Hit and run"" in %1_reason))then{%1_reason = %1_reason + [""Hit and run""]}; kopfgeld_%1 = kopfgeld_%1 + 30000};", player,  _killer]) call broadcast;
	}
	else
	{
	(format ["[""KilledCop"", %1, ""%2""] spawn Isse_AddCrimeLogEntry; if(%1 in civarray)then{if(!(""murder"" in %1_reason))then{%1_reason = %1_reason + [""murder""]}; kopfgeld_%1 = kopfgeld_%1 + 30000};", player,  _killer]) call broadcast;
	};


};

