//................................
//	Fill Ammo Box Script by Lzryde (v0.2)
//................................

// Settings
_amountWeapon = 20;
_amountAmmo = 100;
_refreshTime = 360; // refill every 5 minutes

_this allowDamage false;

// Loop forever
while {true} do
{

// Clear box
clearWeaponCargo _this;
clearMagazineCargo _this;

// Fill box

// US Army Weapons & Ammo
_this addWeaponCargo ["M16A2", _amountWeapon]; _this addMagazineCargo ["30Rnd_556x45_Stanag", _amountAmmo];
_this addWeaponCargo ["M16A2GL", _amountWeapon]; _this addMagazineCargo ["1Rnd_HE_M203", _amountAmmo];

_this addWeaponCargo ["M4A1", _amountWeapon];

_this addWeaponCargo ["Colt1911", _amountWeapon]; _this addMagazineCargo ["7Rnd_45ACP_1911", _amountAmmo];
_this addWeaponCargo ["M9", _amountWeapon]; _this addMagazineCargo ["15Rnd_9x19_M9", _amountAmmo];

_this addMagazineCargo ["HandGrenade_West", _amountAmmo];


_this addWeaponCargo ["glock17_EP1", _amountWeapon]; _this addMagazineCargo ["17Rnd_9x19_glock17", _amountAmmo];

// Czeck Weapons
_this addWeaponCargo ["Sa58P_EP1", _amountWeapon]; _this addMagazineCargo ["30Rnd_762x39_SA58", _amountAmmo];
_this addWeaponCargo ["Sa58V_EP1", _amountWeapon];

_this addWeaponCargo ["Sa61_EP1", _amountWeapon]; _this addMagazineCargo ["20Rnd_B_765x17_Ball", _amountAmmo];

// Other Weapons
_this addWeaponCargo ["UZI_EP1", _amountWeapon]; _this addMagazineCargo ["30Rnd_9x19_UZI", _amountAmmo];


_this addWeaponCargo ["Binocular", _amountWeapon];
_this addWeaponCargo ["NVGoggles", _amountWeapon];
//_this addWeaponCargo ["ItemCompass", _amountWeapon];
//_this addWeaponCargo ["ItemGPS", _amountWeapon];
//_this addWeaponCargo ["ItemMap", _amountWeapon];
//_this addWeaponCargo ["ItemRadio", _amountWeapon];
//_this addWeaponCargo ["ItemWatch", _amountWeapon];

// Taki Weapons & Ammo
_this addWeaponCargo ["AK_74", _amountWeapon]; _this addMagazineCargo ["30Rnd_545x39_AK", _amountAmmo];

_this addWeaponCargo ["AK_74_GL", _amountWeapon]; _this addMagazineCargo ["1Rnd_HE_GP25", _amountAmmo];


_this addWeaponCargo ["AK_47_M", _amountWeapon]; _this addMagazineCargo ["30Rnd_762x39_AK47", _amountAmmo];
_this addWeaponCargo ["AK_47_S", _amountWeapon];
_this addWeaponCargo ["AKS_74", _amountWeapon];
_this addWeaponCargo ["AKS_74_U", _amountWeapon];
_this addWeaponCargo ["FN_FAL", _amountWeapon]; _this addMagazineCargo ["20Rnd_762x51_FNFAL", _amountAmmo];

_this addWeaponCargo ["LeeEnfield", _amountWeapon]; _this addMagazineCargo ["10x_303", _amountAmmo];

_this addWeaponCargo ["PK", _amountWeapon]; _this addMagazineCargo ["100Rnd_762x54_PK", _amountAmmo];

_this addWeaponCargo ["SVD", _amountWeapon]; _this addMagazineCargo ["10Rnd_762x54_SVD", _amountAmmo];


_this addWeaponCargo ["Makarov", _amountWeapon]; _this addMagazineCargo ["8Rnd_9x18_Makarov", _amountAmmo];
_this addWeaponCargo ["revolver_EP1", _amountWeapon]; _this addMagazineCargo ["6Rnd_45ACP", _amountAmmo];


_this addWeaponCargo ["Igla", _amountWeapon]; _this addMagazineCargo ["Igla", _amountAmmo];
_this addWeaponCargo ["RPG7V", _amountWeapon]; _this addMagazineCargo ["PG7V", _amountAmmo];
_this addMagazineCargo ["PG7VL", _amountAmmo];
_this addMagazineCargo ["PG7VR", _amountAmmo];
_this addMagazineCargo ["OG7", _amountAmmo];


_this addMagazineCargo ["HandGrenade", _amountAmmo];

// Wait the duration of _refreshTime
sleep _refreshTime;
};