/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

_h = [] execVM "tct\military.sqf";
waitUntil{scriptDone  _h};

_h = [] execVM "tct\debug.sqf";
waitUntil{scriptDone  _h};

_h = [] execVM "tct\merlinAirlift.sqf";
waitUntil{scriptDone  _h};

_h = [] execVM "tct\adminPanel\init.sqf";
waitUntil{scriptDone  _h};

[] spawn {
	waitUntil {(!isNull Player) and (alive Player) and (player == player)};
	waituntil {!(isNull (findDisplay 46))};
	5 cutRsc ["TCTWatermark","PLAIN"];
	((uiNamespace getVariable "TCTWatermark") displayCtrl 1) ctrlSetText "tctgames.com";
};

_h = [] execVM "tct\gearWait.sqf";

if (!isServer) then {
	ismil = (getPlayerUID player) call TCT_MiIs;
};