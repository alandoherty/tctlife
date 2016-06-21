
RandomCode = ["*",(round(random 9)), (round(random 9)), (round(random 9)), "#"];
RandomCodeString = "";
for "_i" from 0 to ((count RandomCode) - 1) do {RandomCodeString = RandomCodeString + (format["%1",(RandomCode select _i)])};

FailCount = 0;

sleep 0.5;

enableSaving [false, false];
WEST setFriend [EAST, 0];
EAST setFriend [WEST, 0];
RESISTANCE setFriend [EAST, 0];
EAST setFriend [RESISTANCE, 0];
RESISTANCE setFriend [WEST, 0];
WEST setFriend [RESISTANCE, 0];
version        	= "1.0";
compatible     	= 1.0;
internDebug    	= false;
debug          	= false;
addonversion   	= false;
dedicatedServer = false;
copscount      	= 20;
civscount      	= 80;
playercount    	= 100;
debugarray     	= [];
StartMoney     	= 20000;
nopop	          = true;
canuseshopagain = 1;


["init"] execVM "bombs.sqf";

if (isServer) then
{
	[] execVM "admins.sqf";
	[] execVM "donators.sqf";
    [] execVM "tctmember.sqf";
    [] execVM "logger.sqf";
	["server"] execVM "bombs.sqf";
};

execVM "briefing.sqf";
call compile preprocessfile "triggers.sqf";

if(local server)then{execVM "targets.sqf";};

waitUntil { ( (time > 1) and ((alive player) or (local server)) ) };

_h = [] execVM "playerarrays.sqf";

waitUntil{scriptDone  _h};

_h = [98, rolenumber] execVM "initfuncs.sqf";

waitUntil{scriptDone  _h};

_h = [playerarray, playerstringarray, !iscop] execVM "INVvars.sqf";

waituntil{scriptDone  _h};

_h = [] execVM "bankexec.sqf";

waitUntil{scriptDone  _h};

_h = []execVM "execlotto.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "initWPmissions.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "gfx.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "animList.sqf";

waitUntil{scriptDone  _h};

_h = []	execVM "miscfunctions.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "variables.sqf";

waitUntil{scriptDone  _h};

[SkipTimeDay, SkipTimeNight, 1] execVM "skiptime.sqf";
[] execVM "weather.sqf";
setPitchBank = compile preprocessfile "setPitchBank.sqf";
publicvariable "station1robbed";
publicvariable "station2robbed";
publicvariable "station3robbed";
publicvariable "station4robbed";
publicvariable "station5robbed";
publicvariable "station6robbed";
publicvariable "station7robbed";
publicvariable "station8robbed";
publicvariable "station9robbed";


if(!dedicatedserver) then

{

["clientloop"] execVM "clientloop.sqf";
[0,0,0,["clientloop"]] execVM "gangs.sqf";
[] execVM "respawn.sqf";
[] execVM "itemactions.sqf";
[] execVM "petrolactions.sqf";
[] execVM "nametags.sqf";
[] execVM "initplayer.sqf";
[2] execVM "markers.sqf";
[] execVM "salaries.sqf";
[] execVM "actions.sqf";
[] execVM "motd.sqf";
[] execVM "pistolControl.sqf";
[] execVM "rifleControl.sqf";
[] execVM "moo.sqf";
[] execVM "antilock.sqf";
[] execVM "motdts.sqf";
["client"] execVM "bombs.sqf";

for [{_i=0}, {_i < (count INV_ItemFabriken)}, {_i=_i+1}] do {_i execVM "facqueue.sqf"};

player addEventHandler ["fired", {["fired", (_this select 4), (_this select 1)] execVM "stun.sqf";}];
player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];

waituntil{vehicle player == player};
player addEventHandler ["fired",{_this execVM "fired.sqf"}];
[]spawn {
while{true}do
{
	sleep 1;
	if(player getVariable "flashed" and isciv) then
	{
		_fadeInTime   = 0;
		_fadeOutTime  = 5;
		if (not(alive player)) exitWith {};
		titleCut ["","WHITE OUT",0];
		sleep _fadeOutTime;
		titleCut ["","WHITE IN",0];
		sleep 1;
		player setVariable ["flashed",false, true];

	};
};
};

onKeyPress = compile preprocessFile "onKeyPress.sqf";
waituntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];

};

if (isServer) then

{

["clientloop"]execVM "commonloop.sqf";
[60,0,true] execVM "cly_removedead.sqf";
[0, 0, 0, ["serverloop"]] execVM "mayorserverloop.sqf";
[0, 0, 0, ["serverloop"]] execVM "chiefserverloop.sqf";
[0, 0, 0, ["serverloop"]] execVM "gangsserverloop.sqf";
[] execVM "druguse.sqf";
[] execVM "drugreplenish.sqf";
["Mi17_medevac_CDF"] execVM "copchoprespawn.sqf";
["MH60S"] execVM "copchoprespawn.sqf";
[] execVM "robpool.sqf";
[] execVM "hunting.sqf";
[] execVM "setObjectPitches.sqf";

[] execVM "stationrobloop.sqf";
station1money = 5000;
publicvariable "station1money";

station2money = 5000;
publicvariable "station2money";

station3money = 5000;
publicvariable "station3money";

station4money = 5000;
publicvariable "station4money";

station5money = 5000;
publicvariable "station5money";

station6money = 5000;
publicvariable "station6money";

station7money = 5000;
publicvariable "station7money";

station8money = 5000;
publicvariable "station8money";

station9money = 5000;
publicvariable "station9money";

for [{_i=0}, {_i < (count INV_ItemShops)}, {_i=_i+1}] do {((INV_ItemShops select _i) select 0) execVM "nomove.sqf"; sleep 0.2;};
for [{_i=0}, {_i < (count workplacejob_deliveryflagarray)}, {_i=_i+1}] do {(workplacejob_deliveryflagarray select _i) execVM "nomove.sqf"; sleep 0.2;};

};


gcrsrope1 = "none";
gcrsrope2 = "none";
gcrsrope3 = "none";
gcrsrope4 = "none";
gcrsrope5 = "none";
gcrsrope6 = "none";
gcrsrope7 = "none";
gcrsrope8 = "none";
gcrsrope9 = "none";
gcrsrope10 = "none";
gcrsrope11 = "none";
gcrsrope12 = "none";
gcrsrope13 = "none";
gcrsrope14 = "none";
gcrsrope15 = "none";
gcrsrepelvehicle = "none";
gcrsropedeployed = "false";
gcrsdeployropeactionid = 0;
gcrsdropropeactionid = 0;
gcrsplayerrepelactionid = 0;
gcrsplayerveh = "none";
gcrspilotvehicle = "none";
gcrsrapelvehiclearray = ["MH6J_EP1", "UH1H_TK_GUE_EP1", "UH60M_EP1", "BAF_Merlin_HC3_D", "CH_47F_EP1", "Mi17_UN_CDF_EP1", "Ka60_PMC"];
gcrsrapelheloarray = [];
gcrsplayerveharray = [];

execVM "BTK\Cargo Drop\Start.sqf";

_h = [] execVM "tct\init.sqf";
waitUntil{scriptDone  _h};