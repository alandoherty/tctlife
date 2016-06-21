 // executes from atihacking.sqf server sided...
if ((isServer) or (isDedicated)) then
{
    IamaLooser=[false,null];
    while {(true)} do
    {
        _check = IamaLooser select 0;
        if (_check) then
        {
            _cheater = IamaLooser select 1;
            serverCommand Format["#exec ban %1",_cheater];
            IamaLooser=[null,null];
            publicVariable "IamaLooser";
        };
        sleep 0.25;
    };
};