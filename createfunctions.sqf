INV_CreateGunboxLocal = {};

INV_DialogPlayers =

{

private ["_c", "_Fid", "_Fname", "_Fingame", "_Findex", "_Flistlen", "_Feigenenum"];
_Fid        = _this select 0;
_Fname      = _this select 1;
_Fingame    = _this select 2;
_Findex     = 0;
_Flistlen   = 0;
_Feigenenum = -1;

for [{_c=0}, {_c < (count INV_PLAYERSTRINGLIST)}, {_c=_c+1}] do

	{

	_Fspieler = INV_PLAYERSTRINGLIST select _c;

	if ( ((_Fingame) or (_Fspieler call ISSE_UnitExists)) ) then

		{

		if (_Fname) then

			{

			_Findex = lbAdd [_Fid, format ["%1 - (%2)", _Fspieler, name (call compile _Fspieler)]];

			}
			else
			{

			_Findex = lbAdd [_Fid, _Fspieler];

			};

			lbSetData [_Fid, _Findex, format["%1", _c]];
			if (_Fspieler == INV_ROLESTRING) then {_Feigenenum = _Flistlen;};
			_Flistlen = _Flistlen + 1;

		};

	};

[_Flistlen, _Feigenenum]

};

INV_CreateVehicle =

{

private ["_classname", "_position","_dir"];
_classname = _this select 0;
_logic	   = _this select 1;

call compile format ['

newvehicle = _classname createVehicle %4;
if !(isplayer _logic) then
{
	newvehicle setpos %4;
};
newvehicle setdir %5;
newvehicle setVehicleInit "
this setVehicleVarName ""vehicle_%1_%2"";
vehicle_%1_%2 = this;
clearWeaponCargo this;
clearMagazineCargo this;
newvehicle lock true;
";
processInitCommands;
INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
"INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getdir _logic];


if (_classname == "Ka60_PMC") then
{
	hint "Reconfiguring helicopter armament...";
	newvehicle removeweapon "57mmLauncher";
	newvehicle addweapon "CMFlareLauncher";
	newvehicle addmagazine "60Rnd_CMFlareMagazine";
	newvehicle addweapon "M134";
	newvehicle addmagazine "4000Rnd_762x51_M134";
};

if (_classname == "UH1Y") then
{
	hint "Reconfiguring helicopter armament...";
	newvehicle removeweapon "FFARLauncher_14";
	newvehicle removeweapon "M134";
	newvehicle removeweapon "M134";
	newvehicle removemagazine "4000Rnd_762x51_M134";
	newvehicle removemagazine "4000Rnd_762x51_M134";
};


if (_classname == "AH6J_EP1") then
{
	hint "Reconfiguring helicopter armament...";
	newvehicle removeweapon "FFARLauncher_14";
	newvehicle addweapon "CMFlareLauncher";
	newvehicle addmagazine "60Rnd_CMFlareMagazine";
};

if (_classname == "An2_2_TK_CIV_EP1") then
{
	hint "Reconfiguring plane armament...";
	newvehicle addweapon "M240_veh";
	newvehicle addmagazine "100Rnd_762x51_M240";newvehicle addmagazine "100Rnd_762x51_M240";newvehicle addmagazine "100Rnd_762x51_M240";newvehicle addmagazine "100Rnd_762x51_M240";newvehicle addmagazine "100Rnd_762x51_M240";
};

if (_classname == "An2_TK_EP1") then
{
	newvehicle addweapon "DSHKM";
	newvehicle addmagazine "150Rnd_127x107_DSHKM";newvehicle addmagazine "150Rnd_127x107_DSHKM";newvehicle addmagazine "150Rnd_127x107_DSHKM";newvehicle addmagazine "150Rnd_127x107_DSHKM";
};

if (_classname == "Su25_TK_EP1") then
{
	hint "Demilitarizing plane...";
	newvehicle removeweapon "GSh301";
	newvehicle removeweapon "AirBombLauncher";
	newvehicle removeweapon "R73Launcher_2";
	newvehicle removeweapon "S8Launcher";
	newvehicle removemagazine "120Rnd_CMFlareMagazine";
	newvehicle addmagazine "240Rnd_CMFlare_Chaff_Magazine";
    
};

if (_classname == "SUV_TK_CIV_EP1") then
{
	newvehicle setVehicleInit 'this setObjectTexture [0, "images\policesuv.paa"]'; processInitCommands;
};

if (_classname == "VolhaLimo_TK_CIV_EP1") then
{
	newvehicle setVehicleInit 'this setObjectTexture [0, "images\volha_black_eciv_conew.paa"]'; processInitCommands;
};

if (_classname == "SUV_UN_EP1") then
{
	newvehicle setVehicleInit 'this setObjectTexture [0, "images\suvdonator.paa"]'; processInitCommands;
};

if (_classname == "L39_TK_EP1") then
{
	hint "Reconfiguring plane armament...";
	newvehicle removeweapon "GSh23L_L39";
	newvehicle removeweapon "57mmLauncher";
	newvehicle addweapon "KPVT";
	newvehicle addmagazine "500Rnd_145x115_KPVT";
	newvehicle addweapon "CMFlareLauncher";
	newvehicle addmagazine "60Rnd_CMFlareMagazine";
};

if (_classname == "BTR40_MG_TK_INS_EP1") then
{
	hint "Reconfiguring vehicle armament...";
	newvehicle removemagazine "50Rnd_127x107_DSHKM";
	newvehicle removemagazine "50Rnd_127x107_DSHKM";
	newvehicle removemagazine "50Rnd_127x107_DSHKM";
	newvehicle removemagazine "50Rnd_127x107_DSHKM";
	newvehicle removemagazine "50Rnd_127x107_DSHKM";
	newvehicle removemagazine "50Rnd_127x107_DSHKM";
	newvehicle addmagazine "150Rnd_127x107_DSHKM";
	newvehicle addmagazine "150Rnd_127x107_DSHKM";
	newvehicle addmagazine "150Rnd_127x107_DSHKM";
};

if (_classname == "Ka137_MG_PMC") then
{
	hint "Reconfiguring vehicle armament...";
	newvehicle removemagazine "200Rnd_762x54_PKT";
	newvehicle removemagazine "200Rnd_762x54_PKT";
	newvehicle addmagazine "1500Rnd_762x54_PKT";
};

if ((_classname == "F35B") and (getPlayerUID vehicle player == "1039168")) then
{
	hint "USS Enterprise cleared for takeoff...";
	frigate = "Land_Destroyer" createVehicle getPos convspawn5;
	frigate attachTo [newvehicle,[0,-1.5,0.2]];
	frigate setdir 180;
	flag1 = "FlagCarrierOPFOR_EP1" createVehicle getPos convspawn5;
	flag1 attachTo [newvehicle,[0,83,16]];
	flag2 = "FlagCarrierOPFOR_EP1" createVehicle getPos convspawn5;
	flag2 attachTo [newvehicle,[-6,60,12]];
	flag3 = "FlagCarrierOPFOR_EP1" createVehicle getPos convspawn5;
	flag3 attachTo [newvehicle,[6,60,12]];
	flag4 = "FlagCarrierOPFOR_EP1" createVehicle getPos convspawn5;
	flag4 attachTo [newvehicle,[0,10,25]];
	flag5 = "FlagCarrierOPFOR_EP1" createVehicle getPos convspawn5;
	flag5 attachTo [newvehicle,[0,-5,26]];
	flag6 = "FlagCarrierOPFOR_EP1" createVehicle getPos convspawn5;
	flag6 attachTo [newvehicle,[7,-53,13]];
	flag7 = "FlagCarrierOPFOR_EP1" createVehicle getPos convspawn5;
	flag7 attachTo [newvehicle,[-7,-53,13]];
	flag8 = "FlagCarrierOPFOR_EP1" createVehicle getPos convspawn5;
	flag8 attachTo [newvehicle,[8,-78,8]];
	flag9 = "FlagCarrierOPFOR_EP1" createVehicle getPos convspawn5;
	flag9 attachTo [newvehicle,[-8,-78,8]];
	player moveInDriver newvehicle;
};
	_veh = newvehicle;
	_veh
};

INV_CreateWeapon =

{

private["_class", "_menge", "_crate"];
_class = _this select 0;
_menge = _this select 1;
_crate = _this select 2;
_crate setDamage 0;

_crate setvehicleinit format["
this addweaponCargo [""%1"",%2];
", _class, _menge];
processInitCommands;

};

INV_CreateMag =

{

private["_class", "_menge", "_crate"];
_class = _this select 0;
_menge = _this select 1;
_crate = _this select 2;
_crate setDamage 0;

_crate setvehicleinit format["
this addmagazineCargo [""%1"",%2];
", _class, _menge];
processInitCommands;

};

INV_CreateItem =

{

private["_class", "_menge", "_stor"];
_class = _this select 0;
_menge = _this select 1;
_stor  = _this select 2;
[_class, _menge, _stor] call INV_AddItemStorage;

};
