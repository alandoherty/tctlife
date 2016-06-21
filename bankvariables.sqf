if(debug)then{['moneh', 1000000] call INV_addinventoryitem};

startmoneh = 20000;

maxcopbonus		 = 25000;
maxcivbonus 	 	 = 22000;
robb_timeSperre          = 1200;
local_useBankPossible    = true;
maxinsafe                = 10000000;
BankRaubKontoverlust     = 4000;
ShopRaubKontovershop     = 0;
ShopRaubProzentVershop   = 0;
rblock			 = 0;
stolencash		 = 0;
Maxbankrobpercentlost    = 0.05;
//Added (1/24/2012 IsHoOtYoUnOw)
MaxbankrobpercentlostA   = 0.10;
//Added (1/24/2012 IsHoOtYoUnOw)
MaxbankrobpercentlostB   = 0.20;
bank_steuer              = 5;
zinsen_prozent           = 5;
zinsen_dauer             = 1200;
robenable              	 = true;
bankaccount               = startmoneh;
shopflagarray            = [shop1,shop2,shop3,shop4];
bankflagarray            = [mainbank, copbank, coppbank_1, atm1, atm2, atm3, atm4, atm5, atm6, atm8, atm11, atm12, atm13, atm14, atmpf, atmins, pmcatm, adminbank];
speedcamarray            = [speed1,speed2,speed3,speed4,speed5];
drugsellarray		 = [mdrugsell,cdrugsell,ldrugsell,hdrugsell];
TankstellenArray         =

[

copfuel,
(nearestobject[getpos fuelshop1,"Land_Ind_FuelStation_Feed_Ep1"]),
(nearestobject[getpos fuelshop2,"Land_Ind_FuelStation_Feed_Ep1"]),
(nearestobject[getpos fuelshop3,"Land_Ind_FuelStation_Feed_Ep1"]),
(nearestobject[getpos fuelshop4,"Land_Ind_FuelStation_Feed_Ep1"]),
(nearestobject[getpos fuelshop5,"Land_Ind_FuelStation_Feed_Ep1"]),
(nearestobject[getpos fuelshop6,"Land_Ind_FuelStation_Feed_Ep1"]),
(nearestobject[getpos fuelshop7,"Land_Ind_FuelStation_Feed_Ep1"]),
(nearestobject[getpos fuelshop8,"Land_Ind_FuelStation_Feed_Ep1"]),
(nearestobject[getpos fuelshop9,"Land_Ind_FuelStation_Feed_Ep1"])
];