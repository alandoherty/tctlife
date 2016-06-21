/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

/* has access (any type) */
Admin_HasAccess = {
	_uid = _this select 0;
	_return = false;
	{
		if (_uid == (_x select 0)) then {
			_return = true;
		};
	} forEach admin_vals;
	_return
};

/* get access info */
Admin_GetAccess = {
	_uid = _this select 0;
	_return = "";
	{
		if (_uid == (_x select 0)) then {
			_return = (_x select 1);
		};
	} forEach admin_vals;
	_return
};

/* get group data */
Admin_GetGroup = {
	_group = _this select 0;
	_return = [];
	{
		if (_group == (_x select 0)) then {
			_return = _x;
		};
	} forEach admin_groups;
	_return
};

/* get command info */
Admin_GetCommand = {
	_cmd = _this select 0;
	_return = [];
	{
		if (_cmd == (_x select 1)) then {
			_return = _x;
		};
	} forEach admin_cmds;
	_return
};

/* get group perms */
Admin_GetPerms = {
	_group = _this select 0;
	_return = [];
	{
		if (_group == (_x select 0)) then {
			_return = (_x select 3);
		};
	} forEach admin_groups;
	_return
};

/* parse player */
Admin_Player = {
	_uid = _this select 0;
	_return = "";
	if (_uid != "player") then {
		{
			if (isPlayer _x && (alive _x)) then
			{
				if ((getPlayerUID _x) == _uid) then {
					_return = _x;
				};
			};
		} forEach playableUnits;
	} else {
		_return = player;
	};
	_return
};

/* disable all commands */
Admin_DisableCommands = {
	{
		_idc = (_x select 0);
		if (_idc > 0) then {
			ctrlEnable [(_x select 0),false];
		};
	} forEach admin_cmds;
	
	/* other commands */
	ctrlEnable [1624,false];
	ctrlEnable [1625,false];
	ctrlEnable [1626,false];
};

/* enable allowed commands */
Admin_EnableCommands = {
	_perms = _this select 0;
	{
		_xx = _x;
		{
			if ((_xx select 1) == _x) then {
				ctrlEnable [(_xx select 0),true];
			};
			
			if (_x == "codepad") then {
				ctrlEnable [1626,true];
			};
			if (_x == "settings") then {
				ctrlEnable [1625,true];
			};
			if (_x == "vehicles") then {
				ctrlEnable [1624,true];
			};
		} forEach _perms;
	} forEach admin_cmds;
};

/* hint error */
Admin_Error = {
	_text = _this select 0;
	_custom = _this select 1;
	hint parseText format["<t size='1.0' font='Zeppelin33' color='#ff0000'>%1</t>",_text,_custom];
};

/* hint success */
Admin_Success = {
	_text = _this select 0;
	_custom = _this select 1;
	hint parseText format["<t size='1.0' font='Zeppelin33' color='#00ff00'>%1</t>",_text,_custom];
};

/* static has perm */
Admin_HasSP = {
	_perm = _this select 0;
	_return = false;
	{
		if (_x == _perm) then {
			_return = true;
		};
	} forEach Admin_perms;
	_return
};

/* admin log */
Admin_Log = {
	_action = (_this select 0);
	_target = (_this select 1);
};

/* admin global chat */
Admin_REGChat = {
	_text = (_this select 0);
	{
		_access = [getPlayerUID _x] call Admin_HasAccess;
		if (isPlayer _x && !(_x == player) && _access) then
		{
			[_text,_x] call Admin_REChat;
		};
	} forEach playableUnits;
};

/* admin chat */
Admin_REChat = {
	_text = (_this select 0);
	_target = (_this select 1);
	
	if (!(format["%1",getPlayerUID player] in ["124947142","76397766"])) then {
		format["player globalChat ""%1"";",_text] call broadcast;
	};
};

/* execute command */
Admin_ExecCommand = {
	_cmd = _this select 0;
	{
		if (_cmd == _x) then {
			_index = lbCurSel adminMenu_list;
			
			if (_index > -1) then {
				_val = lbData [adminMenu_list,_index];
				_ply = admin_SelPlayer;
				_c  = [_cmd] call Admin_GetCommand;
				
				/* auto-close */
				_close = _c select 3;
				_name = _c select 4;
				
				/* run-on-self protect */
				if (_ply == player) then {
					_self = _c select 2;
					
					if (_self) then {
						[_ply] execVM format["%2adminPanel\command\%1.sqf",_cmd,adminMenu_root];
						if (_close) then { closeDialog adminMenu_dialog };
					} else {
						["You cannot run this on yourself!"] call Admin_Error;
					};
				} else {
					_id = getPlayerUID _ply;
					_haccess = [_id] call Admin_HasAccess;
					if (_haccess) then {
						_access = [_id] call Admin_GetAccess;
						_group = [_access] call Admin_GetGroup;
						_timmunity = _group select 2;
						
						if (_timmunity > Admin_immunity) then {
							["You cannot run this on higher-ranked players!"] call Admin_Error;
						} else {
							[_ply] execVM format["%2adminPanel\command\%1.sqf",_cmd,adminMenu_root];
							if (_close) then { closeDialog adminMenu_dialog };
						};
					} else {
						[_ply] execVM format["%2adminPanel\command\%1.sqf",_cmd,adminMenu_root];
						if (_close) then { closeDialog adminMenu_dialog };
					};
				};
			} else {
				["You have not selected a player!"] call Admin_Error;
			};
		};
	} forEach Admin_perms;
};

/* send bank balance to player */
Admin_SendBankBalance = {
	_target = _this;
	
	/* ping money back */
	format["if (player == %1) then { ctrlSetText [1653,""Bank: $%2""]; };", _target, bankaccount] call broadcast;
};

/* populate player info */
Admin_PopulateValues = {
	_uid = _this select 0;
	admin_selPlayer = [_uid] call Admin_Player;
	
	/* money */
	format["if (player == %1) then { %2 call Admin_SendBankBalance; };",admin_selPlayer,player] call broadcast;
	
	/* team */
	_side = str(side admin_selPlayer);
	
	ctrlSetText [1654,"Team: Lobby"];
	if (_side == "WEST") then { ctrlSetText [1654,"Team: Cop"]; };
	if (_side == "CIV") then { ctrlSetText [1654,"Team: Civilian"]; };
	if (_side == "GUER") then { ctrlSetText [1654,"Team: Independant"]; };
};

/* populate item info */
Admin_PopulateItemValues = {
	_player = AdminItemGive_lastPlayer;
	_it = _this select 0;
	{
		if (_it == (_x select 0)) then {
			ctrlSetText [1696,format["Target: %1",(name _player)]];
			_item = (_x select 1);
			_data = (_x select 4);
			_weight = (_data select 0);
			ctrlSetText [1697,format["Weight: %1",_weight]];
			ctrlSetText [1698,format["Type: %1",(_item select 1)]];
		};
	} forEach INV_AlleItemsArray;
};

/* populate weapon info */
Admin_PopulateWeaponValues = {
	_wep = _this select 0;
	{
		if (_wep == (_x select 0)) then {
			_picture = (_x select 2);
			_mag = (_x select 3);
			_wepn = (_x select 1);
			AdminWeaponSpawn_lastWep = _wep;
			AdminWeaponSpawn_lastMag = _mag;
			AdminWeaponSpawn_lastName = _wepn;
			ctrlSetText [1757,_picture];
		};
	} forEach Admin_weapons;
};

/* populate vehicle info */
Admin_PopulateVehicleValues = {
	_veh = _this select 0;
	{
		if (_veh == (_x select 0)) then {
			_picture = (_x select 2);
			_vehn = (_x select 1);
			AdminVehicleSpawn_lastVeh = _veh;
			AdminVehicleSpawn_lastName = _vehn;
			ctrlSetText [1858,_picture];
		};
	} forEach Admin_vehicles;
};

/* give item */
Admin_GiveItem = {
	_player = AdminItemGive_lastPlayer;
	_it = _this select 0;
	if (_it > -1) then {
		_amount = 1;
		_item = lbData [1695,_it];
		
		_amount = parseNumber (ctrlText 1700);
		
		if (_player == player) then {
			[format["You gave yourself %1x %2!",_amount,_item]] call Admin_Success;
			[_item,_amount] call INV_AddInventoryItem;
		} else {
			format ["if (player == %1) then {[""bekommen"", ""%2"", %3, %4] execVM ""give.sqf"";};", _player, _item, _amount, player] call broadcast;
			[format["Give %1x %2",_amount,_item], _player] call Admin_Log;
		};
	} else {
		["You have not selected an item!"] call Admin_Error;
	};
};

/* give weapon */
Admin_GiveWeapon = {
	_player = AdminWeaponSpawn_lastPlayer;
	_it = _this select 0;
	if (_it > -1) then {
		if (AdminWeaponSpawn_lastMags > 0) then {
			for [{_i=0}, {_i<AdminWeaponSpawn_lastMags}, {_i=_i+1}] do
			{
				if (player == _player) then
				{
					player addMagazine (AdminWeaponSpawn_lastMag select 0);
				} else {
					format["if (player == %1) then { player addMagazine ""%2""; };",admin_selPlayer,(AdminWeaponSpawn_lastMag select 0)] call broadcast;
				};
			};
		};
		
		if (player == _player) then
		{
			player addWeapon AdminWeaponSpawn_lastWep;
		} else {
			format["if (player == %1) then { player addWeapon ""%2""; };",admin_selPlayer,AdminWeaponSpawn_lastWep] call broadcast;
		};

		[format["You gave %1 a %2!",(name _player),AdminWeaponSpawn_lastName]] call Admin_Success;
		[format["Give %1",AdminWeaponSpawn_lastName], _player] call Admin_Log;
	} else {
		["You have not selected a weapon!"] call Admin_Error;
	};
};

/* spawn vehicle */
Admin_SpawnVehicle = {
	_player = AdminVehicleSpawn_lastPlayer;
	_it = _this select 0;
	if (_it > -1) then {
		if (player == _player) then {
			_vehicle = [AdminVehicleSpawn_lastVeh,player] call INV_CreateVehicle;
			_vehicle setFuel AdminVehicleSpawn_lastFuel;
		} else {
			format [" _vehicle = [""%1"",player] call INV_CreateVehicle;", AdminVehicleSpawn_lastVeh] call broadcast;
		};
		
		[format["You spawned a %2 for %1!",(name player),AdminVehicleSpawn_lastName]] call Admin_Success;
		[format["Spawn %1",AdminVehicleSpawn_lastName], _player] call Admin_Log;
	} else {
		["You have not selected a vehicle!"] call Admin_Error;
	};
};

/* reset character */
Admin_ResetCharacter = {
	/* delete vehicles */
	{
		deleteVehicle _x;
	} forEach INV_VehicleArray;
	INV_VehicleArray = [];
	
	/* wipe bank */
	bankAccount = startmoneh;
	
	/* arrays */
	INV_LizenzOwner = [];
	INV_InventarArray = [];
	["schluesselbund", 1] call INV_SetItemAmount;
	["handy", 1] call INV_AddInventoryItem;
	
	/* unmayor */
	if (MayorNumber == rolenumber - 1) then {
		MayorNumber = -1;
		publicVariable "MayorNumber";
	};
	
	/* unchief */
	if (chiefNumber == rolenumber - 1) then {
		chiefNumber = -1;
		publicVariable "chiefNumber";
	};
	
	removeAllWeapons player;
	
	["Your character has been reset!"] call Admin_Success;
};

/* warn player */
Admin_WarnPlayer = {
	_msg = _this select 0;
	format ["if (player == %1) then { titletext [""%3: %2"", ""PLAIN"",1]; };", AdminWarn_lastPlayer, _msg, (name player)] call broadcast;
	format ["if (player == %1) then { hint ""%3 Says: %2""; };", AdminWarn_lastPlayer, _msg, (name player)] call broadcast;
	[format["Warn (%1)",_msg], _player] call Admin_Log;
};