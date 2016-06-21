adminCMD = lbCurSel 1000;
TarGetPLayer = ctrlText 2000;

switch (adminCMD) do
{
	case 5: //lockpix
	{
		['lockpick',10] call INV_AddInventoryItem;
	};
	case 9: //Bank Money
	{
		bankaccount = (bankaccount+100000);
	};
	case 0: //Inventory Money
	{
		['moneh',250000] call INV_AddInventoryItem;
	};
	case 1: //Pistol
	{
		player addweapon "Colt1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
	};
	case 4: //The One Ring
	{
		['LOTR_RING',1] call INV_AddInventoryItem;
	};
	case 114: //Refuel Can
	{
		['kanister',1] call INV_AddInventoryItem;
	};
	case 6: //Medkit
	{
		['medikit',1] call INV_AddInventoryItem;
	};
	case 7: //GPS,NV,Binoc
	{
		player addweapon "ItemGPS";
		player addweapon "NVGoggles";
		player addweapon "Binocular";
	};
	case 8: //pimp my ride
	{
		(vehicle player) setvariable ["tuning", 5, true];
		(vehicle player) setvariable ["nitro", 1, true];
	};
	case 2: //fix my ride
	{
		vehicle player setFuel 1;
		vehicle player setDamage 0;
	};
	case 10: //cheap gunz
	{
		player addweapon "AK_47_S";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addweapon "Colt1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
	};
	case 11: //decent gunz
	{
		player addweapon "Sa58V_CCO_EP1";
		player addMagazine "30Rnd_762x39_SA58";
		player addMagazine "30Rnd_762x39_SA58";
		player addMagazine "30Rnd_762x39_SA58";
		player addMagazine "30Rnd_762x39_SA58";
		player addMagazine "30Rnd_762x39_SA58";
		player addMagazine "30Rnd_762x39_SA58";
		player addweapon "RPG7V";
		player addMagazine "PG7V";
		player addMagazine "PG7V";
		player addMagazine "PG7V";
		player addweapon "Sa61_EP1";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
	};
	case 12: //quiet gunz
	{
		player addweapon "SCAR_H_CQC_CCO_SD";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addweapon "UZI_SD_EP1";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
	};
	case 13: //sniper gunz
	{
		player addweapon "m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addweapon "UZI_EP1";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
	};
	case 14: //pwn gunz
	{
		player addweapon "SCAR_H_CQC_CCO";
		player addMagazine "20Rnd_762x51_B_SCAR";
		player addMagazine "20Rnd_762x51_B_SCAR";
		player addMagazine "20Rnd_762x51_B_SCAR";
		player addMagazine "20Rnd_762x51_B_SCAR";
		player addMagazine "20Rnd_762x51_B_SCAR";
		player addMagazine "20Rnd_762x51_B_SCAR";
		player addweapon "MAAWS";
		player addMagazine "MAAWS_HEAT";
		player addMagazine "MAAWS_HEAT";
		player addweapon "revolver_gold_EP1";
		player addMagazine "6Rnd_45ACP";
		player addMagazine "6Rnd_45ACP";
		player addMagazine "6Rnd_45ACP";
		player addMagazine "6Rnd_45ACP";
		player addMagazine "6Rnd_45ACP";
		player addMagazine "6Rnd_45ACP";
		player addMagazine "6Rnd_45ACP";
		player addMagazine "6Rnd_45ACP";
	};
	case 15: //Remote Bomb
	{
		['fernzuenderbombe',1] call INV_AddInventoryItem;
	};
	case 16: //Time Bomb
	{
		['zeitzuenderbombe',1] call INV_AddInventoryItem;
	};
	case 17: //Activation Bomb
	{
		['aktivierungsbombe',1] call INV_AddInventoryItem;
	};
	case 18: //Speed Bomb
	{
		['geschwindigkeitsbombe',1] call INV_AddInventoryItem;
	};
	case 19: //Suicide Bomb
	{
		['selbstmordbombe',1] call INV_AddInventoryItem;
	};
	case 20: //Remote Control
	{
		['fernzuender',1] call INV_AddInventoryItem;
	};
	case 21: //defuser
	{
		['defuser',1] call INV_AddInventoryItem;
	};
	case 22: //lighter
	{
		['lighter',1] call INV_AddInventoryItem;
	};
	case 23: //10 bank insurance
	{
		['bankversicherung',10] call INV_AddInventoryItem;
	};
	case 24: //pistol
	{
		player addweapon "Colt1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
	};
	case 25: //10 Mackerel
	{
		['mackerel',10] call INV_AddInventoryItem;
	};
	case 26: //10 Herring
	{
		['herring',10] call INV_AddInventoryItem;
	};
	case 27: //10 Deep Sea shark
	{
		['shark',10] call INV_AddInventoryItem;
	};
	case 28: //20 Wheat
	{
		['getreide',20] call INV_AddInventoryItem;
	};
	case 29: //Bread
	{
		['Bread',1] call INV_AddInventoryItem;
	};
	case 30: //20 Donut
	{
		['Donut',20] call INV_AddInventoryItem;
	};
	case 31: //Larger
	{
		['beer',1] call INV_AddInventoryItem;
	};
	case 32: //Bitter
	{
		['beer2',1] call INV_AddInventoryItem;
	};
	case 33: //Vodka
	{
		['vodka',1] call INV_AddInventoryItem;
	};
	case 34: //Smirnoff ICE
	{
		['smirnoff',1] call INV_AddInventoryItem;
	};
	case 35: //Wiskey
	{
		['wiskey',1] call INV_AddInventoryItem;
	};
	case 36: //White Wine
	{
		['wine',1] call INV_AddInventoryItem;
	};
	case 37: //Red Wine
	{
		['wine2',1] call INV_AddInventoryItem;
	};
	case 38: //10 Wood
	{
		['holz',10] call INV_AddInventoryItem;
	};
	case 39: //10 Iron
	{
		['iron',10] call INV_AddInventoryItem;
	};
	case 40: //10 Mineral oil
	{
		['mineraloel',10] call INV_AddInventoryItem;
	};
	case 41: //10 Electronic components
	{
		['ebauteile',10] call INV_AddInventoryItem;
	};
	case 42: //10 Silicon
	{
		['silizium',10] call INV_AddInventoryItem;
	};
	case 43: //10 Copper
	{
		['copper',10] call INV_AddInventoryItem;
	};
	case 44: //10 Steel
	{
		['steel',10] call INV_AddInventoryItem;
	};
	case 45: //10 Black powder
	{
		['schwarzpulver',10] call INV_AddInventoryItem;
	};
	case 46: //10 Sulfur
	{
		['schwefel',10] call INV_AddInventoryItem;
	};
	case 47: //10 Coal
	{
		['kohle',10] call INV_AddInventoryItem;
	};
	case 48: //10 Diamond rock
	{
		['Diamond rock',10] call INV_AddInventoryItem;
	};
	case 49: //10 Gold
	{
		['Gold',10] call INV_AddInventoryItem;
	};
	case 50: //10 Oil
	{
		['Oil',10] call INV_AddInventoryItem;
	};
	case 51: //10 Petroleum
	{
		['erdoel',10] call INV_AddInventoryItem;
	};
	case 52: //10 Glass
	{
		['glass',10] call INV_AddInventoryItem;
	};
	case 53: //10 Plastic
	{
		['plastik',10] call INV_AddInventoryItem;
	};
	case 54: //10 Sand
	{
		['sand',10] call INV_AddInventoryItem;
	};
	case 55: //10 Steel wool
	{
		['stahlwolle',10] call INV_AddInventoryItem;
	};
	case 56: //Whale
	{
		["F35B", convspawn5] spawn INV_CreateVehicle;
	};
	case 57: //10 Unprocessed Cocaine
	{
		['Unprocessed_Cocaine',10] call INV_AddInventoryItem;
	};
	case 58: //10 Unprocessed Marijuana
	{
		['Unprocessed_Marijuana',10] call INV_AddInventoryItem;
	};
	case 59: //10 Unprocessed LSD
	{
		['Unprocessed_LSD',10] call INV_AddInventoryItem;
	};
	case 60: //10 Unprocessed Heroin
	{
		['Unprocessed_Heroin',10] call INV_AddInventoryItem;
	};
	case 61: //10 Marijuana
	{
		['marijuana',10] call INV_AddInventoryItem;
	};
	case 62: //10 Cocaine
	{
		['cocaine',10] call INV_AddInventoryItem;
	};
	case 63: //10 LSD
	{
		['lsd',10] call INV_AddInventoryItem;
	};
	case 64: //10 Heroin
	{
		['heroin',10] call INV_AddInventoryItem;
	};
	case 65: //Marijuana Seed
	{
		['MariSeed',1] call INV_AddInventoryItem;
	};
	case 66: //Drug-Shed
	{
		['Drug-Shed',1] call INV_AddInventoryItem;
	};
	case 67: //Marijuana (not processed)
	{
		['UPMarijuana',1] call INV_AddInventoryItem;
	};
	case 68: //Mobile Phone
	{
		['handy',1] call INV_AddInventoryItem;
	};
	case 69: //Roadblock
	{
		['roadblock',1] call INV_AddInventoryItem;
	};
	case 70: //Speed Trap
	{
		['Satelit',1] call INV_AddInventoryItem;
	};
	case 71: //Bar Gate
	{
		['bargate',1] call INV_AddInventoryItem;
	};
	case 72: //Sign Checkpoint
	{
		['Sign_Checkpoint',1] call INV_AddInventoryItem;
	};
	case 73: //Bunker (Small)
	{
		['bunkersmall',1] call INV_AddInventoryItem;
	};
	case 74: //Road cone (light)
	{
		['landconelight',1] call INV_AddInventoryItem;
	};
	case 75: //Road barrier (light)
	{
		['roadbarrierlight',1] call INV_AddInventoryItem;
	};
	case 76: //Diamond Ring
	{
		['Diamondring',1] call INV_AddInventoryItem;
	};
	case 77: //Expensive Diamond Ring
	{
		['EDiamondring',1] call INV_AddInventoryItem;
	};
	case 78: //Vehicle Ammo
	{
		['vclammo',1] call INV_AddInventoryItem;
	};
	case 79: //Hideout
	{
		['hideout',1] call INV_AddInventoryItem;
	};
	case 80: //Radio jammer
	{
		['stoersender',1] call INV_AddInventoryItem;
	};
	case 81: //Lockpick
	{
		['lockpick',1] call INV_AddInventoryItem;
	};
	case 82: //Gas mask
	{
		['gasmask',1] call INV_AddInventoryItem;
	};
	case 83: //Shovel
	{
		['Shovel',1] call INV_AddInventoryItem;
	};
	case 84: //Pickaxe
	{
		['Pickaxe',1] call INV_AddInventoryItem;
	};
	case 85: //Jack Hammer
	{
		['JackHammer',1] call INV_AddInventoryItem;
	};
	case 86: //Spikestrip
	{
		['city_spikestrip',1] call INV_AddInventoryItem;
	};
	case 87: //Storage box
	{
		['LocalBasicWeaponsBox',1] call INV_AddInventoryItem;
	};
	case 88: //Camo Net
	{
		['Camonet',1] call INV_AddInventoryItem;
	};
	case 89: //RazorWire
	{
		['FortRazorWireCop',1] call INV_AddInventoryItem;
	};
	case 90: //Barricade
	{
		['Barricade',1] call INV_AddInventoryItem;
	};
	case 91: //Fireplace
	{
		['fireplace',1] call INV_AddInventoryItem;
	};
	case 92: //Tent
	{
		['campeast',1] call INV_AddInventoryItem;
	};
	case 93: //Road Barrier
	{
		['roadbarrierlong',1] call INV_AddInventoryItem;
	};
	case 94: //Trench
	{
		['fortenvelopesmall',1] call INV_AddInventoryItem;
	};
	case 95: //supgrade1
	{
		['supgrade1',1] call INV_AddInventoryItem;
	};
	case 96: //supgrade2
	{
		['supgrade2',1] call INV_AddInventoryItem;
	};
	case 97: //supgrade3
	{
		['supgrade3',1] call INV_AddInventoryItem;
	};
	case 98: //supgrade4
	{
		['supgrade4',1] call INV_AddInventoryItem;
	};
	case 99: //supgrade5
	{
		['supgrade5',1] call INV_AddInventoryItem;
	};
	case 100: //House
	{
		['House',1] call INV_AddInventoryItem;
	};
	case 101: //Small House
	{
		['House2',1] call INV_AddInventoryItem;
	};
	case 102: //Warning Tape
	{
		['signtape',1] call INV_AddInventoryItem;
	};
	case 103: //20 Apple
	{
		['Apfel',20] call INV_AddInventoryItem;
	};
	case 104: //5 Apple Pie
	{
		['Apfelkuchen',5] call INV_AddInventoryItem;
	};
	case 105: //Gate
	{
		['Tor',1] call INV_AddInventoryItem;
	};
	case 106: //Sandbag Wall
	{
		['Sandsacke',1] call INV_AddInventoryItem;
	};
	case 107: //Barracks
	{
		['Baracke',1] call INV_AddInventoryItem;
	};
	case 108: //Small Tower
	{
		['Jaegerstand',1] call INV_AddInventoryItem;
	};
	case 109: //Fence
	{
		['Blechzaun',1] call INV_AddInventoryItem;
	};
	case 110: //10 Sturgeon
	{
		['Stoer',10] call INV_AddInventoryItem;
	};
	case 111: //20 Caviar
	{
		['Kaviar',20] call INV_AddInventoryItem;
	};
	case 112: //blank
	{
	};
	case 113: //blank
	{
	};
	case 3: //Self Teleport
	{
		hint "Click on the map to Teleport!";
		closeDialog 0;
		openMap true;
		onMapSingleClick "onMapSingleClick """";(vehicle player) setpos [_pos select 0, _pos select 1, 0]; openMap false;";
	};
	case 115: // Self Invisibility
	{
//		objMYPlayer = (vehicle player);
//		publicVariable "objMYPlayer";
//
//			
//		strExecCode = 'objMYPlayer hideObject true;';
//	
//		player setVehicleInit strExecCode;
//		processInitCommands;
//		clearVehicleInit player;	
//		hint "Your are now Invisible (ON)";
//		strExecCode = nil;
	};
	case 116: // Self Visibility
	{
//		objMYPlayer = (vehicle player);
//		publicVariable "objMYPlayer";
//
//			
//		strExecCode = 'objMYPlayer hideObject false;';
//	
//		player setVehicleInit strExecCode;
//		processInitCommands;
//		clearVehicleInit player;	
//		hint "Your are now Invisible (ON)";
//		strExecCode = nil;
	};
	case 117: // Spawn Yourself Soldier
	{
//		soldier = group player createUnit ["USMC_Soldier", Position player, [], 0, "FORM"];
	};
	case 118: // Inf Ammo
	{
		if (infammook==0) then
		{
			hint "Infinite Ammo on";
			infammook=1;
		}
		else
		{
			infammook=0;
		};

		while {infammook==1} do
		{;
			(vehicle player) setVehicleAmmo 1;
			sleep 0.1;
		};
		hint "Infinite Ammo off";
		infammook=0;
	};
	case 119: // Gcam
	{
//		handle = [player] execVM "gcam.sqf";
	};
	case 120: // Display Mone
	{
		//cmdLine = "server globalChat format [""Admin Console: %1 has $%2 in savings account"", TarGetPLayer, bankaccount]";
	};
};

if (TarGetPLayer == "") then
{
	CoDeString = cmdLine;
}
else
{
	CoDeString = "if (name vehicle player == TarGetPLayer) then {_comp = compile cmdLine; call _comp;}";
};

publicVariable "TarGetPLayer";
sleep 0.3;
publicVariable "cmdLine";
sleep 0.3;
publicVariable "CoDeString";
sleep 0.3;

// nil = [CoDeString] execVM "public.sqf";

hint "Code Actiavted";