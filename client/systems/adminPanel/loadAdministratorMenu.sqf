// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: loadAdministratorMenu.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

#define adminMenu_option 50001
disableSerialization;

private ["_start","_panelOptions","_adminSelect","_displayAdmin"];
_uid = getPlayerUID player;
if ([_uid, 2] call isAdmin) then {
	_start = createDialog "AdminMenu";

	_displayAdmin = uiNamespace getVariable "AdminMenu";
	_adminSelect = _displayAdmin displayCtrl adminMenu_option;

	_panelOptions = ["Player Menu", 
					"Map Markers Log", 
					"Toggle Vehicle Markers", 
					"Teleport Map Click", 
					"Unlock all Objects 60m around you",  
	                "Delete all Unlocked Objects 60m around you", 
	                "Relock all Objects 60m around you", 
					"Vehicle Management (Check/delete hacked vehicles)", 
	                "Object Search", 
	                "Heal Self", 
	                "Delete Cursor Target", 
	                "Repair Cursor Target", 
					"Load Gun Store Menu", 
	                "Load Gen Store Menu",  
					"BIS FreeRoam Cam (ESC to EXIT)", 
					"Toggle Spawn Beacon Map Markers",
					"Add 10k Money to self", 
					"Toggle Map ESP"
	];

	{
		_adminSelect lbAdd _x;
	} forEach _panelOptions;
};
