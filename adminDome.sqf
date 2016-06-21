if ((getPlayerUID player) in ["76397766","100329670","86736774","82796806","33168966","406657AX","92186310"]) exitWith { 
titleText ["Welcome TCT Staff!", "PLAIN DOWN", 3];
};
titleText ["You are entering restricted area!!", "PLAIN DOWN", 3];
sleep 3;
player setPos (getMarkerPos "notsf");