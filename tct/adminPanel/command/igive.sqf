_player = _this select 0;
AdminItemGive_lastPlayer = _player;
closeDialog 1620;
_itemDialog = createDialog "AdminItemGive";
{
	_item = (_x select 2);
	_data = (_x select 4);
	_weight = (_data select 0);
	_index = lbAdd [1695,format["%1 (%2kg)",(_item select 1),_weight]];
	lbSetData [1695, _index, (_x select 0)];
} forEach INV_AlleItemsArray;