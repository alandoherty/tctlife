_vcl = _this select 0;
_art = _this select 1;

if(_art == "impound")then

{

if ((count crew _vcl) > 0) exitWith {player groupChat "The vehicle is not empty!"};
if(_vcl distance impoundarea2 < 30)exitwith{player groupchat "the vehicle is already impounded!"};
if(_vcl iskindof "air")exitwith{player groupchat "you cannot impound this vehicle!"};
if(!alive _vcl)exitwith{player groupchat "you cannot impound this wreck!"};

_incarpark = false;

{if ((player distance (_x select 0)) < (_x select 1)) then {_incarpark = true};} forEach INV_VehicleGaragen;

if(_incarpark)exitwith{player groupchat "this vehicle is in a carpark. you cannot impound it!"};

_vcl setpos [(getPos impoundarea1 select 0)-(random 50)+(random 50), (getPos impoundarea1 select 1)-(random 50)+(random 50), getPos impoundarea1 select 2];
_moneh = 500;
['moneh', _moneh] call INV_AddInventoryItem;
player groupChat localize "STRS_inventar_impound_success";
player groupChat "The government of Chernarus sent you $500 for cleaning the streets of Chernarus!";

format['hint format[localize "STRS_inventar_impound_gesehen", "%1", "(%2)", %3]', name player, player, _vcl] call broadcast;

_vcl setdamage 0;
_vcl engineOn false;
_vcl setvehiclelock "locked";

};

if(_art == "buy")then

{

_moneh = "moneh" call INV_getitemamount;

if(_moneh < impoundpay)exitwith{player groupchat "you do not have enough money"};

if(iscop and count (nearestobjects [getpos ccarspawn,["Ship","car","motorcycle","truck"], 3]) > 0)exitwith{player groupchat "there is a vehicle blocking the spawn!"};

["moneh", -impoundpay] call INV_addinventoryitem;

_vcl = call compile format["%1", _vcl];

if(isciv)then

	{

	_vcl setpos [(getPos impoundarea2 select 0)-(random 10)+(random 10), (getPos impoundarea2 select 1)-(random 10)+(random 10), getPos impoundarea2 select 2];
	_vcl setdir getdir impoundarea2;

	}else{

	_vcl setpos getpos ccarspawn;
	_vcl setdir getdir ccarspawn;

	};

player groupchat format["You payed the $%1 fine and retrieved your vehicle!", impoundpay];

};





