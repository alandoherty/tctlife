_array = _this select 3;
_art = _array select 0;
_type = _array select 1;

if (_art == "Burn") then
{


if (_type == "Marijuana") then
{
_plant = nearestObject [player, "FxWindGrass1"];
deleteVehicle _plant;
player groupChat localize "STRS_Drugs_Marijuana_Burn";
};

if (_type == "Cocaine") then
{
_plant = nearestObject [player, "AAPL001"];
deletevehicle _plant;
player groupchat localize "STRS_Drugs_Cocaine_Burn";
};

if (_type == "Olive") then
{
_plant = nearestObject [player, "AAPL055"];
deletevehicle _plant;
player groupchat localize "STRS_action_Drugs_olive_Burn";
};

};

if (_art == "Harvest") then
{

	if (_type == "Marijuana") then
	{
		_Weight = call INV_GetOwnWeight;
		_Plant = nearestobject [player, "marijuana"];
		deletevehicle _Plant;

		if (_Weight > 59) exitwith { player groupchat localize "STRS_inv_buyitems_get_zuschwer"; };
		if (IsCop) exitwith { player groupchat "Cops cannot do this"; };

		['Unprocessed_Marijuana', +(1)] call INV_AddInventoryItem;
		['MarijuanaSeed', +(2)] call INV_AddInventoryItem;

		player groupchat localize "STRS_Drugs_HarvestMarijuana";
	};

	if (_type == "Cocaine") then
	{
		_Weight = call INV_GetOwnWeight;
		_Plant = nearestobject [player, "AAPL001"];
		deletevehicle _Plant;

		if (_Weight > 59) exitwith { player groupchat localize "STRS_inv_buyitems_get_zuschwer"; };
		if (IsCop) exitwith { player groupchat "Cops cannot do this"; };

		['CocaineUP', +(1)] call INV_AddInventoryItem;
		['CocaineSeed', +(2)] call INV_AddInventoryItem;

		player groupchat localize "STRS_Drugs_HarvestCocaine";
	};

	if (_type == "Olive") then
	{
		_Weight = call INV_GetOwnWeight;
		_Plant = nearestobject [player, "AAPL055"];
		deletevehicle _Plant;

		if (_Weight > 59) exitwith { player groupchat localize "STRS_inv_buyitems_get_zuschwer"; };
		if (IsCop) exitwith { player groupchat "Cops cannot do this"; };

		['Olives', +(1)] call INV_AddInventoryItem;
		['OliveSeed', +(2)] call INV_AddInventoryItem;

		player groupchat localize "STRS_Drugs_Harvestolive";
	};
};


if (_art == "Destroy") then
{
	if (_type == "Drugshed") then
	{
		_Shed = nearestobject [player, "Land_hut_old02"];
		_Flag = nearestobject [player, "FlagCarrierWest"];

		if (IsCop) then
		{
			_plyer = vehicle player;
			(format ['hint "%1 has destroyed a drug shed and has recieved a $2500 bonus";', _plyer]) call ISSE_pub_execPstr;
			bankaccount = bankaccount + 2500;
		}
		else
		{
			player groupchat localize "STRS_Drugs_DestroyShed";
		};


		deleteVehicle _Shed;
		deleteVehicle _Flag;
	};
};

if (_art == "Process") then
{
	if (IsCop) exitwith { player groupchat "Cops cannot do this"; };

	if (_type == "Marijuana") then
	{
		_Ammount =  'MarijuanaUP' call INV_GetItemAmount;

		if (_Ammount > 0) then
		{
			player groupchat localize "STRS_Drugs_ProcessMarijuana";
			['MarijuanaUP', -(1)] call INV_AddInventoryItem;
			['marihuana', +(1)] call INV_AddInventoryItem;
		}
		else
		{
			player groupchat localize "STRS_Drugs_NoMarijuana";
		};

	};

	if (_type == "Cocaine") then
	{
		_Ammount = 'CocaineUP' call INV_GetItemAmount;

		if (_Ammount > 0) then
		{
			player groupchat localize "STRS_Drugs_ProcessCocaine";
			['CocaineUP', -(1)] call INV_AddInventoryItem;
			['kokain', +(1)] call INV_AddInventoryItem;
		}
		else
		{
			player groupchat localize "STRS_Drugs_NoCocaine";
		};
	};



};
