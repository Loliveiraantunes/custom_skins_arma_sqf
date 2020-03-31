/*=============================================================================================================
* AUTHOR: [AlphaDev]
* VERSION: 1.0
* DESC: Set Custom Skins for especifcs Veihcles
*===============================================================================================================*/

/*
USAGES:
	includes setSkinsInVehicles.sqf on your init.sqf to call the main method to change all skins when the game start.
	
	e.g: Copy and Paste.
		#include  "setSkinInVehicles.sqf"; //Will include all methods in your init.sqf to reuse;
		call Fn_setSkinWhenStart;   //will change all skins when the game start;


	For Specific usage in One Vehicle, Call the method: [_vehicle] call Fn_setSkinInVehicle;
*/


Fn_getVehicleName = {
	_this spawn
	{	
		_this params ["_unit","_callback"];
		_name = str(_unit) splitString " ";
		_name = _name select 2;
		_name = _name splitString ".";
		_name = _name select 0;
		[_unit,_name] call _callback;
	};
};

Fn_setVehicleSkin = {
	_this params ["_unit","_name"];
	switch (_name) do {
		this = _unit;
		case "plane_fighter_01_f": {
			this setObjectTexture [0, "skins\blackwasp\wasp.paa"];
			this setObjectTexture [1, "skins\blackwasp\wasp2.paa"];
		};
		case "vtol_01_armed_f": { 
			this setobjecttexture [0, "skins\blackfish\vtol1.paa"];
			this setobjecttexture [1, "skins\blackfish\vtol2.paa"]; 
			this setobjecttexture [2, "skins\blackfish\vtol3.paa"]; 
			this setobjecttexture [3, "skins\blackfish\vtol4.paa"];
		};
		case "vtol_01_vehicle_f": { 
			this setobjecttexture [0, "skins\blackfish\vtol1.paa"];
			this setobjecttexture [1, "skins\blackfish\vtol2.paa"]; 
			this setobjecttexture [2, "skins\blackfish\vtol3.paa"]; 
			this setobjecttexture [3, "skins\blackfish\vtol4.paa"];
		};
		case "heli_light_01_f": {
			this setobjecttexture [0, "skins\hummingbird\hummingblack.paa"];
		};
		case "mrap_02_unarmed_f": { 
			this setobjecttexture [0, "skins\ifrit\ifr.paa"];
			this setobjecttexture [1, "skins\ifrit\ifr2.paa"];
		};
		case "mrap_02_gmg_f": { 
			this setobjecttexture [0, "skins\ifrit\ifr.paa"];
			this setobjecttexture [1, "skins\ifrit\ifr2.paa"];
		};
		case "mrap_02_hmg_f": { 
			this setobjecttexture [0, "skins\ifrit\ifr.paa"];
			this setobjecttexture [1, "skins\ifrit\ifr2.paa"];
		};
		case "mbt_03_cannon_f": { 
			this setobjecttexture [0, "skins\kuma\kuma1.paa"];
			this setobjecttexture [1, "skins\kuma\kuma2.paa"]; 
			this setobjecttexture [2, "skins\kuma\kuma3.paa"];
		};
		case "apc_wheeled_01_cannon_f": { 
			this setobjecttexture [0, "skins\marshall\BBASEAMV7.paa"];
			this setobjecttexture [1, "skins\marshall\Rrodasamv7.paa"];
			this setobjecttexture [2, "skins\marshall\Ttorreamv7.paa"];
		};
		case "mbt_01_cannon_f": { 
			this setobjecttexture [0, "skins\slammer\slambodybk.paa"];
			this setobjecttexture [1, "skins\slammer\slamtorre10.paa"];
			this setobjecttexture [2, "skins\slammer\slamchapabk.paa"];
		};
		case "mbt_01_tusk_f": { 
			this setobjecttexture [0, "skins\slammer\slambodybk.paa"];
			this setobjecttexture [1, "skins\slammer\slamtorre10.paa"];
			this setobjecttexture [2, "skins\slammer\slamchapabk.paa"];
		};
		case "mrap_03_unarmed_f": { 
			this setobjecttexture [0, "skins\strider\striderblack.paa"];
		};
		case "mrap_03_gmg_f": { 
			this setobjecttexture [0, "skins\strider\striderblack.paa"];
		};
		case "mrap_03_hmg_f": { 
			this setobjecttexture [0, "skins\strider\striderblack.paa"];
		};
	};
};

Fn_setSkinWhenStart = {
	[] spawn {
		{
			[_x , { _this call Fn_setVehicleSkin }] call Fn_getVehicleName;
		}foreach vehicles;
	}; 
};

Fn_setSkinInVehicle = {
	_this spawn {
		_this params ["_vehicle"];
		[_vehicle , { _this call Fn_setVehicleSkin }] call Fn_getVehicleName;
	};
}