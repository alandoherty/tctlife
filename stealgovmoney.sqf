// written by Gman
//script called by steal money addaction for government convoy
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to conduct this robbery!";
	}; 
convoytruck removeAction stealgovmoney;
player groupchat format ["You got $%1 extra for stealing the government funds!", govconvoythiefbonus];
['moneh', govconvoythiefbonus] call INV_AddInventoryItem;
(format['if(!("Thieft of government funds" in %1_reason))then{%1_reason = %1_reason + ["Thieft of Government funds"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 400000;', player]) call broadcast;
moneyintruck = false;
publicvariable "moneyintruck";