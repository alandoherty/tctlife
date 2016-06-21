/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

/* init */
disableSerialization;
private ["_start","_access","_perms","_group","_uid","_displayAdmin","_adminSelect","_gname","_n","_id","_haccess","_l","_gp"];

/* vehicles */
if (!Admin__vehicles) then {
	["Loading..."] call Admin_Success;
	Admin_vehicles = [];
	Admin__vehicles = true;
	_cfgvehicles = configFile >> "cfgVehicles";
	for "_i" from 0 to (count _cfgvehicles)-1 do
	{
		_vehicle = _cfgvehicles select _i;
		if (isClass _vehicle) then
		{
			_veh_type = configName _vehicle;
			_veh_name = getText (_vehicle >> "displayName");
			_veh_pic = getText (_vehicle >> "picture");
			if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (((_veh_type isKindOf "LandVehicle"))) && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute"))) then
			{
				Admin_vehicles set [count Admin_vehicles, [_veh_type,_veh_name,_veh_pic]];
			};
			if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (((_veh_type isKindOf "Air"))) && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute"))) then
			{
				Admin_vehicles set [count Admin_vehicles, [_veh_type,_veh_name,_veh_pic]];
			};
		};
	};
};

/* weapons */
if (!Admin__weapons) then {
	Admin_weapons = [];
	Admin__weapons = true;
	_cfgweapons = configFile >> "cfgWeapons";
	for "_i" from 0 to (count _cfgweapons)-1 do
	{
		_weapon = _cfgweapons select _i;
		if (isClass _weapon) then {
			_wpn_type = configName(_weapon);
			_wpn_name = getText (_weapon >> "displayName");
			_wpn_pic = getText (_weapon >> "picture");
			_wpn_ammo = getArray (_weapon >> "magazines");
			if ((getNumber (_weapon >> "scope") == 2) && (getText (_weapon >> "picture") != "")) then {
				Admin_weapons set [count Admin_weapons, [_wpn_type,_wpn_name,_wpn_pic,_wpn_ammo]];
			};
		};
	};
};

/* create dialog */
_start = createDialog "AdminDialog";

/* vars */
_access = _this select 0;
_perms = _this select 1;
_group = _this select 2;
_uid = _this select 3;

/* globalize */
Admin_access = _access;
Admin_perms = _perms;
Admin_group = _group;
Admin_uid = _uid;
Admin_immunity = Admin_group select 2;

/* dialog data */
_displayAdmin = uiNamespace getVariable "AdminDialog";
ctrlSetText [1622,format["Welcome, %1",(Admin_group select 1)]];
_adminSelect = _displayAdmin displayCtrl 1628;

/* group name */
_gname = _group select 1;

/* player */
_l = _adminSelect lbAdd format["%1 (%2)",(name player),_gname];
_adminSelect lbSetData [_l, "player"];

/* list */
{
	if (isPlayer _x && (alive _x) && !(_x == player)) then
	{
		/* data */
		_n = name _x;
		_id = (getPlayerUID _x);
		_haccess = [_id] call Admin_HasAccess;
		
		if (!_haccess) then {
			/* add */
			_l = _adminSelect lbAdd _n;
			_adminSelect lbSetData [_l, _id];
		} else {
			/* more data */
			_access = [_id] call Admin_GetAccess; 
			_gp = [_access] call Admin_GetGroup;
			_gpn = _gp select 1;
			
			/* add */
			_l = _adminSelect lbAdd format["%1 (%2)",(name _x),_gpn];
			_adminSelect lbSetData [_l, _id];
		};
	};
} forEach playableUnits;

/* commands */
[] call Admin_DisableCommands;
[_perms] call Admin_EnableCommands;