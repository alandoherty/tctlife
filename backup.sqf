_moneh = 'moneh' call INV_GetItemAmount;

if (_moneh < 100000) exitWith {role groupChat "Not Enough Money"};

if (curreccop) exitWith {role groupChat "Already recruiting!";};

if (count (units group player) >= 8) exitWith {role groupChat "Squad Is Full";};

['moneh', -(100000)] call INV_AddInventoryItem;

curreccop = true;

role groupChat "Recruiting soldier";

sleep 5;

_backup = "UN_CDF_Soldier_EP1" createUnit [position player, group player];

curreccop = false;