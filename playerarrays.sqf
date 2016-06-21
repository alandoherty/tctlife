waitUntil {((alive player) or (local server))};

if(local server and !local player)then{dedicatedServer = true};
if(local server and local player)then{hostedServer = true};

playerstringarray = ["Civ1","Civ2","Civ3","Civ4","Civ5","Civ6","Civ7","Civ8","Civ9","Civ10","Civ11","Civ12","Civ13","Civ14","Civ15","Civ16","Civ17","Civ18","Civ19","Civ20","Civ21","Civ22","Civ23","Civ24","Civ25","Civ26","Civ27","Civ28","Civ29","Civ30","Civ31","Civ32","Civ33","Civ34","Civ35","Civ36","Civ37","Civ38","Civ39","Civ40","Civ41","Civ42","Civ43","Civ44","Civ45","Civ46","Civ47","Civ48","Civ49","Civ50","Civ51","Civ52","Civ53","Civ54","Civ55","Civ56","Civ57","Civ58","Civ59","Civ60","Civ61","Civ62","Civ63","Civ64","Civ65","Civ66","Civ67","Civ68","Civ69","Civ70","Civ71","Civ72","Civ73","Civ74","Civ75","Civ76","Civ77","Civ78","Civ79","Civ80","Cop1","Cop2","Cop3","Cop4","Cop5","Cop6","Cop7","Cop8","Cop9","Cop10","Cop11","Cop12","Cop13","Cop14","Cop15"];

for [{_i=0}, {_i < (count playerstringarray)}, {_i=_i+1}] do {if (isNil (playerstringarray select _i)) then { call compile format["%1 = objNull;", (playerstringarray select _i)]; }; };

playerarray = [civ1,civ2,civ3,civ4,civ5,civ6,civ7,civ8,civ9,civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20,civ21,civ22,civ23,civ24,civ25,civ26,civ27,civ28,civ29,civ30,civ31,civ32,civ33,civ34,civ35,civ36,civ37,civ38,civ39,civ40,civ41,civ42,civ43,civ44,civ45,civ46,civ47,civ48,civ49,civ50,civ51,civ52,civ53,civ54,civ55,civ56,civ57,civ58,civ59,civ60,civ61,civ62,civ63,civ64,civ65,civ66,civ67,civ68,civ69,civ70,civ71,civ72,civ73,civ74,civ75,civ76,civ77,civ78,civ79,civ80,cop1,cop2,cop3,cop4,cop5,cop6,cop7,cop8,cop9,cop10,cop11,cop12,cop13,cop14,cop15];
civstringarray    = ["Civ1","Civ2","Civ3","Civ4","Civ5","Civ6","Civ7","Civ8","Civ9","Civ10","Civ11","Civ12","Civ13","Civ14","Civ15","Civ16","Civ17","Civ18","Civ19","Civ20","Civ21","Civ22","Civ23","Civ24","Civ25","Civ26","Civ27","Civ28","Civ29","Civ30","Civ31","Civ32","Civ33","Civ34","Civ35","Civ36","Civ37","Civ38","Civ39","Civ40","Civ41","Civ42","Civ43","Civ44","Civ45","Civ46","Civ47","Civ48","Civ49","Civ50","Civ51","Civ52","Civ53","Civ54","Civ55","Civ56","Civ57","Civ58","Civ59","Civ60","Civ61","Civ62","Civ63","Civ64","Civ65","Civ66","Civ67","Civ68","Civ69","Civ70","Civ71","Civ72","Civ73","Civ74","Civ75","Civ76","Civ77","Civ78","Civ79","Civ80"];
civarray          = [civ1,civ2,civ3,civ4,civ5,civ6,civ7,civ8,civ9,civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20,civ21,civ22,civ23,civ24,civ25,civ26,civ27,civ28,civ29,civ30,civ31,civ32,civ33,civ34,civ35,civ36,civ37,civ38,civ39,civ40,civ41,civ42,civ43,civ44,civ45,civ46,civ47,civ48,civ49,civ50,civ51,civ52,civ53,civ54,civ55,civ56,civ57,civ58,civ59,civ60,civ61,civ62,civ63,civ64,civ65,civ66,civ67,civ68,civ69,civ70,civ71,civ72,civ73,civ74,civ75,civ76,civ77,civ78,civ79,civ80];
copstringarray    = ["Cop1","Cop2","Cop3","Cop4","Cop5","Cop6","Cop7","Cop8","Cop9","Cop10","Cop11","Cop12","Cop13","Cop14","Cop15"];
coparray          = [cop1, cop2, cop3, cop4, cop5, cop6, cop7, cop8, cop9, cop10, cop11, cop12, cop13, cop14, cop15  ];


rolenumber = 0;

for [{_i=0}, {_i < (count playerarray)}, {_i=_i+1}] do

{

call compile format["if ((playerarray select %1) == player) then {rolenumber = (%1 + 1);}", _i];

};

role = player;



if (player in coparray) then

{
iscop          = true;
isciv	       = false;
rolecop        = 1;
sidenumber     = rolenumber - civscount;
longrolenumber = 1100 + sidenumber;
rolestring     = format["Cop%1", sidenumber];
};

if (player in civarray) then

{

isciv          = true;
iscop          = false;
rolecop        = 0;
sidenumber     = rolenumber;
longrolenumber = 1000 + sidenumber;
rolestring     = format["Civ%1", sidenumber];

};

call compile format["old%1 = objnull", player];