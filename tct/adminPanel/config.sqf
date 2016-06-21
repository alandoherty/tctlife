/*
 _____ _            _____                            _____                    
|_   _| |          /  __ \                          |_   _|                   
  | | | |__   ___  | /  \/_ __ ___  __ _ _ __ ___     | | ___  __ _ _ __ ___  
  | | | '_ \ / _ \ | |   | '__/ _ \/ _` | '_ ` _ \    | |/ _ \/ _` | '_ ` _ \ 
  | | | | | |  __/ | \__/\ | |  __/ (_| | | | | | |   | |  __/ (_| | | | | | |
  \_/ |_| |_|\___|  \____/_|  \___|\__,_|_| |_| |_|   \_/\___|\__,_|_| |_| |_|
*/

/* defines */
adminMenu_dialog = 1620;
adminMenu_list = 1628;

/* groups [id,name,immunity,perms[]] */
admin_groups = [
	["admin","Admin",1,[
		"tgoto",
		"mwarn",
		"mkill"
	]],
	["staff","Staff",2,[
		"iopen",
		"tgoto",
		"tbring",
		"mkill",
		"mspectate",
		"mstrip"
	]],
	["owner","Owner",3,[
		"tbring",
		"tgoto",
		"tmap",
		"codepad",
		"mkill",
		"mwarn",
		"sweapon",
		"svehicle",
		"mpmarkers",
		"mheal",
		"mfixride",
		"igive",
		"iopen",
		"mspectate",
		"mstrip",
		"mdelete",
		"mreset"
	]],
	["developer","Developer",2,[
		"tbring",
		"tgoto",
		"tmap",
		"codepad",
		"mkill",
		"mwarn",
		"sweapon",
		"svehicle",
		"mpmarkers",
		"mheal",
		"mfixride",
		"igive",
		"iopen",
		"mspectate",
		"mstrip",
		"mdelete",
		"mreset"
	]]
];

/* admins [id,group] */
admin_vals = [
	["124947142","developer"], //killer
	["76397766","owner"], //alan
	["100329670","staff"], //larry
	["82796806","staff"], //smite
	["76561198161088972", "owner"] //bacon
];

/* commands [control,id,runonself,closedialog] */
admin_cmds = [
	[1629,"tbring",false,true],
	[1630,"tgoto",false,true],
	[1631,"tmap",true,true],
	[1634,"iopen",true,false],
	[1635,"igive",true,false],
	[1636,"itake",true,false],
	[1638,"sweapon",true,false],
	[1639,"svehicle",true,false],
	[1640,"sobj",true,false],
	[1656,"mkill",true,false],
	[1657,"mheal",true,false],
	[1658,"mwarn",true,true],
	[1659,"mfixride",true,true],
	[1660,"mpmarkers",true,true],
	[1661,"mspectate",false,true],
	[1986,"mstrip",true,true],
	[1987,"mdelete",true,true],
	[1988,"mreset",true,true]
];