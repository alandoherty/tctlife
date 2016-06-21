_moneh = 'moneh' call INV_GetItemAmount;

if (_moneh < 75000) exitWith {role groupChat "Not Enough Money"};

if (currecred) exitWith {role groupChat "Already recruiting!";};

if (count (units group player) >= 8) exitWith {role groupChat "Squad Is Full"};

if (playerSide != east) exitwith {role groupChat "Only TLA commanders can recruit soldiers here"};

['moneh', -(75000)] call INV_AddInventoryItem;

currecred = true;

role groupChat "Recruiting soldier";

sleep 5;

_redbackup = "TK_Soldier_EP1" createUnit [position player, group player];

currecred = false;