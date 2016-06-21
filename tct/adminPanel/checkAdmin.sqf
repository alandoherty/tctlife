/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

private ["_access","_haccess"];

/* uid */
_uid = getPlayerUID player;
if (!isMultiplayer) then { _uid = "124947142"; };

_haccess = [_uid] call Admin_HasAccess;
if (_haccess) then {
	/* load access */
	_access = [_uid] call Admin_GetAccess;
	_perms = [_access] call Admin_GetPerms;
	_group = [_access] call Admin_GetGroup;
	
	/* menu */
	[_access,_perms,_group,_uid] execVM format["%1adminPanel\adminMenu.sqf",adminMenu_root];
};