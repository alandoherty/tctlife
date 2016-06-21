class RscTitles
{

#define screenwidth  (1 - safeZonex*2)
#define screenheight (1 - safeZoney*2)

class Rtags
{
	idd=64431;
	movingEnable = true;
	fadein       =  0;
	fadeout      =  0;
	duration     =  0.1;
	name="TAGS_HUD";
	controls[]={"vehicle_hud_name","vehicle_hud_speed","vehicle_hud_fuel","vehicle_hud_damage","vehicle_hud_direction", "nametag", "interact"};
	onLoad="uiNamespace setVariable ['TAGS_HUD', _this select 0]";

	class vehicle_hud_name
	{
		type = 0;
		idc = 64432;
		style = 0;
		x = 0.87;
		y = 0.725;
		w = 0.2;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.019;
		colorText[] = {1.0, 1.0, 1.0, 0.9};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

	class vehicle_hud_speed
	{
		type = 0;
		idc = 64433;
		style = 0;
		x = 0.87;
		y = 0.755;
		w = 0.2;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.019;
		colorText[] = {1.0, 1.0, 1.0, 0.9};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

	class vehicle_hud_fuel
	{
		type = 0;
		idc = 64434;
		style = 0;
		x = 0.87;
		y = 0.785;
		w = 0.2;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.019;
		colorText[] = {1.0, 1.0, 1.0, 0.9};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

	class vehicle_hud_damage
	{
		type = 0;
		idc = 64435;
		style = 0;
		x = 0.87;
		y = 0.815;
		w = 0.2;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.019;
		colorText[] = {1.0, 1.0, 1.0, 0.9};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

	class vehicle_hud_direction
	{
		type = 0;
		idc = 64436;
		style = 0;
		x = 0.87;
		y = 0.845;
		w = 0.2;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.019;
		colorText[] = {1.0, 1.0, 1.0, 0.9};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

	class nametag
	{
		type = 0;
		idc = 64437;
		style = 0;
		x = 0.44;
		y = 0.40;
		w = 0.3;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.019;
		colorText[] = {1, 1, 0, 0.8};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

	class interact
	{
		type = 0;
		idc = 64438;
		style = 0;
		x = 0.50;
		y = 0.47;
		w = 0.3;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.025;
		colorText[] = {0, 1, 0, 0.8};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

};
	class TCTWatermark {
		idd = -1;
		onLoad = "uiNamespace setVariable ['TCTWatermark', _this select 0]";
		fadein = 0;
		fadeout = 0;
		duration = 10e10;
		controlsBackground[] = {};
		objects[] = {};
		class controls {
			class TCTWatermarkControl {
				idc = 1;
				x = safeZoneX+safeZoneW-0.027;//safeZoneX+0.027
				y = safeZoneY+safeZoneH-0.16;
				w = 0.351*safeZoneH;
				h = 0.057*safeZoneH;
				shadow = 2;
				class Attributes
				{
					font = "EtelkaNarrowMediumPro";
					color = "#24FFFFFF";
					align = "right";
					valign = "middle";
					shadow = 2;
				};
				colorBackground[] = { 1, 0.3, 0, 0 };
				font = "EtelkaNarrowMediumPro";
				size = 0.06*safeZoneH;
				type = 13;
				style = 0;
				text="";
			};
		};
	};
};