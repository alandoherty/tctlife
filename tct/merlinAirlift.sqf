/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

TCT_MerlinAirliftVehicles = [
	"BAF_FV510_W"
];
tctMIL = false;

tctAirlift = player addAction ["Pickup Vehicle","tct\merlinAirliftAction.sqf",[true],1,false,true,"","ismil and (not tctMIL) and (typeOf (vehicle player) == ""BAF_Merlin_HC3_D"")"];
tctAirliftDrop = player addAction ["Drop Vehicle","tct\merlinAirliftAction.sqf",[false],1,false,true,"","ismil and tctMIL and (typeOf (vehicle player) == ""BAF_Merlin_HC3_D"")"];

spawn {
	while (true) do {
		if (isNil "tctAirlift") then
		sleep 0.5;
	};
};