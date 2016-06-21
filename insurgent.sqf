_moneh = 'moneh' call INV_GetItemAmount;

if (_moneh < 50000) exitWith {role groupChat "Not Enough Money"};

if (currecins) exitWith {role groupChat "Already recruiting!";};

if (count (units group player) >= 8) exitWith {role groupChat "Squad Is Full"};

if (playerSide != resistance) exitwith {role groupChat "Only resistance leaders can recruit fighters here"};

currecins = true;

['moneh', -(50000)] call INV_AddInventoryItem;

role groupChat "Recruiting fighter";

sleep 5;

_insurgent = "TK_GUE_Soldier_EP1" createUnit [position player, group player];

currecins = false;