//codepad
class AdminCodePad
{
	idd = 1680;
	movingenable = false;
	onLoad = "uiNamespace setVariable ['AdminCodePad', _this select 0];";
	class Controls
	{
		class ScriptPadBackground: AdminMenu_Box
		{
			idc = 1684;
			text = "";
			x = 0.263532 * safezoneW + safezoneX;
			y = 0.260461 * safezoneH + safezoneY;
			w = 0.47422 * safezoneW;
			h = 0.480482 * safezoneH;
		};
		class ScriptPad: RscX_Frame
		{
			idc = 1681;
			text = "Codepad";
			x = 0.263532 * safezoneW + safezoneX;
			y = 0.260461 * safezoneH + safezoneY;
			w = 0.47422 * safezoneW;
			h = 0.480482 * safezoneH;
		};
		class ScriptPad_btnExec: RscX_ShortcutButton
		{
			idc = 1682;
			text = "Execute";
			onButtonClick = "_cc = compile (ctrlText 1685); call _cc;";
			x = 0.602267 * safezoneW + safezoneX;
			y = 0.679519 * safezoneH + safezoneY;
			w = 0.134677 * safezoneW;
			h = 0.0796426 * safezoneH;
		};
		class ScriptPad_btnBack: RscX_ShortcutButton
		{
			idc = 1683;
			text = "Back";
			onButtonClick = "closeDialog 1680; [] execVM (adminMenu_root + ""adminPanel\checkAdmin.sqf"");";
			x = 0.480704 * safezoneW + safezoneX;
			y = 0.679519 * safezoneH + safezoneY;
			w = 0.122041 * safezoneW;
			h = 0.0796426 * safezoneH;
		};
		class ScriptPad_txtCode: RscX_MultiEdit
		{
			idc = 1685;
			x = 0.28536 * safezoneW + safezoneX;
			y = 0.294758 * safezoneH + safezoneY;
			w = 0.430565 * safezoneW;
			h = 0.390454 * safezoneH;
		};
	};
};

//item give
class AdminItemGive
{
	idd = 1690;
	movingenable = false;
	onLoad = "uiNamespace setVariable ['AdminItemGive', _this select 0];";
	class Controls
	{
		class ItemGiveBackground: AdminMenu_Box
		{
			idc = 1691;
			text = "";
			x = 0.263532 * safezoneW + safezoneX;
			y = 0.260461 * safezoneH + safezoneY;
			w = 0.47422 * safezoneW;
			h = 0.480482 * safezoneH;
		};
		class ItemGive: RscX_Frame
		{
			idc = 1692;
			text = "Give Item";
			x = 0.263532 * safezoneW + safezoneX;
			y = 0.260461 * safezoneH + safezoneY;
			w = 0.47422 * safezoneW;
			h = 0.480482 * safezoneH;
		};
		class ItemGive_btnGive: RscX_ShortcutButton
		{
			idc = 1693;
			text = "Give";
			onButtonClick = "[(lbCurSel 1695)] call Admin_GiveItem;";
			x = 0.602267 * safezoneW + safezoneX;
			y = 0.679519 * safezoneH + safezoneY;
			w = 0.134677 * safezoneW;
			h = 0.0796426 * safezoneH;
		};
		class ItemGive_btnBack: RscX_ShortcutButton
		{
			idc = 1694;
			text = "Back";
			onButtonClick = "closeDialog 1690; [] execVM (adminMenu_root + ""adminPanel\checkAdmin.sqf"");";
			x = 0.480704 * safezoneW + safezoneX;
			y = 0.679519 * safezoneH + safezoneY;
			w = 0.122041 * safezoneW;
			h = 0.0796426 * safezoneH;
		};
		class ItemGive_lstItems: RscX_List
		{
			idc = 1695;
			x = 0.28536 * safezoneW + safezoneX;
			y = 0.294758 * safezoneH + safezoneY;
			w = 0.190565 * safezoneW;
			h = 0.390454 * safezoneH;
			onLBSelChanged="[(lbData [1695,(_this select 1)])] call Admin_PopulateItemValues;";
		};
		class ItemGive_txtTarget: RscX_Text
		{
			idc = 1696;
			text = "Target: ";
			x = 0.480704 * safezoneW + safezoneX;
			y = 0.294758 * safezoneH + safezoneY;
			w = 0.158035 * safezoneW;
			h = 0.0337123 * safezoneH;
			SizeEx = 0.03121;
		};
		class ItemGive_txtWeight: RscX_Text
		{
			idc = 1697;
			text = "Weight: ";
			x = 0.480704 * safezoneW + safezoneX;
			y = 0.324758 * safezoneH + safezoneY;
			w = 0.158035 * safezoneW;
			h = 0.0337123 * safezoneH;
			SizeEx = 0.03121;
		};
		class ItemGive_txtType: RscX_Text
		{
			idc = 1698;
			text = "Type: ";
			x = 0.480704 * safezoneW + safezoneX;
			y = 0.354758 * safezoneH + safezoneY;
			w = 0.158035 * safezoneW;
			h = 0.0337123 * safezoneH;
			SizeEx = 0.03121;
		};
		class ItemGive_txtAmount: RscX_Text
		{
			idc = 1699;
			text = "Amount: ";
			x = 0.480704 * safezoneW + safezoneX;
			y = 0.629519 * safezoneH + safezoneY;
			w = 0.158035 * safezoneW;
			h = 0.0337123 * safezoneH;
			SizeEx = 0.03121;
		};
		class ItemGive_txtAmountE: RscX_Edit
		{
			idc = 1700;
			x = 0.560704 * safezoneW + safezoneX;
			y = 0.629519 * safezoneH + safezoneY;
			w = 0.158035 * safezoneW;
			h = 0.0337123 * safezoneH;
			SizeEx = 0.03121;
		};
	};
};

//weapon spawn
class AdminWeaponSpawn
{
	idd = 1750;
	movingenable = false;
	onLoad = "uiNamespace setVariable ['AdminWeaponSpawn', _this select 0];";
	class Controls
	{
		class WeaponSpawnBackground: AdminMenu_Box
		{
			idc = 1752;
			x = 0.328206 * safezoneW + safezoneX;
			y = 0.257417 * safezoneH + safezoneY;
			w = 0.343504 * safezoneW;
			h = 0.483739 * safezoneH;
		};
		class WeaponSpawn: RscX_Frame
		{
			idc = 1751;
			text = "Weapons";
			x = 0.328206 * safezoneW + safezoneX;
			y = 0.257417 * safezoneH + safezoneY;
			w = 0.343504 * safezoneW;
			h = 0.483739 * safezoneH;
		};
		class WeaponSpawn_sldMags: RscX_SliderH
		{
			idc = 1752;
			x = 0.342735 * safezoneW + safezoneX;
			y = 0.659833 * safezoneH + safezoneY;
			w = 0.319572 * safezoneW;
			h = 0.0235102 * safezoneH;
			onSliderPosChanged = "ctrlSetText [1753,format[""Magazines: %1"",round (_this select 1)]]; AdminWeaponSpawn_lastMags = round (_this select 1);";
		};
		class WeaponSpawn_txtMags: RscX_Text
		{
			idc = 1753;
			text = "Magazines: 0";
			x = 0.434699 * safezoneW + safezoneX;
			y = 0.626959 * safezoneH + safezoneY;
			w = 0.129828 * safezoneW;
			h = 0.0235101 * safezoneH;
			shadow = 2;
			font = "Zeppelin32";
			SizeEx = 0.03921;
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.8784,0.8471,0.651,1};
		};
		class WeaponSpawn_btnGive: RscX_ShortcutButton
		{
			idc = 1754;
			text = "Give";
			onButtonClick = "[(lbCurSel 1756)] call Admin_GiveWeapon;";
			x = 0.552991 * safezoneW + safezoneX;
			y = 0.683638 * safezoneH + safezoneY;
			w = 0.118718 * safezoneW;
			h = 0.0756543 * safezoneH;
		};
		class WeaponSpawn_btnBack: RscX_ShortcutButton
		{
			idc = 1755;
			text = "Back";
			onButtonClick = "closeDialog 1750; [] execVM (adminMenu_root + ""adminPanel\checkAdmin.sqf"");";
			x = 0.329915 * safezoneW + safezoneX;
			y = 0.682504 * safezoneH + safezoneY;
			w = 0.118718 * safezoneW;
			h = 0.0756543 * safezoneH;
		};
		class WeaponSpawn_lstWeps: RscX_List
		{
			idc = 1756;
			onLBSelChanged="[(lbData [1756,(_this select 1)])] call Admin_PopulateWeaponValues;";
			x = 0.350427 * safezoneW + safezoneX;
			y = 0.29369 * safezoneH + safezoneY;
			w = 0.300769 * safezoneW;
			h = 0.202614 * safezoneH;
		};
		class WeaponSpawn_imgWep: RscX_Picture
		{
			idc = 1757;
			x = 0.383419 * safezoneW + safezoneX;
			y = 0.517004 * safezoneH + safezoneY;
			w = 0.194786 * safezoneW;
			h = 0.0983256 * safezoneH;
		};
	};
};

//vehicle spawn
class AdminVehicleSpawn
{
	idd = 1850;
	movingenable = false;
	onLoad = "uiNamespace setVariable ['AdminVehicleSpawn', _this select 0];";
	class Controls
	{
		class VehicleSpawnBackground: AdminMenu_Box
		{
			idc = 1851;
			x = 0.328206 * safezoneW + safezoneX;
			y = 0.257417 * safezoneH + safezoneY;
			w = 0.343504 * safezoneW;
			h = 0.483739 * safezoneH;
		};
		class VehicleSpawn: RscX_Frame
		{
			idc = 1852;
			text = "Vehicles";
			x = 0.328206 * safezoneW + safezoneX;
			y = 0.257417 * safezoneH + safezoneY;
			w = 0.343504 * safezoneW;
			h = 0.483739 * safezoneH;
		};
		class VehiclenSpawn_sldFuel: RscX_SliderH
		{
			idc = 1853;
			x = 0.342735 * safezoneW + safezoneX;
			y = 0.659833 * safezoneH + safezoneY;
			w = 0.319572 * safezoneW;
			h = 0.0235102 * safezoneH;
			onSliderPosChanged = "ctrlSetText [1854,format[""Fuel: %1%%"",round ((_this select 1) * 100)]]; AdminVehicleSpawn_lastFuel = round (_this select 1);";
		};
		class VehicleSpawn_txtFuel: RscX_Text
		{
			idc = 1854;
			text = "Fuel: 0%";
			x = 0.464699 * safezoneW + safezoneX;
			y = 0.626959 * safezoneH + safezoneY;
			w = 0.129828 * safezoneW;
			h = 0.0235101 * safezoneH;
			shadow = 2;
			font = "Zeppelin32";
			SizeEx = 0.03921;
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.8784,0.8471,0.651,1};
		};
		class VehicleSpawn_btnSpawn: RscX_ShortcutButton
		{
			idc = 1855;
			text = "Spawn";
			onButtonClick = "[(lbCurSel 1857)] call Admin_SpawnVehicle;";
			x = 0.552991 * safezoneW + safezoneX;
			y = 0.683638 * safezoneH + safezoneY;
			w = 0.118718 * safezoneW;
			h = 0.0756543 * safezoneH;
		};
		class VehicleSpawn_btnBack: RscX_ShortcutButton
		{
			idc = 1856;
			text = "Back";
			onButtonClick = "closeDialog 1750; [] execVM (adminMenu_root + ""adminPanel\checkAdmin.sqf"");";
			x = 0.329915 * safezoneW + safezoneX;
			y = 0.682504 * safezoneH + safezoneY;
			w = 0.118718 * safezoneW;
			h = 0.0756543 * safezoneH;
		};
		class VehicleSpawn_lstVehs: RscX_List
		{
			idc = 1857;
			onLBSelChanged="[(lbData [1857,(_this select 1)])] call Admin_PopulateVehicleValues;";
			x = 0.350427 * safezoneW + safezoneX;
			y = 0.29369 * safezoneH + safezoneY;
			w = 0.300769 * safezoneW;
			h = 0.202614 * safezoneH;
		};
		class VehicleSpawn_imgVeh: RscX_Picture
		{
			idc = 1858;
			x = 0.473419 * safezoneW + safezoneX;
			y = 0.517004 * safezoneH + safezoneY;
			w = 0.104786 * safezoneW;
			h = 0.0983256 * safezoneH;
		};
	};
};

//warn player
class AdminWarnPlayer
{
	idd = 1800;
	movingenable = false;
	onLoad = "uiNamespace setVariable ['AdminWarnPlayer', _this select 0];";
	class Controls {
		class AdminWarnBackground: AdminMenu_Box
		{
			idc = 1806;
			x = 0.329915 * safezoneW + safezoneX;
			y = 0.399112 * safezoneH + safezoneY;
			w = 0.342649 * safezoneW;
			h = 0.20148 * safezoneH;
		};
		class AdminWarn: RscX_Frame
		{
			idc = 1801;
			text = "Warn Player";
			x = 0.329915 * safezoneW + safezoneX;
			y = 0.399112 * safezoneH + safezoneY;
			w = 0.342649 * safezoneW;
			h = 0.20148 * safezoneH;
		};
		class AdminWarn_txtMsg: RscX_Edit
		{
			idc = 1802;
			x = 0.351282 * safezoneW + safezoneX;
			y = 0.47166 * safezoneH + safezoneY;
			w = 0.299915 * safezoneW;
			h = 0.0597844 * safezoneH;
			style = 16;
			font = "EtelkaMonospaceProBold"; 
			lineSpacing = 1; 
			sizeEx = 0.03; 
			shadow = 2; 
		};
		class AdminWarn_btnWarn: RscX_ShortcutButton
		{
			idc = 1803;
			text = "Warn";
			onButtonClick = "[(ctrlText 1802)] call Admin_WarnPlayer;";
			x = 0.55812 * safezoneW + safezoneX;
			y = 0.544209 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0745207 * safezoneH;
		};
		class AdminWarn_btnBack: RscX_ShortcutButton
		{
			idc = 1804;
			text = "Back";
			onButtonClick = "closeDialog 1800; [] execVM (adminMenu_root + ""adminPanel\checkAdmin.sqf"");";
			x = 0.448718 * safezoneW + safezoneX;
			y = 0.544209 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0745207 * safezoneH;
		};
		class AdminWarn_txtWarn: RscX_Text
		{
			idc = 1805;
			text = "You are warning %1";
			x = 0.347863 * safezoneW + safezoneX;
			y = 0.428585 * safezoneH + safezoneY;
			w = 0.299915 * safezoneW;
			h = 0.0359794 * safezoneH;
			shadow = 2;
			font = "Zeppelin32";
			SizeEx = 0.03921;
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.8784,0.8471,0.651,1};
		};
	};
};

//main admin dialog
class AdminDialog 
{
	idd = 1620;
	movingenable = false;
	onLoad = "uiNamespace setVariable ['AdminDialog', _this select 0];";
	
	class Controls
	{
		class AdminMenuBackground: AdminMenu_Box
		{
			idc = 1621;
			text = "";
			x = 0.198291 * safezoneW + safezoneX;
			y = 0.190537 * safezoneH + safezoneY;
			w = 0.605043 * safezoneW;
			h = 0.583491 * safezoneH;
		};
		class AdminMenu: RscX_Frame
		{
			idc = 1622;
			text = "Admin Menu";
			x = 0.198291 * safezoneW + safezoneX;
			y = 0.190537 * safezoneH + safezoneY;
			w = 0.605043 * safezoneW;
			h = 0.583491 * safezoneH;
		};
		class AdminMenu_txtTitle: RscX_Text
		{
			idc = 1623;
			text = "CreamTeam Admin Menu";
			x = 0.420514 * safezoneW + safezoneX;
			y = 0.203006 * safezoneH + safezoneY;
			w = 0.158035 * safezoneW;
			h = 0.0337123 * safezoneH;
			shadow = 2;
			font = "Zeppelin32";
			SizeEx = 0.03921;
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.8784,0.8471,0.651,1};
		};
		class AdminMenu_btnVehicles: RscX_ShortcutButton
		{
			idc = 1624;
			text = "Vehicles";
			onButtonClick="_hp = [""vehicles""] call Admin_HasSP; if (_hp) then { closeDialog 1620;createDialog ""AdminVehicles""; } else { [""You do not have permission to change vehicles!""] call Admin_Error; };";
			x = 0.652137 * safezoneW + safezoneX;
			y = 0.709709 * safezoneH + safezoneY;
			w = 0.146923 * safezoneW;
			h = 0.0756542 * safezoneH;
		};
		class AdminMenu_btnSettings: RscX_ShortcutButton
		{
			idc = 1625;
			text = "Settings";
			onButtonClick="_hp = [""settings""] call Admin_HasSP; if (_hp) then { closeDialog 1620;createDialog ""AdminSettings""; } else { [""You do not have permission to change settings!""] call Admin_Error; };";
			x = 0.500856 * safezoneW + safezoneX;
			y = 0.70971 * safezoneH + safezoneY;
			w = 0.146923 * safezoneW;
			h = 0.0756542 * safezoneH;
		};
		class AdminMenu_btnCodepad: RscX_ShortcutButton
		{
			idc = 1626;
			text = "Codepad";
			onButtonClick="_hp = [""codepad""] call Admin_HasSP; if (_hp) then { closeDialog 1620;createDialog ""AdminCodePad""; } else { [""You do not have permission to use the Code Pad!""] call Admin_Error; };";
			x = 0.351281 * safezoneW + safezoneX;
			y = 0.70971 * safezoneH + safezoneY;
			w = 0.146923 * safezoneW;
			h = 0.0756542 * safezoneH;
		};
		class AdminMenu_lstPlayers: RscX_List
		{
			idc = 1628;
			x = 0.236752 * safezoneW + safezoneX;
			y = 0.252882 * safezoneH + safezoneY;
			w = 0.165726 * safezoneW;
			h = 0.441796 * safezoneH;
			sizeEx = 0.032;
			onLBSelChanged="[(lbData [1628,(_this select 1)])] call Admin_PopulateValues;";
		};
		class AdminMenu_txtTele: RscX_Text
		{
			idc = 1632;
			text = "Teleporting: ";
			x = 0.410514 * safezoneW + safezoneX;
			y = 0.255149 * safezoneH + safezoneY;
			w = 0.158035 * safezoneW;
			h = 0.0337123 * safezoneH;
			SizeEx = 0.03121;
		};
		class AdminMenu_btnBring: RscX_ExButton
		{
			idc = 1629;
			text = "Bring";
			x = 0.411966 * safezoneW + safezoneX;
			y = 0.28815 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""tbring""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnGoto: RscX_ExButton
		{
			idc = 1630;
			text = "Goto";
			x = 0.545299 * safezoneW + safezoneX;
			y = 0.28815 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""tgoto""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnMap: RscX_ExButton
		{
			idc = 1631;
			text = "Map";
			x = 0.675213 * safezoneW + safezoneX;
			y = 0.28815 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""tmap""] call Admin_ExecCommand;";
		};
		class AdminMenu_txtInv: RscX_Text
		{
			idc = 1633;
			text = "Inventory: ";
			x = 0.410514 * safezoneW + safezoneX;
			y = 0.325149 * safezoneH + safezoneY;
			w = 0.158035 * safezoneW;
			h = 0.0337123 * safezoneH;
			SizeEx = 0.03121;
		};
		class AdminMenu_btnOpen: RscX_ExButton
		{
			idc = 1634;
			text = "Open";
			x = 0.411966 * safezoneW + safezoneX;
			y = 0.35815 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""iopen""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnGive: RscX_ExButton
		{
			idc = 1635;
			text = "Give";
			x = 0.545299 * safezoneW + safezoneX;
			y = 0.35815 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""igive""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnTake: RscX_ExButton
		{
			idc = 1636;
			text = "Take";
			x = 0.675213 * safezoneW + safezoneX;
			y = 0.35815 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""itake""] call Admin_ExecCommand;";
		};
		class AdminMenu_txtSpwn: RscX_Text
		{
			idc = 1637;
			text = "Spawning: ";
			x = 0.410514 * safezoneW + safezoneX;
			y = 0.395149 * safezoneH + safezoneY;
			w = 0.158035 * safezoneW;
			h = 0.0337123 * safezoneH;
			SizeEx = 0.03121;
		};
		class AdminMenu_btnWeapon: RscX_ExButton
		{
			idc = 1638;
			text = "Weapon";
			x = 0.411966 * safezoneW + safezoneX;
			y = 0.42815 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""sweapon""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnVehicle: RscX_ExButton
		{
			idc = 1639;
			text = "Vehicle";
			x = 0.545299 * safezoneW + safezoneX;
			y = 0.42815 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""svehicle""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnObject: RscX_ExButton
		{
			idc = 1640;
			text = "Object";
			x = 0.675213 * safezoneW + safezoneX;
			y = 0.42815 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""sobj""] call Admin_ExecCommand;";
		};
		class AdminMenu_txtMisc: RscX_Text
		{
			idc = 1655;
			text = "Misc: ";
			x = 0.410514 * safezoneW + safezoneX;
			y = 0.465149 * safezoneH + safezoneY;
			w = 0.158035 * safezoneW;
			h = 0.0337123 * safezoneH;
			SizeEx = 0.03121;
		};
		class AdminMenu_btnKill: RscX_ExButton
		{
			idc = 1656;
			text = "Kill";
			x = 0.411966 * safezoneW + safezoneX;
			y = 0.49815 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""mkill""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnHeal: RscX_ExButton
		{
			idc = 1657;
			text = "Heal";
			x = 0.545299 * safezoneW + safezoneX;
			y = 0.49815 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""mheal""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnWarn: RscX_ExButton
		{
			idc = 1658;
			text = "Warn";
			x = 0.675213 * safezoneW + safezoneX;
			y = 0.49815 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""mwarn""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnFixRide: RscX_ExButton
		{
			idc = 1659;
			text = "Fix Ride";
			x = 0.411966 * safezoneW + safezoneX;
			y = 0.545149 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""mfixride""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnMarkers: RscX_ExButton
		{
			idc = 1660;
			text = "Tags";
			x = 0.545299 * safezoneW + safezoneX;
			y = 0.545149 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""mpmarkers""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnSpec: RscX_ExButton
		{
			idc = 1661;
			text = "Spectate";
			x = 0.675213 * safezoneW + safezoneX;
			y = 0.545149 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""mspectate""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnStrip: RscX_ExButton
		{
			idc = 1986;
			text = "Strip";
			x = 0.411966 * safezoneW + safezoneX;
			y = 0.592148 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""mstrip""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnDelete: RscX_ExButton
		{
			idc = 1987;
			text = "Delete";
			x = 0.545299 * safezoneW + safezoneX;
			y = 0.592148 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""mdelete""] call Admin_ExecCommand;";
		};
		class AdminMenu_btnReset: RscX_ExButton
		{
			idc = 1988;
			text = "Reset";
			x = 0.675213 * safezoneW + safezoneX;
			y = 0.592148 * safezoneH + safezoneY;
			w = 0.107607 * safezoneW;
			h = 0.0337123 * safezoneH;
			onButtonClick = "[""mreset""] call Admin_ExecCommand;";
		};
		class AdminMenu_txtMoney: RscX_Text
		{
			idc = 1653;
			text = "Bank: ";
			x = 0.410514 * safezoneW + safezoneX;
			y = 0.644149 * safezoneH + safezoneY;
			w = 0.158035 * safezoneW;
			h = 0.0337123 * safezoneH;
			SizeEx = 0.03121;
		};
		class AdminMenu_txtTeam: RscX_Text
		{
			idc = 1654;
			text = "Side: ";
			x = 0.410514 * safezoneW + safezoneX;
			y = 0.665149 * safezoneH + safezoneY;
			w = 0.158035 * safezoneW;
			h = 0.0337123 * safezoneH;
			SizeEx = 0.03121;
		};
	};
}
