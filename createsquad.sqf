pmc = createGroup west;
_time = round time;

call compile format['
"Soldier_Medic_PMC" createUnit [getpos player, pmc, "leader = this;this setvehiclevarname ""leader"";", 1.0, "CORPORAL"];
', _time];

_name = format["leader", _time];
_name = call compile format["leader", _name];

"Soldier_Medic_PMC" createUnit [getpos player, _group, "", 1.0, "PRIVATE"];
convoysoldier setvehicleinit 'convoysoldier = this;this setVehicleVarName "convoysoldier";';
"Soldier_Medic_PMC" createUnit [getpos player, _group, "", 1.0, "PRIVATE"];
convoysoldier setvehicleinit 'convoysoldier1 = this;this setVehicleVarName "convoysoldier1";';
"Soldier_Medic_PMC" createUnit [getpos player, _group, "", 1.0, "PRIVATE"];
convoysoldier setvehicleinit 'convoysoldier2 = this;this setVehicleVarName "convoysoldier2";';
"Soldier_Medic_PMC" createUnit [getpos player, _group, "", 1.0, "PRIVATE"];
convoysoldier setvehicleinit 'convoysoldier3 = this;this setVehicleVarName "convoysoldier3";';
"Soldier_Medic_PMC" createUnit [getpos player, _group, "", 1.0, "PRIVATE"];
convoysoldier setvehicleinit 'convoysoldier4 = this;this setVehicleVarName "convoysoldier4";';

convoysoldier  dofollow convoysoldier;
convoysoldier1 dofollow convoysoldier;
convoysoldier2 dofollow convoysoldier;
convoysoldier3 dofollow convoysoldier;
convoysoldier4 dofollow convoysoldier;


pmc setbehaviour "AWARE";
pmc setCombatMode "GREEN";



leader commandMove getmarkerpos "policebase";
