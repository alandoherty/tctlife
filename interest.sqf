BANK_zinsen =

{

if (bankaccount > 0) then {
bankaccount = round(bankaccount+(bankaccount/100*zinsen_prozent));
player groupChat format [localize "STRS_bank_zinsen", (bankaccount call ISSE_str_IntToStr), (zinsen_prozent call ISSE_str_IntToStr)];
};

};

if (isServer) then {while {true} do {sleep zinsen_dauer;"[] spawn BANK_zinsen;" call broadcast;};};
