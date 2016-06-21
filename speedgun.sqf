cameraToggle = false;

while {true} do
{
	while {cameraToggle and iscop and currentWeapon player == "Binocular_Vector"} do
	{
		_target = CursorTarget;
		hintSilent format["Speed is %1km/h!", speed _target - speed _target % 0.1];
		sleep 0.2;
	};

sleep 0.5;
};
