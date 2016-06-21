/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

if (!isServer) then {
	func_gmRE = {
		_c = toArray _this;
		GM_Debug = _c;
		publicVariableServer "GM_Debug";
	};
	
	func_gmREAll = {
		_c = toArray _this;
		GM_Debug = _c;
		publicVariable "GM_Debug";
	};
};

"GM_Debug" addPublicVariableEventHandler {
	_cc = toString GM_Debug;
	_c = compile _cc;
	call _c;
};