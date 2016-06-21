_civmenu_civ = _this select 0;
closeDialog 1620;
(format ["if (rolestring == ""%1"") then {[""inventcheck"", ""%2""] execVM ""civmenu.sqf"";}", _civmenu_civ, rolestring]) call broadcast;