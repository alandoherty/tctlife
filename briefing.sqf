 if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Updates"];
player createDiarySubject ["rules","Rules"];
player createDiarySubject ["controls","TLR Controls"];
player createDiarySubject ["bugs","Official Website"];
player createDiarySubject ["donations","Donations"];
player createDiarySubject ["credits","TS3&Credits"];
player createDiarySubject ["specialitems","Special Items"];


player createDiaryRecord ["specialitems",
[
"Diamond Ring",
"
Needs:<br/>
Diamond: 10<br/>
"
]
];
player createDiaryRecord ["specialitems",
[
"Expensive Diamond Ring",
"
Needs:<br/>
Diamond:15<br/>
Gold: 10<br/>
"
]
];
player createDiaryRecord ["specialitems",
[
"Platinum Ring",
"
Needs:<br/>
Platinum: 10<br/>
"
]
];
player createDiaryRecord ["specialitems",
[
"Expensive Platinum Ring",
"
Needs:<br/>
Platinum: 15<br/>
Rubies: 10<br/>
"
]
];
player createDiaryRecord ["specialitems",
[
"Steel",
"
Needs:<br/>
Iron: 2<br/>
"
]
];
player createDiaryRecord ["specialvehicles",
[
"Transport Little Bird",
"
Needs:<br/>
Money: 35000<br/>
"
]
];
player createDiaryRecord ["specialvehicles",
[
"Landrover",
"
Needs:<br/>
Money: 15000<br/>
"
]
];
player createDiaryRecord ["specialweps",
[
"FAL + Night Scoped FAL",
"
Needs:<br/>
Money: 10000<br/>
"
]
];
player createDiaryRecord ["specialweps",
[
"Lee-Enfield",
"
Needs:<br/>
Money: 5000<br/>
"
]
];
player createDiaryRecord ["specialweps",
[
"RPG",
"
Needs:<br/>
Money: 10000<br/>
"
]
];
player createDiaryRecord ["specialweps",
[
"M60A4",
"
Needs:<br/>
Money: 10000<br/>
"
]
];
player createDiaryRecord ["specialweps",
[
"SVD",
"
Needs:<br/>
Money: 10000<br/>
"
]
];
player createDiaryRecord ["specialweps",
[
"AKPSO",
"
Needs:<br/>
Money: 15000<br/>
"
]
];



player createDiaryRecord ["credits",
[
"",
"
TS3 Info;<br/>
Address: tctgames.typefrag.com<br/>
<br/>
Official website: http://www.tctgames.com<br/>
Join the forums, make suggestions and voice complaints!<br/>



<br/>
Original scripts by Issetea and Fewo<br/>
Additional life scripts by Pogoman, Gman, TeeTime and HarryWorner<br/>
Ported to OA by EddieV, ported to Chernarus by Kryklin and Nata<br/>
Current version by Kryklin , [TCT] Alan <br/>
<br/>
Special thanks to The ARMA Community<br/>
<br/>
Special Thanks to TCTGames also for hosting the game.<br/>
"
]
];

player createDiaryRecord ["bugs",
[
"",
"
Please report bugs to admins!<br/>
Website: http://www.tctgames.com<br/>
Teamspeak: tctgames.typefrag.com<br/>
<br/>
<br/>
We look forward to hearing from you!<br/>
"
]
];

player createDiaryRecord ["controls",
[
"",
"
Key: Function<br/>
Description<br/>
<br/>
General keys:<br/>
1: Stats<br/>
Displays basic info about the player and server. Tells you how much money you have, who is wanted, etc.
<br/>
2: Inventory<br/>
Shows items in player inventory. Allows you to drop, use, and give them to other people. (Note: to give another player a copy of your car keys, first press Use while Keychain is selected)
<br/>
3: Hands Up<br/>
Raises hands to indicate surrender. Police can search and handcuff a civilian while their hands are raised.
<br/>
4: Hands Down / Quick Draw<br/>
Cancels the current animation. Can be used to quick draw a weapon.
<br/>
5: Gang Menu (civs only)<br/>
Civs can access the gang menu to view, join and create gangs.
<br/>
`(tilde key (to the left of the 1 key): Cop Menu (cops only)<br/>
Cops can set bounties, release jailed civilians and more. When accessed in a vehicle, choosing Sat Cam in cop menu gives an overhead satellite view of the map.
<br/>
<br>F (in a vehicle): Toggle Siren On/Off (cops only)<br/>
Police can turn on a siren while driving vehicles to signal to civilians to pull over.
<br/>
E: Action<br/>
The basic action button.  Used to interact with shops, ATM's, and other players (while they are stunned and/or restrained).
<br/>
T: Access Vehicle Trunk<br/>
when you own a car or other vehicle, you can access that car's inventory by standing next to the car and pressing T.  You will then be shown two box's.  The left box is what is in the car, and the right box is what is in your inventory.  Highlight the object you want to transfer, then select the amount and press the button on the side that has the item.  Car's hold a certain amount of weight just like your charactor so be aware of what you stash in there.  Also, if your vehicle is destroyed then you will loose whatever you place in here.  Coppers can search for drugs or other ileagal items.  If they find them in your car it will disappear and the coppers gain money equal to the value of the drugs.
<br/>
F: Remove Safety<br/>
When unholstering a weapon, you may need to press F before it will fire. F is also a default ArmA 2 key that adjusts the firing mode of the weapon.
<br/>
Left shift+F: Pistol whip / Rifle butt<br/>
Disables and disarms another player, allowing you to rob them by pressing E. Only works if you have a weapon.
<br/>
0-0-6, 0-0-7, 0-0-8: shout outs<br/>
Press these buttons to shout out measages on the fly.  For civilians the default says ""Don't Shoot, I surrender!"".  For cops, it says a variety of things but mainly says, ""Put up your hands or your dead"" kinda thing.
<br/>
0-0: options<br/>
this should give you the options for video settings, shout outs, fix head bug, and even a quick-brief tutorial on TLR.""
<br/>
"
]
];

player createDiaryRecord ["rules",
[
"Rules and Guidelines",
"
For the Arma 2 OA Community!<br/>
<br/>
<br/>
THE MOST IMPORTANT RULE<br/>
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::<br/>
::::Only kill if your life is in danger::::<br/>
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::<br/>
1. Cops may stun non-complient civs<br/>
2. Cops may restrain civs for their own safety<br/>
"
]
];
player createDiaryRecord ["rules",
[
"Rules",
"
Do not use global chat to complain about another player<br/>
Report the incident on the forums or speak to an admin on teamspeak.<br/>
Players not on our teamspeak will be kicked for players on teamspeak<br/>
If the player is not on TS is able to join TS they will be given a few minutes to do so.<br/>
Any cop who breaks a cop rule will be asked to go to civ side until an admin feels that player is able to play cop again<br/>
If the cop does not go to civ side when asked or argues to an admin they will be kicked and possibly banned.<br/>
Respawning while restrained or being stunned is cheating and it ruins the role play on the server.<br/>
Anyone caught doing this will be kicked as a warning. If done again that player will be banned.<br/>
"
]
];
player createDiaryRecord ["rules",
[
"Communication rules",
"
Giving out important information like enemy positions or where you died while you are dead is against the rules.<br/>
Saying for example, 'nice shot' is acceptable.<br/>
Teamspeak 'spying' is CHEATING. Joining an opponents teamspeak channel to gather information about an opponent is teamspeak 'cheating'.<br/>
Try to use global chat only for emergencies. Players who spam global chat will be warned, if the player does not stopped they will be kicked.<br/>
"
]
];
player createDiaryRecord ["rules",
[
"Misc. Rules",
"
Speed limits are: 50kph in town, 90kph outside of town and 120kph on the coast road<br/>
ALWAYS drive on the RIGHT-hand side of the road. This also applies for Police unless in pursuit.<br/>
Pistols should be holstered inside the city, rifles should be stored in your vehicle.<br/>
If a civ has an unholsterd LICENSED weapon in the city and is not using it in a crime the cops may take the weapon away and give a 3k fine, jail time is not appropriate. If the weapon is unlicensed but not being used in a crime a 5k fine or 1 minute in jail is the punishment<br/>
Civs can be an informant for police and vice versa. That does not give the informant the right to join another teamspeak channel. The informant must use a mobile phone or meet hit contacts in game.<br/>
Anything the informant hears in teamspeak cannot be given.<br/>
The informant must see the act they are reporting or be told about an event that is going to happen through game chat<br/>
All civilian armed vehicles are illegal everywhere.<br/>
"
]
];
player createDiaryRecord ["rules",
[
"Searches",
"
Random searches are not allowed<br/>
Places where cops can search a civ:<br/>
At the scene of a crime when the cops are unsure of who commited the crime. The Cops needs reasonable, articuable suspicion and the Civ should be told why.<br/>
If a civ is found out of their vehicle IN (not near) a drug field, or if a civ is out of their vehicle at a drug sell point.<br/>
Police can search/follow people on suspicion of leaving Terror or Assassination<br/>
Police can not search people on suspicion because they have left gang areas.<br/>
"
]
];
player createDiaryRecord ["rules",
[
"Gang Rules",
"
Gangs should not fight each other unless war has been declared between the gangs.<br/>
Neutralizing or capturing another gangs gang area, killing/attempting to kill or stealing from another gang are considered declarations of war.<br/>
Gangs can also declare war with each other by the gang leaders agreeing on having a war.<br/>
A gang member can't kill a member of another gang if they are unarmed. HOWEVER, if a member of another gang is in your gang area you may kill them, unarmed or not.<br/>
Even if a gang is at war, that does not give players the right to shoot enemy gang members when they are unarmed, unless they are in your gang area.<br/>
The terror camp counts as a gang area when gangs are at war. You may treat an enemy gang member at terror like he was in in your gang area. However camping terror is not allowed. Get your gear and leave.<br/>
"
]
];
player createDiaryRecord ["rules",
[
"DeathMatching",
"
Deathmatching is killing without reason.<br/>
For example, looking for cops to kill just to kill them.<br/>
Or if a civ kills another civ for no legitimate reason.<br/>
Civs and cops should only get into firefights for reasons relating to crimes.
You will be BANNED if you Deathmatch.<br/>
"
]
];
player createDiaryRecord ["rules",
[
"Rules for cops:",
"
COPS MAY RANDOM SEARCH WHEN MARSHAL LAW IS IN EFFECT. If not, officer must have probable cause to search. ie Searching a civ that was near the bank while the bank was being robbed.<br/>
LETHAL FORCE SHOULD ONLY BE USED IF YOUR LIFE IS IN IMMEDIATE DANGER.<br/>
All cops must carry a non lethal weapon or have a partner with a non lethal weapon. Cops caught with no non-lethals will be repremanded.<br/>
Cops must obey traffic laws, unless responding to a call. Police must have their lights and sirens on for legitimate reasons in order to speed.<br/>
If a vehicle is illegally parked or blocking an area they must ask the civ to move it, if the civ does not move the vehicle the police can impound it.<br/>
Any vehicle used in a crime must be impounded. (All illegal items in a vehicle are removed when its impounded) Any weapon used in a crime must be taken as evidence.<br/>
Tickets can be given by pressing E even if the recipient's hands are not up.<br/>
"
]
];
player createDiaryRecord ["rules",
[
"Aviation",
"
Only Police aircraft involved in an operation or chase are allowed to fly or land inside the city limits<br/>
City limits are marked by a striped blue rectangular marker on the map.<br/>
Civilian aircraft are never permitted to fly through or land inside city limits unless given permission by the police chief<br/>
If a civ aircraft is permitted to land in the no fly zone police may check the pilot for an air license. If the pilot does not have an air license the aircraft must stay grounded until the pilot can show the proper license to police.<br/>
If a civ aircraft lands outside of city limits, police may not check the pilot for his air license, unless they have specific reason to.<br/>
If an aircraft flies through city limits they may be asked to land and the pilot can be fined by the police and may be checked for his/her air license.<br/>
If the aircraft does not land when asked the pilot can be arrested. The police must wait until it lands in order to arrest the pilot. The aircraft cannot be shot down.<br/>
However if a wanted person is flying they will be asked to land (even if they are outside of city limits) if they do not land warning shots may be fired<br/>
If the aircraft does not land after the warning shots are fired the aircraft may be shot down by police<br/>Any armed aircraft may be shot down by police at any time<br/>
Armed aircraft are ALWAYS illegal for civs to own.<br/>
"
]
];
player createDiaryRecord ["rules",
[
"Government",
"
The President must be a civilian who is on teamspeak<br/>
The President may not be in a gang when in office <br/>
Cops should not be elected President.<br/>
A police chief can be appointed by an admin.<br/>
The police chief's job is to represent the police department.<br/>
"
]
];
player createDiaryRecord ["rules",
[
"Compensation",
"
If an unwanted civ is killed by police the officer at fault must compensate for the civ's losses.<br/>
If the officer and civ are unable to agree about how much that civ should be paid in damages the officer should pay 25k plus the amount of damage done to lost or damaged property such as vehicles.<br/>
If a civ is killed by another civ for no legitimate reason the civ at fault must pay compensation to the victim.<br/>
If a civ or cop is killed by accident but it was the victim's fault, compensation does not have to be paid<br/>
For example, if a civ OR cop runs in the middle of the street and gets hit by a car by accident, the civ who was hit is at vault and does not need to be paid compensation<br/>
However the civ at fault must tell the police to remove the wanted of the person who killed them by accident.<br/>
"
]
];
player createDiaryRecord ["rules",
[
"Bombing and Terrorism",
"
Terrorism is an occasial bomb or coordinated attack.<br/>
Terrorism IS NOT shooting a cop in the back with a revolver.<br/>
Terrorism is no excuse for deathmatching, but it can be good roleplay.<br/>
Bombing important buildings like the mosque or general factory is against the rules.<br/>
"
]
];
player createDiaryRecord ["rules",
[
"New Life",
"
The New Life rule is:<br/>
If killed by a cop or enemy gang member you get unwanted.<br/>
If you are killed by anyone else you are still wanted.<br/>
However you have a 2 min grace period from when you respawn<br/>
"
]
];

player createDiaryRecord ["donations",
[
"Donations",
"
Please go to http://www.tctgames.com and donate to keep the server up and running!<br/>
Donations<br/>
<br/>
Bronze Donator (£5-7)<br/>
Donator rank status on teamspeak and the forums<br/>
Our Gratitude and Thanks for donating.<br/>
<br/>
Silver Donator (£8-12)<br/>
All of the Bronze Donator rewards<br/>
$1000 Extra Per Paycheck (Only for TCTLife)<br/>
<br/>
Gold Donator (£13+)<br/>
All of the Bronze and Silver rewards<br/>
$3000 Extra Per Paycheck (Only for 404Life)<br/>
VIP Shop in game (Only for TCTLife)<br/>
"
]
];

player createDiaryRecord ["changelog",
[
"TCTLife",
"
10/06/2013 - Reasoner, Alan, Kryklin<br/>
- Fixed 'Jail' Lockout bug.<br/>
- Fixed VOIP being turned off.<br/>
- Fixed Chernarus Passport<br/>
- Fixed Taki Character Models<br/>
- Fixed bank times, robbing banks<br/>
- Fixed bank siren times<br/>
- Fixed Taki Character Names<br/>
- Fixed all Cops being in Soldier Skins<br/>
- Fixed Drug selling costs<br/>
- Fixed Cop Money, dependant on Level of Cop<br/>
- Fixed Engineer Licensces<br/>
- Fixed the amount Civs get when robbing gas stations<br/>
- Fixed 'You are not a Cop' base teleport<br/>
- Fixed all Petrol Stations<br/>
- Fixed all Petrol Station AI being inside<br/> 
- Fixed so Bank Insurance can only be bought at main bank<br/>
- Set to permanent daytime
- Altered MOTD and MOTDTS times; MOTD every 20mins and TS every 10<br/>
- Altered Bank Look<br/>
- Altered Civ Spawn Look<br/>
- Moved 'Sandblower' and 'SandQuarry' nearer to Civ Spawn<br/>
- Removed ability for Cops to buy AI<br/>
- Moved the Car Dealer with walls to protect<br/>
- Changed the Engineer License cost<br/>
"
]
];

player selectDiarySubject "donations";










