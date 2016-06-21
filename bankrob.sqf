_this = _this select 3;
_art  = _this select 0;
_safe = _this select 1;

if (_art == "ausrauben") then

{

call compile format["local_cash = robpool%1", _safe];

if(local_cash < 50000)exitwith{player groupchat "this safe has recently been stolen from and is empty"};

if(!robenable)exitwith{player groupchat "you are already robbing the bank"};
if(!(call INV_isArmed) and !debug)exitWith{player groupChat localize "STRS_bank_rob_noweapon";};
robenable = false;
call compile format["robpool%1 = 0;publicvariable ""robpool%1"";", _safe];
player groupChat format[localize "STRS_bank_rob_info", (robb_money call ISSE_str_IntToStr)];

format['[0,1,2,["opfer", %1, %2]] execVM "bankrob.sqf";', _safe, local_cash] call broadcast;

player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};

if (alive player) then

	{

	['moneh', local_cash] call INV_AddInventoryItem;
	player groupChat format[localize "STRS_bank_rob_success"];
	[local_cash] spawn Bank_Rob_End_Script;

	};
/*Debugging (1/24/2012 IsHoOtYoUnOw)	
hintSilent format ["Money Stolen: %1", local_cash];	
*/
stolencash = stolencash + local_cash;

local_useBankPossible = false;
robenable = true;
rblock = rblock + ((local_cash/50000)*60);
_rblock = rblock;

sleep 2;

if(_rblock != rblock)exitwith{};

for [{rblock}, {rblock > -1}, {rblock=rblock-1}] do {sleep 1;};

local_useBankPossible = true;
stolencash = 0;
rblock	   = 0;


};


if (_art == "opfer") then

{

_robpool = _this select 2;

titleText [localize "STRS_bank_rob_titlemsg", "plain"];

_safe say "Bank_alarm";
copbase1 say "Bank_alarm";
sleep 12;
_safe say "Bank_alarm";
copbase1 say "Bank_alarm";
sleep 12;
_safe say "Bank_alarm";
copbase1 say "Bank_alarm";
sleep 12;
_safe say "Bank_alarm";
copbase1 say "Bank_alarm";

sleep 5;

["Bank", "civilian", _robpool] spawn Isse_AddCrimeLogEntry;
server globalchat format["The thief stole $%1!", _robpool];

sleep 4;

//_percentlost = _robpool/1000000;

//if(_percentlost > Maxbankrobpercentlost)then{_percentlost == Maxbankrobpercentlost};

_verlust = round(bankaccount*Maxbankrobpercentlost);
_verlustA = round(bankaccount*MaxbankrobpercentlostA);
_verlustB = round(bankaccount*MaxbankrobpercentlostB);
/*Debugging (1/24/2012 IsHoOtYoUnOw)
if(('bankversicherung' call INV_GetItemAmount) == 0)then
{
	hintSilent format ["Money Lost: %1", _verlust];
};
*/

if ((bankaccount <= _verlust) and (bankaccount >= 1) and (('bankversicherung' call INV_GetItemAmount) == 0)) then

	{

	bankaccount = 0;
	player groupChat localize "STRS_bank_rob_allmoneylost";

	};
//Takes 5 percent from bankaccount if player has less than 100k (1/24/2012 IsHoOtYoUnOw)
if((bankaccount >  _verlust) and (bankaccount <= 99999) and (('bankversicherung' call INV_GetItemAmount) == 0)) then

	{

	bankaccount = bankaccount - _verlust;
	player groupChat format[localize "STRS_bank_rob_somemoneylost", (_verlust call ISSE_str_IntToStr), (bankaccount call ISSE_str_IntToStr)];

	};
//Takes 10 percent from bankaccount if player has 100k - 999k (1/24/2012 IsHoOtYoUnOw)	
if((bankaccount >  _verlust) and (bankaccount >= 100000) and (bankaccount <= 999999) and (('bankversicherung' call INV_GetItemAmount) == 0)) then

	{

	bankaccount = bankaccount - _verlustA;
	player groupChat format[localize "STRS_bank_rob_somemoneylost", (_verlustA call ISSE_str_IntToStr), (bankaccount call ISSE_str_IntToStr)];

	};
//Takes 20 percent from bankaccount if player has 1mil or more (1/24/2012 IsHoOtYoUnOw)
if((bankaccount >  _verlust) and (bankaccount >= 1000000) and (('bankversicherung' call INV_GetItemAmount) == 0)) then

	{

	bankaccount = bankaccount - _verlustB;
	player groupChat format[localize "STRS_bank_rob_somemoneylost", (_verlustB call ISSE_str_IntToStr), (bankaccount call ISSE_str_IntToStr)];

	};	

if (('bankversicherung' call INV_GetItemAmount) > 0) then

	{

	player groupChat localize "STRS_bank_rob_lostnomoney";
	['bankversicherung', -(1)] call INV_AddInventoryItem;

	};

};

