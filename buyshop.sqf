_this = _this select 3;
_art   = (_this select 0);
_num   = (_this select 1);
_moneh  = 'moneh' call INV_GetItemAmount;

if (_art == "immobilie") then

{

_cost = ((BuyAbleBuildingsArray select _num) select 3);
_name = ((BuyAbleBuildingsArray select _num) select 0);

if (_name in BuildingsOwnerArray) exitWith {player groupChat localize "STRS_alreadygotshop";};
if (_moneh < _cost)                exitWith {player groupChat localize "STRS_kein_moneh";};
['moneh', -(_cost)] call INV_AddInventoryItem;
player groupChat format[localize "STRS_gotshop", rolestring, (_cost call ISSE_str_IntToStr)];
BuildingsOwnerArray = BuildingsOwnerArray + [_name];
["BuildingsOwnerArray", BuildingsOwnerArray] spawn ClientSaveVar;

};

