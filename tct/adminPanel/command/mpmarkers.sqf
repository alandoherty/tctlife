/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

_player = _this select 0;
if (_player != player) then {
	["You can only run this command on yourself!"] call Admin_Error;
	exit;
};

if (isnil "pm") then {pm = 0;}; if (pm == 0) then {pm = 1; ["Player Tags Activated!"] call Admin_Success; ["Tags On", _player] call Admin_Log;} else {pm = 0; ["Player Tags Deactivated!"] call Admin_Success;["Tags Off", _player] call Admin_Log;};
setGroupIconsVisible [true, true];
while {pm == 1} do
{
	{
		if (getPlayerUID _x != "") then
		{
			clearGroupIcons group _x;
			group _x addGroupIcon ["x_art"];
			group _x setGroupIconParams [[1, 0.35, 0, 1], format ["%1 (%2m)", name _x, round (_x distance player)], 0.7, true];
		};
	} forEach entities "AllVehicles";
	sleep 1;
};
{clearGroupIcons group _x;} forEach entities "AllVehicles";