//Modded For TL:R by M5iC

_item    = _this select 0;
_infos   = _item call INV_getitemArray;

_carsinv   = (carshop1 call INV_getshopArray) select 4;
_airinv    = (airshop call INV_getshopArray) select 4;
_truckinv  = (truckshop call INV_getshopArray) select 4;

if ([_item, _carsinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//===================== CAR SHOP 1====================================

_shopnum      = carshop1 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["CarShop1 for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//===================== CAR SHOP 2====================================

_shopnum      = carshop2 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [4, format["CarShop2 for $%1", _preis]];
buttonSetAction [4, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//=====================CAR SHOP 3====================================

_shopnum      = carShop3 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [5, format["CarShop3 for $%1", _preis]];
buttonSetAction [5, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//=====================CAR SHOP 4====================================

_shopnum      = carShop4 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [6, format["CarShop4 for $%1", _preis]];
buttonSetAction [6, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//=====================CAR SHOP 5====================================

_shopnum      = carShop5 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [7, format["CarShop5 for $%1", _preis]];
buttonSetAction [7, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//=====================CAR SHOP 6====================================

_shopnum      = carShop6 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [8, format["CarShop6 for $%1", _preis]];
buttonSetAction [8, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//=====================CAR SHOP 7====================================

_shopnum      = carShop7 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [9, format["CarShop7 for $%1", _preis]];
buttonSetAction [9, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//=====================CAR SHOP 8====================================

_shopnum      = carShop8 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [10, format["CarShop8 for $%1", _preis]];
buttonSetAction [10, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

};

if ([_item, _airinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//===================== AIR SHOP 1====================================

_shopnum      = airshop call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["AirShop for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//===================== AIR SHOP 2====================================

_shopnum      = airshop2 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [4, format["AirShop2 for $%1", _preis]];
buttonSetAction [4, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

};

if ([_item, _truckinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute1")) exitWith {hint "Dialog Error!"};

//=====================TRUCK SHOP 1====================================

_shopnum      = truckshop call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

passvararray  = [_preis, _item, _stock, _maxstock, _shopnum, truckshop];

ctrlSetText [3, format["TruckShop for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//=====================TRUCK SHOP 2====================================

_shopnum      = truckshop2 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

passvararray  = [_preis, _item, _stock, _maxstock, _shopnum, truckshop];

ctrlSetText [4, format["TruckShop2 for $%1", _preis]];
buttonSetAction [4, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//===================== BOAT SHOP ====================================

_shopnum      = boatshop call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["boatshop for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

};


player groupchat "No shops will buy the selected vehicle.";