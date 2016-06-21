"dynamicBlur" ppEffectEnable true;



While{true}do

{

"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 10;

waituntil{((nearestObject [getpos player, "1Rnd_Smoke_M203","SmokeShellGreen"]) distance player < 7) and (getpos (nearestObject [getpos player, "1Rnd_Smoke_M203","SmokeShellGreen"]) select 2 < 0.1)};

"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [20];
"dynamicBlur" ppEffectCommit 0;


sleep 5;

};
