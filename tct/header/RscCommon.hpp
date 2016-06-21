#define FontM 			"Zeppelin32"
#define FontHTML 		"Zeppelin32"
#define CT_STATIC 		0
#define CT_BUTTON		1
#define CT_EDIT			2
#define CT_SLIDER		3
#define CT_COMBO		4
#define CT_LISTBOX		5
#define CT_TOOLBOX 		6
#define CT_CHECKBOXES 		7
#define CT_PROGRESS 		8
#define CT_HTML 		9
#define CT_STATIC_SKEW 		10
#define CT_ACTIVETEXT		11
#define CT_TREE 		12
#define CT_STRUCTURED_TEXT 	13
#define CT_CONTEXT_MENU 	14
#define CT_CONTROLS_GROUP 	15
#define CT_XKEYDESC 		40
#define CT_XBUTTON 		41
#define CT_XLISTBOX 		42
#define CT_XSLIDER 		43
#define CT_XCOMBO 		44
#define CT_ANIMATED_TEXTURE	45
#define CT_OBJECT 		80
#define CT_OBJECT_ZOOM 		81
#define CT_OBJECT_CONTAINER	82
#define CT_OBJECT_CONT_ANIM	83
#define CT_LINEBREAK		98
#define CT_USER			99
#define CT_MAP 			100
#define CT_MAP_MAIN		101
#define ST_LEFT			0
#define ST_RIGHT		1
#define ST_CENTER		2
#define ST_MULTI		16
#define ST_PICTURE		48
#define ST_FRAME		64
#define ST_SHADOW		256
#define ST_NO_RECT		512

//mission defines
class RscX_Text
{
	type              = CT_STATIC;
	idc               = -1;
	style             = ST_LEFT;
	colorBackground[] = {0, 0, 0, 0};
	colorText[]       = {1, 1, 1, 1};
	font              = FontM;
	sizeEx            = 0.02;
	text              = "";
};

class RscX_ExButton
{
	access = 0;
	type = 1;
	text = "";
	colorText[] = {0.8784,0.8471,0.651,1};
	colorDisabled[] = {0.4,0.4,0.4,1};
	colorBackground[] = {1,0.537,0,0.5};
	colorBackgroundDisabled[] = {0.95,0.95,0.95,1};
	colorBackgroundActive[] = {1,0.537,0,1};
	colorFocused[] = {1,0.537,0,1};
	colorShadow[] = {0.023529,0,0.0313725,1};
	colorBorder[] = {0.023529,0,0.0313725,1};
	soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
	soundPush[] = {"\ca\ui\data\sound\new1",0,0};
	soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
	soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
	style = 2;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	shadow = 2;
	font = "Zeppelin32";
	sizeEx = 0.03921;
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	borderSize = 0;
};

class RscX_ShortcutButton
{
	type = 16;
	x = 0.1;
	y = 0.1;
	class HitZone
	{
		left = 0.004;
		top = 0.029;
		right = 0.004;
		bottom = 0.029;
	};
	class ShortcutPos
	{
		left = 0.0145;
		top = 0.026;
		w = 0.0392157;
		h = 0.0522876;
	};
	class TextPos
	{
		left = 0.05;
		top = 0.034;
		right = 0.005;
		bottom = 0.005;
	};
	shortcuts[] = {};
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	color[] = {0.8784,0.8471,0.651,1};
	color2[] = {0.95,0.95,0.95,1};
	colorDisabled[] = {1,1,1,0.25};
	colorBackground[] = {1,1,1,1};
	colorBackground2[] = {1,1,1,0.4};
	class Attributes
	{
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	idc = -1;
	style = 0;
	default = 0;
	shadow = 2;
	w = 0.183825;
	h = 0.104575;
	periodFocus = 1.2;
	periodOver = 0.8;
	animTextureNormal = "\ca\ui\data\ui_button_normal_ca.paa";
	animTextureDisabled = "\ca\ui\data\ui_button_disabled_ca.paa";
	animTextureOver = "\ca\ui\data\ui_button_over_ca.paa";
	animTextureFocused = "\ca\ui\data\ui_button_focus_ca.paa";
	animTexturePressed = "\ca\ui\data\ui_button_down_ca.paa";
	animTextureDefault = "\ca\ui\data\ui_button_default_ca.paa";
	period = 0.4;
	font = "Zeppelin32";
	size = 0.03921;
	sizeEx = 0.03921;
	text = "";
	soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
	soundPush[] = {"\ca\ui\data\sound\new1",0,0};
	soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
	soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
	action = "";
	class AttributesImage
	{
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";
	};
};

class RscX_Frame
{
	type = 0;
	idc = -1;
	style = 64;
	shadow = 2;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	font = "Zeppelin32";
	sizeEx = 0.02;
	text = "";
};

class RscX_Background
{
	colorBackground[] = {0.14, 0.18, 0.13, 0.8};
	text              = "";
	type              = CT_STATIC;
	idc               = -1;
	style             = ST_LEFT;
	colorText[]       = {1, 1, 1, 1};
	font              = FontM;
	sizeEx            = 0.04;
};

class RscX_Picture
{
	access = 0;
    idc = -1;
    type = CT_STATIC;
    style = ST_PICTURE;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
    font = "Bitstream";
    sizeEx = 0;
    lineSpacing = 0;
    text = "";
    fixedWidth = 0;
    shadow = 0;
    x = 0;
    y = 0;
    w = 0.2;
    h = 0.15;
};

class RscX_Button
{
	type                      = CT_BUTTON;
	idc                       = -1;
	style                     = ST_CENTER;
	colorText[]               = {1, 1, 1, 1};
	font                      = FontHTML;
	sizeEx                    = 0.025;
	soundPush[]               = {"", 0.2, 1};
	soundClick[]              = {"ui\ui_ok", 0.2, 1};
	soundEscape[]             = {"ui\ui_cc", 0.2, 1};
	default                   = false;
	text                      = "";
	action                    = "";
	colorActive[]             = {0, 0, 0, 0};
	colorDisabled[]           = {0, 0, 0, 0.1};
	colorBackground[]         = {0.8,0.8,0.8,0.3};
	colorBackgroundActive[]   = {0.7,0.7,0.7,1};
	colorBackgroundDisabled[] = {1,1,1,0.5};
	colorFocused[]            = {0.84,1,0.55,1};
	colorShadow[]             = {0, 0, 0, 0.1};
	colorBorder[]             = {1, 1, 1, 0.1};
	offsetX                   = 0;
	offsetY                   = 0;
	offsetPressedX            = 0;
	offsetPressedY            = 0;
	borderSize                = 0;
	soundEnter[]              = {"", 0.15, 1};
};

class RscX_Edit
{
	type = CT_EDIT;
	idc = -1;
	style = ST_LEFT;
	font = FontHTML;
	sizeEx = 0.02;
	colorText[] = {1, 1, 1, 1};
	colorSelection[] = {0.5, 0.5, 0.5, 1};
	autocomplete = false;text = "";
};

class RscX_MultiEdit: RscX_Edit { 
    idc = -1; 
    x = 0.03; 
    y = 0.12; 
    w = 0.4; 
    h = 0.2; 
    style = 16; 
    text = ""; 
    autocomplete = "scripting"; 
    font = "EtelkaMonospaceProBold"; 
    lineSpacing = 1; 
    sizeEx = 0.03; 
    shadow = 2; 
    colorBackground[] = {0, 0, 0, 1}; 
    colorText[] = {0.95, 0.95, 0.95, 1}; 
    colorSelection[] = {0.8784, 0.8471, 0.651, 1.0}; 
}; 

class RscX_ListBox
{
	style                   = CT_LISTBOX;
	idc                     = -1;
	colorSelect[]           = {0, 0, 0, 1.0};
	colorSelectBackground[] = {0.7, 0.7, 0.7, 1};
	colorText[]             = {1, 1, 1, 1};
	colorBackground[]       = {0.8, 0.8, 0.8, 0.3};
	colorScrollbar[] 	= {Dlg_Color_White,1};
	font                    = FontHTML;
	sizeEx                  = 0.025;
	rowHeight               = 0.04;
	period 			= 1.200000;
	maxHistoryDelay 	= 1.000000;
	autoScrollSpeed 	= -1;
	autoScrollDelay 	= 5;
	autoScrollRewind 	= 0;
	soundSelect[] = {"", 0.1, 1};
	class ScrollBar {};
};

class RscX_Combo: RscX_ListBox
{
	type            = CT_COMBO;
	wholeHeight     = 0.3;
	soundSelect[]   = {"", 0.15, 1};
	soundExpand[]   = {"", 0.15, 1};
	soundCollapse[] = {"", 0.15, 1};
	arrowEmpty = "\ca\ui\data\ui_arrow_combo_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_combo_active_ca.paa";
};

class RscX_SliderH
{
	access  = ReadandWrite;
	type    = CT_SLIDER;
	idc     = -1;
	sizeEx  = 0.025;
	style   = 1024;
	color[] = {0.2, 0.2, 0.2, 1};
	colorActive[] = {1, 1, 1, 1};
};

class RscX_SliderV
{
	access  = ReadandWrite;
	type    = CT_SLIDER;
	idc     = -1;
	sizeEx  = 0.025;
	style   = 0;
	color[] = {0.2, 0.2, 0.2, 1};
	colorActive[] = {1, 1, 1, 1};
};

class RscX_List
{
	type = CT_LISTBOX;
	style = 69;
	idc = -1;
	text = "";
	w = 0.275;
	h = 0.04;
	colorSelect[] = {1, 1, 1, 1};
	colorText[] = {1, 1, 1, 1};
	colorBackground[] = {1,1,1,1};
	colorSelectBackground[] = {0.40, 0.43, 0.28, 0.5};
	colorScrollbar[] = {0.2, 0.2, 0.2, 1};
	arrowEmpty = "\ca\ui\data\ui_arrocombo_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrocombo_active_ca.paa";
	wholeHeight = 0.45;
	rowHeight = 0.04;
	color[] = {0.7, 0.7, 0.7, 1};
	colorActive[] = {0,0,0,1};
	colorDisabled[] = {0,0,0,0.3};
	font = "Zeppelin32";
	sizeEx = 0.023;
	soundSelect[] = {"",0.1,1};
	soundExpand[] = {"",0.1,1};
	soundCollapse[] = {"",0.1,1};
	maxHistoryDelay = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	class ScrollBar
	{
		color[] = {1, 1, 1, 1};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 1};
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrotop_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrotop_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
};
class AdminMenu_Box
{
	type = CT_STATIC;
	idc = -1;
	style = ST_CENTER;
	shadow = 2;
	colorText[] = {1,1,1,1};
	font = "Bitstream";
	sizeEx = 0.02;
	colorBackground[] = { 0.2,0.2,0.2,0.9};
	text = "";
};