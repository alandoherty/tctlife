_loopart = _this select 0;
_moneh    = 'moneh' call INV_GetItemAmount;

if (_loopart == "disarm") then

{

call INV_EntferneIllegales;
player groupChat localize "STRS_civmenucheck_beendisarmed";

};


if (_loopart == "ticket") then

{

_strafe = _this select 1;
_cop    = _this select 2;
_didpay = 0;
_copplayernumber = playersNumber west;
_copticket = round(_strafe/_copplayernumber);

if (!(createDialog "ja_nein")) exitWith {hint "Dialog Error!"};

ctrlSetText [1, format["%1 gave you a ticket of $%2. Do you want to pay?", _cop, (_strafe call ISSE_str_IntToStr)]];

waitUntil{(not(ctrlVisible 1023))};

if (Antwort == 1) then

	{

	if ((_moneh + bankaccount) < _strafe) exitwith

		{

		(format ["server globalChat format [localize ""STRS_civmenu_didnotpayticket"", name %2, %3];", _cop, player, (_strafe call ISSE_str_IntToStr), (_didnotpay call ISSE_str_IntToStr)]) call broadcast;

		};

	false call TurnWantedFunc;
	player groupChat format [localize "STRS_civmenucheck_ticketself", (_strafe call ISSE_str_IntToStr)];
	(format ["server globalChat format [localize ""STRS_civmenu_didpayticket"", name %2, %3];[""Ticket"", %2, %3] spawn Isse_AddCrimeLogEntry;if (iscop) then{player groupChat ""You got $%4 because the %2 paid the ticket."";[""moneh"", %4] call INV_AddInventoryItem;};kopfgeld_%2 = kopfgeld_%2 - %3; if(kopfgeld_%2 < 0)then{kopfgeld_%2 = 0;};", _cop, player, (_strafe call ISSE_str_IntToStr), (_copticket call ISSE_str_IntToStr)]) call broadcast;

	if(_moneh > _strafe) exitwith {['moneh', -(_strafe)] call INV_AddInventoryItem;};
	if (bankaccount > _strafe) exitwith {bankaccount = bankaccount - _strafe;};

	if ((_moneh + bankaccount) > _strafe) exitwith

		{

		_strafe1 = _moneh;
		_strafe2 = _strafe - _strafe1;
		['moneh', -(_strafe1)] call INV_AddInventoryItem;
		bankaccount = bankaccount - _strafe2;

		};

	};

if (Antwort == 2) then

	{

	(format ["server globalChat format [localize ""STRS_civmenu_didpaynothing"", name %2];", _cop, player, (_strafe call ISSE_str_IntToStr)]) call broadcast;
	player groupChat localize "STRS_civmenu_youdidnotpay";

	};

};



if (_loopart == "drugs") then

{

_checkcop = _this select 1;
drugsvalue = 0;

if (["INV_InventarArray", "drug"] call INV_StorageHasKindOf) then

	{

	for [{_i=0}, {_i < (count INV_InventarArray)}, {_i=_i+1}] do

		{

		_item   = ((INV_InventarArray select _i) select 0);
		_infos  = _item call INV_getitemArray;

		if(_item call INV_getitemKindOf == "drug") then

			{

			_amount = (_item call INV_GetItemAmount);
			_preis  = (_infos call INV_getitemBuyCost);

			drugsvalue = drugsvalue + (_preis*_amount);

			};

		};

	["INV_InventarArray", "drug"] call INV_StorageRemoveKindOf;

	(format ["if(!(""trafficking drugs"" in %1_reason))then{%1_reason = %1_reason + [""trafficking drugs""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + (%3); if (player == %2) then {player groupChat format[localize ""STRS_civmenu_hasdrugs"", %1, %4, (%3/2)];}; titletext [format[localize ""STRS_civmenucheck_haddrugs"", %1, %3], ""plain""];", player, _checkcop, drugsvalue, ceil(drugsvalue/25000)]) call broadcast;

	player groupChat localize "STRS_civmenucheck_beendrugsearched";

	} else {(format ["if (player == %2) then {player groupChat localize ""STRS_civmenu_hasnodrugs"";};", player, _checkcop]) call broadcast;};

};

if (_loopart == "arrest") then
{

_prisondauer = (_this select 1)*60;
_copobj      = _this select 2;
_exitart     = "";

if (!(player call ISSE_IsVictim)) exitwith {(format ["if (rolestring == ""%1"") then {player groupchat localize ""STRS_inventory_checknohands""};", _copobj]) call broadcast;};

_civkopfgeld = call compile format ["kopfgeld_%1", player];

if (_civkopfgeld != 0) then

	{

	(format['if(rolestring == "%1")then{bankaccount = bankaccount + %2; player groupChat "This civ had a bounty of $%2! You got that bounty!"}', _copobj, _civkopfgeld]) call broadcast;

	};

(format ["server GLOBALCHAT format [localize ""STRS_civmenucheck_arrested_global"", name %1, name %3, %2]; [""PrisonIn"", %1, %3] spawn Isse_AddCrimeLogEntry; kopfgeld_%1 = (%2*10000);%1_wanted = 0;%1_arrest = 1;", player, ((_prisondauer/60) call ISSE_str_IntToStr), _copobj]) call broadcast;

player setpos getmarkerpos "prisonspawn";

(format ["%1 switchmove ""%2"";", player, "normal"]) call broadcast;
call INV_EntferneIllegales;
local_arrest    = 1;
["local_arrest", local_arrest] spawn ClientSaveVar;
INV_hunger      = 0;
CivTimeInPrison = (_this select 1);
player groupChat format [localize "STRS_civmenucheck_arrested_self", (CivTimeInPrison call ISSE_str_IntToStr)];
isstunned=true;
(format['if (rolestring == "%1") then {execVM "keysoff.sqf";}', player]) call broadcast;

if(stolencash > 0)then

	{

	_INVrmv = stolencash;
	_BNKrmv = 0;
	_moneh   = "moneh" call INV_getitemamount;

	if(_moneh < stolencash)then{_INVrmv = _moneh;};
	if(bankaccount < (stolencash - _INVrmv))then{_BNKrmv = bankaccount};

	["moneh", -(_INVrmv)] call INV_addinventoryitem;
	bankaccount = bankaccount - _BNKrmv;

	(format ["server globalchat ""%1 was a bank robber and has been charged $%2!"";", name player, (_INVrmv + _BNKrmv)]) call broadcast;
	_playercaught = player;
	/*
	_copplayernumber = playersNumber west;
	_copbonus = round(stolencash/_copplayernumber);
	if (_copbonus > maxcopbonus) then {_copbonus = maxcopbonus};
	"if (iscop) then {bankaccount = (bankaccount + _copbonus); player sidechat format[""You got your share of $%1 for a job well done!"", _copbonus];};" call broadcast;
	*/
	};

stolencash = 0;
player setdamage 0;

_counter = 0;
_tBounty = (_prisondauer/60)*10000;

while {true} do
{
	_freigelassen = call compile format ["%1_arrest", player];
	_bounty       = call compile format["kopfgeld_%1", player];
	_frac 	      = _bounty/_tBounty;
	_timetotake   = round(_prisondauer*_frac);
	call compile format["kopfgeld_%1 = kopfgeld_%1 - (10000/60)", player];

	hintsilent format["Time until release: %1 seconds\nBail left to pay: $%2", _timetotake, round(_bounty)];

	if (isNull(player))                      exitWith {_exitart = ""};
	if (!(alive player))                     exitWith {_exitart = "tot"};
	if (_counter >= _prisondauer)             exitWith {_exitart = "frei"};
	if (_freigelassen == 0)                   exitWith {_exitart = "freigelassen"};
	if (player Distance prison_logic >= 50) exitWith {_exitart = "ausbruch"};
	if (_bounty <= 0)			  exitwith {_exitart = "freigelassen"};

	_counter = _counter + 1;
	sleep 1;

};

	if ((_exitart == "frei") or (_exitart == "freigelassen")) then
	{
		player setPos getMarkerPos "jail_freemarker";	
        player setdamage 0;
		(format ["if (player == %1) then {local_arrest = 0; [""local_arrest"", local_arrest] spawn ClientSaveVar; player groupChat localize ""STRS_civmenucheck_free_self"";}; server GLOBALCHAT format [localize ""STRS_civmenucheck_free_global"", name %1]; [""PrisonOut"", %1] spawn Isse_AddCrimeLogEntry; %1_reason = []; kopfgeld_%1 = 0; %1_arrest = 0;", player]) call broadcast;
		local_arrest = 0;
		["local_arrest", local_arrest] spawn ClientSaveVar;
		(format['if (rolestring == "%1") then {execVM "keyson.sqf";}', player]) call broadcast;
		isstunned=false;
		StunActiveTime=0;
    };
	
	if (_exitart == "ausbruch") then
	{
        local_arrest    = 0;
		["local_arrest", local_arrest] spawn ClientSaveVar;
		(format ["if (player == %1) then {local_arrest = 0; [""local_arrest"", local_arrest] spawn ClientSaveVar;}; %1_arrest = 0; if(!(""escaping from jail"" in %1_reason))then{%1_reason = %1_reason + [""escaping from jail""]}; %1_wanted = 1; kopfgeld_%1 = 20000; server GLOBALCHAT format [localize ""STRS_civmenucheck_breakout"", name %1]; [""PrisonEsc"", %1] spawn Isse_AddCrimeLogEntry;", player]) call broadcast;
	};
};


if (_loopart == "inventcheck") then

{

_aktionsStarter = _this select 1;

(format ['if (rolestring == "%1") then {[0, 0, 0, ["inventorycheck", %2, %3, %4]] execVM "maindialogs.sqf";};',_aktionsStarter, INV_LizenzOwner, INV_InventarArray, player]) call broadcast;

};


if (_loopart == "stealmoney") then

{

_aktionsStarter = _this select 1;
if(stolenfromtimeractive) exitwith
{
(format ['if (rolestring == "%1") then {hint "%2 has been stolen from recently";};', _aktionsStarter, player]) call broadcast;
};
_moneh  = 'moneh' call INV_GetItemAmount;
_amounttosteal = (floor(random _moneh));
["moneh", -(_amounttosteal)] call INV_AddInventoryItem;

(format ['if (rolestring == "%1") then {["moneh", %2] call INV_AddInventoryItem;};hint "%1 stole %2 from %3";',_aktionsStarter, _amounttosteal, player]) call broadcast;
stolenfromtimeractive = true;
sleep stolenfromtime;
stolenfromtimeractive = false;

};

