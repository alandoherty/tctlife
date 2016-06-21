_weaponfactory=

[

"GPS",
"Binocular",
"NVGoggles",
"M9",
"Rnd_9x19_M9",
"glock17_EP1",
"Rnd_9x19_glock17",
"Colt1911",
"Rnd_45ACP_1911",
"revolver_EP1",
"Rnd_45ACP",
"MakarovSD",
"Rnd_9x18_MakarovSD",
"LeeEnfield",
"x_303",
"Sa61_EP1",
"Rnd_B_765x17_Ball",
"AK_47_M",
"AK_47_S",
"Rnd_762x39_AK47",
"AKS74U",
"Rnd_545x39_AK",
"AA12_PMC",
"Rnd_B_AA12_Pellets",
"m8_carbine_pmc",
"m8_compact_pmc",
"m8_carbineGL",
"Rnd_556x45_G36",
"m8_SAW",
"MG36",
"Rnd_556x45_BetaCMag",
"M60A4_EP1",
"M240",
"m240_scoped_EP1",
"Rnd_762x51_M240",
"M14_EP1",
"Rnd_762x51_DMR",
"M79_EP1",
"Rnd_HE_M203"
];

_terrorfactoryitems    =

[

"Binocular",
"NVGoggles",
"Binocular_Vector",
"GPS",
"lockpick",
"medikit",
"M9",
"Rnd_9x19_M9",
"Colt1911",
"Rnd_45ACP_1911",
"AK74",
"AK74GL",
"AKS74U",
"AKS74pso",
"Rnd_545x39_AK",
"Rnd_762x39_AK47",
"1Rnd_HE_GP25",
"SVD",
"10Rnd_762x54_SVD",
"RPG7V",
"PG7VR",
"MAAWS",
"MAAWS_HEAT",
"MAAWS_HEDP",
"HandGrenade_East",
"PipeBomb",
"selbstmordbombe"
//"fernzuenderbombe",
//"zeitzuenderbombe",
//"aktivierungsbombe",
//"geschwindigkeitsbombe",
//"fernzuender"

];

_terrorfactory=

[

"TK_ALICE_Pack_EP1",
"Pickup_PK_TK_GUE_EP1",
"UAZ_MG_TK_EP1",
"UAZ_AGS30_TK_EP1",
"Offroad_DSHKM_TK_GUE_EP1",
"BRDM2_HQ_TK_GUE_EP1",
"BTR40_MG_TK_INS_EP1",
"M113_TK_EP1",
"LandRover_SPG9_TK_INS_EP1",
"Offroad_SPG9_Gue",
"Mi17_TK_EP1",
"UAZ_Unarmed_TK_EP1"

];

_vehiclefactory=

[

"Old_bike_TK_CIV_EP1",
"Old_moto_TK_Civ_EP1",
"TT650_TK_CIV_EP1",
"ATV_CZ_EP1",
"Volha_1_TK_CIV_EP1",
"Volha_2_TK_CIV_EP1",
"Lada1_TK_CIV_EP1",
"Lada2_TK_CIV_EP1",
"Skoda",
"Tractor",
"SkodaBlue",
"SkodaRed",
"SkodaGreen",
"Lada_base",
"Lada1",
"Lada2",
"car_hatchback",
"Car_Sedan",
"LandRover_CZ_EP1",
"SUV_PMC",
"S1203_TK_CIV_EP1",
"hilux1_civil_3_open_EP1",
"LandRover_TK_CIV_EP1",
"S1203_ambulance_EP1",
"Ural_TK_CIV_EP1",
"V3S_Open_TK_CIV_EP1",
"V3S_Repair_TK_GUE_EP1",
"V3S_Refuel_TK_GUE_EP1",
"V3S_TK_EP1",
"Ikarus_TK_CIV_EP1",
"AH6X_EP1",
"An2_1_TK_CIV_EP1",
"MTVR_DES_EP1"
];

_itemfactory=

[

"M9",
"Rnd_9x19_M9",
"Colt1911",
"Rnd_45ACP_1911",
"revolver_EP1",
"Rnd_45ACP",
"Binocular",
"NVGoggles",
"GPS",
"reparaturkit",
"kleinesreparaturkit",
"nitro",
"lockpick",
"medikit",
"lighter",
"defuser",
"fernzuender",
"vclammo",
"fishingpole",
"Shovel",
"Pickaxe",
"JackHammer",
"supgrade1",
"supgrade2",
"supgrade3",
"supgrade4",
"supgrade5"

];

_tairfactory =
[
"TK_ALICE_Pack_EP1",
"Pickup_PK_TK_GUE_EP1",
"UAZ_MG_TK_EP1",
"UAZ_AGS30_TK_EP1",
"Offroad_DSHKM_TK_GUE_EP1",
"BRDM2_HQ_TK_GUE_EP1",
"BTR40_MG_TK_INS_EP1",
"M113_TK_EP1",
"LandRover_SPG9_TK_INS_EP1",
"Offroad_SPG9_Gue",
"Mi17_TK_EP1",
"UAZ_Unarmed_TK_EP1"
];

_alcoholfactory = ["beer","beer2","vodka","smirnoff","wiskey","wine","wine2"];

_ringfactory = ["Diamondring","EDiamondring","Platinumring","EPlatinumring"];

_furnace = ["steel"];


vehiclequeue  	= [];
tvehiclequeue 	= [];
weaponqueue 	= [];
itemqueue 	= [];
avehiclequeue	= [];
tavehiclequeue	= [];
alcoholfactoryqueue  = [];
terrorfactoryitemsqueue = [];
diamondqueue = [];
furnacequeue = [];

INV_ItemFabriken =

[

[Vehiclefactory,"factory1","Vehicle Factory",dummyobj,vfacspawn,_vehiclefactory,100000,"Fabrikablage1", "vehiclequeue"],
[ItemFabrik_1,"factory3","General Factory",igunbox,dummyobj,_itemfactory,50000,"Fabrikablage3", "itemqueue"],
[weaponfactory,"factory4","Weapon Factory",wfgunbox,dummyobj,_weaponfactory,150000,"Fabrikablage4", "weaponqueue"],
//[terrorshop2,"factory5","Terror Factory",dummyobj,tfacspawn,_terrorfactory,300000,"Fabrikablage5", "tvehiclequeue"],
[tairshop,"factory6","Terrorist Vehicle Factory",dummyobj,tairspawn,_tairfactory,300000,"Fabrikablage6", "tavehiclequeue"],
[alcoholfactory,"factory7","Alcohol Factory",dummyobj,dummyobj,_alcoholfactory,10000,"Fabrikablage7", "alcoholfactoryqueue"] ,
//[terrorfactoryitems,"factory8","Terror item factory",tgunbox,dummyobj,_terrorfactoryitems,300000,"Fabrikablage8", "terrorfactoryitemsqueue"]
[ringfactory,"factory9","Ring Factory",dummyobj,dummyobj,_ringfactory,25000,"Fabrikablage9","diamondqueue"],
[Furnace,"factory10","Furnace",dummyobj,dummyobj,_furnace,25000,"Fabrikablage10","furnacequeue"]


];

INV_Fabrikowner = [];

INV_FarmItemArray =

[

[[["fishingwhale",2000]],"Whale",2,1,["Man"]],
[[["fishingshark",1800]],"Shark",7,4,["Man"]],
[[["fishingblowfish",1000]],"blowfish",15,8,["Man"]],
[[["fishingherring",900]],"herring",15,8,["Man"]],
[[["fishingmackerel",900]],"mackerel",15,8,["Man"]],
[[["cocafield",30]],"Unprocessed_cocaine",20,6,["Man"]],
[[["marifield",30]],"Unprocessed_marijuana",20,6,["Man"]],
[[["marifield2",30]],"Unprocessed_marijuana",20,6,["Man"]],
[[["lsdfield",30]],"Unprocessed_lsd",20,6,["Man"]],
[[["heroinfield",30]],"Unprocessed_heroin",20,6,["Man"]],
[[["heroinfield2",30]],"Unprocessed_heroin",20,6,["Man"]],
[[["quarry1",150]],"sand",20,10,["truck"]],
[[["quarry2",150]],"sand",20,10,["truck"]],
[[["quarry3",150]],"sand",20,10,["truck"]]
//[[["farmarea1",70]],"getreide",20,10,["tractor"]],
//[[["farmarea2",70]],"getreide",20,10,["tractor"]],
//[[["farmarea3",70]],"getreide",20,10,["tractor"]]

];

Miningarray =

[

[["OilArea1",15],"Oil",12],
[["OilArea2",15],"Oil",12],
[["OilArea3",15],"Oil",12],
[["IronArea",15],"iron",12],
[["CopperArea",15],"copper",12],
[["GlassArea",30],"glass",12],
[["GoldArea",15],"Gold",12],
[["DiamondArea",15],"Diamond rock",15],
[["SilverArea",15],"Silver",15],
[["RubiesArea",15],"Rubies",15],
[["PlatinumArea",15],"Platinum",10],
[["SiliconArea",30],"silicon",12],
[["BlackPowderArea",30],"black powder",12],
[["WoodArea",30],"wood",12],
[["CoalArea",30],"coal",12]

];

fishingarray =
[

[["sharkarea",30], "shark",12],
[["eelarea",30], "eel",12],
[["whalearea",30], "whale",12],
[["dolphinarea",30], "dolphin",12]

];
