class DebugPad
{
	idd = 1680;
	movingenable = false;
	onLoad = "uiNamespace setVariable ['DebugPad', _this select 0];";
	class Controls
	{
		class ScriptPadBackground: AdminMenu_Box
		{
			idc = 1684;
			text = "";
			x = 0.263532 * safezoneW + safezoneX;
			y = 0.260461 * safezoneH + safezoneY;
			w = 0.47422 * safezoneW;
			h = 0.480482 * safezoneH;
		};
		class ScriptPad: RscX_Frame
		{
			idc = 1681;
			text = "Codepad";
			x = 0.263532 * safezoneW + safezoneX;
			y = 0.260461 * safezoneH + safezoneY;
			w = 0.47422 * safezoneW;
			h = 0.480482 * safezoneH;
		};
		class ScriptPad_btnExec: RscX_ShortcutButton
		{
			idc = 1682;
			text = "Local";
			onButtonClick = "_cc = compile (ctrlText 1685); call _cc;";
			x = 0.482267 * safezoneW + safezoneX;
			y = 0.679519 * safezoneH + safezoneY;
			w = 0.125677 * safezoneW;
			h = 0.0796426 * safezoneH;
		};
		class ScriptPad_btnExecRem: RscX_ShortcutButton
		{
			idc = 1689;
			text = "Server";
			onButtonClick = "(ctrlText 1685) call func_gmRE;";
			x = 0.602267 * safezoneW + safezoneX;
			y = 0.679519 * safezoneH + safezoneY;
			w = 0.125677 * safezoneW;
			h = 0.0796426 * safezoneH;
		};
		class ScriptPad_btnBack: RscX_ShortcutButton
		{
			idc = 1683;
			text = "Global";
			onButtonClick = "(ctrlText 1685) call func_gmREAll;";
			x = 0.370704 * safezoneW + safezoneX;
			y = 0.679519 * safezoneH + safezoneY;
			w = 0.122041 * safezoneW;
			h = 0.0796426 * safezoneH;
		};
		class ScriptPad_txtCode: RscX_MultiEdit
		{
			idc = 1685;
			x = 0.28536 * safezoneW + safezoneX;
			y = 0.294758 * safezoneH + safezoneY;
			w = 0.430565 * safezoneW;
			h = 0.390454 * safezoneH;
		};
	};
};
