_art = _this select 0;

if (_art == "use") then

{

_vcl = (nearestobjects [getpos player, ["LandVehicle", "Air", "ship"], 10] select 0);

if (player != vehicle player) exitWith {player groupChat "You must be outside the vehicle to repair it";};
if ( (typeOf(_vcl)) call INV_getitemTypeKg > 1) exitWith {player groupChat localize "STRS_inv_items_repair_wrongvcl";};
["use", "kleinesreparaturkit", 1] execVM "largerepair.sqf";

};

