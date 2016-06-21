/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

_target = _this select 0;

mycv = cameraView;
spect = 
{
	_splr = _this select 0;
	F3_EH = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 0x3D) then {spectate = false;};"];	
	(vehicle _splr) switchCamera "EXTERNAL";
	titleText ["Spectating...","PLAIN DOWN"];titleFadeOut 4;
	waitUntil { !(alive _splr) or !(alive player) or !(spectate)};
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", F3_EH];
	player switchCamera mycv;	 
};

if (isNil "spectate") then {spectate = true;} else {spectate = !spectate;};
if (spectate) then 
{
	[format["%1 spectated %2",(name player),(name _target)]] call Admin_REGChat;
	[_target] call spect;
	spectate = false;
};

if (!spectate) then 
{	
	[format["%1 stopped spectating %2",(name player),(name _target)]] call Admin_REGChat;
	titleText ["Back to player...","PLAIN DOWN"];
	titleFadeOut 4;
};