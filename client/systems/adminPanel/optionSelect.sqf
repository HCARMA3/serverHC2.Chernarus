// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: optionSelect.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19

#define debugMenu_option 50003
#define adminMenu_option 50001
disableSerialization;

private ["_panelType","_displayAdmin","_displayDebug","_adminSelect","_debugSelect","_money"];
_uid = getPlayerUID player;
if (_uid call isAdmin) then
{
	_panelType = _this select 0;

	_displayAdmin = uiNamespace getVariable ["AdminMenu", displayNull];
	_displayDebug = uiNamespace getVariable ["DebugMenu", displayNull];

	switch (true) do
	{
		case (!isNull _displayAdmin): //Admin panel
		{
			_adminSelect = _displayAdmin displayCtrl adminMenu_option;

			switch (lbCurSel _adminSelect) do
			{
				case 0: //Target Player Menu
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\playerMenu.sqf";
				};

				case 1: //Markers log
				{
					closeDialog 0;
					createDialog "MarkerLog";
				};

				case 2: //vehicle markers
				{
					execVM "client\systems\adminPanel\tools\vehicleMarkers.sqf";
				};				
				case 3: //TP
				{
					closeDialog 0;
					["A3W_tp", "onMapSingleClick",
					{
						vehicle player setPos _pos;
						if (!isNil "notifyAdminMenu") then { ["teleport", _pos] spawn notifyAdminMenu };
						["A3W_tp", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
						true
					}] call BIS_fnc_addStackedEventHandler;
					
					hint "Click on map to TP";				
				};

     			case 4: //Unlock Base Objects within 60m
  				{
  					execVM "client\systems\adminPanel\tools\unLock.sqf"; 					
 				};

 				case 5: //Delete Unlocked Base Objects within 60m
 				{
 					execVM "client\systems\adminPanel\tools\deleteUnlocked.sqf"; 					
 				};

  				case 6: //Relock objects within 60m
 				{
 					execVM "client\systems\adminPanel\tools\reLock.sqf"; 				    
 				};
				case 7: //Full Vehicle Management
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\vehicleManagement.sqf";
				};

				case 8: //Object search menu
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\loadObjectSearch.sqf";
				};

				case 9: //healself
				{
					execVM "client\systems\adminPanel\tools\healSelf.sqf";
				};

				case 10: //delete vehicle
				{
					closeDialog 0;
					_x = cursorTarget;
					deleteVehicle _x;
					systemChat format["Deleted %1", _x];
					titleText [format["Object Removed!"],"PLAIN DOWN"]; titleFadeOut 4;								
				};

				case 11: //repair vehicle
				{
					closeDialog 0;
					_veh2 = cursorTarget;
					_veh2 setfuel 1;
					_veh2 setdamage 0;
					SystemChat "Vehicle Fixed!";									
				};				
				case 12: //gun store
				{
					closeDialog 0;
					[] call loadGunStore;
				};

				case 13: //Gen store
				{
					closeDialog 0;
					[] call loadGeneralStore;
				};
				case 14: //freecam
				{
					closeDialog 0;
					if(!isNil'camerathread')then{terminate camerathread;camerathread=nil;};
					camerathread = [] spawn (uinamespace getvariable 'bis_fnc_camera');
				};
				case 15: //Spawn Beacon Map Markers
				{
					
					execVM "client\systems\adminPanel\tools\spawnBeacons.sqf";
				};	
				case 16: //Money
				{
					_money = 10000;
					player setVariable ["cmoney", (player getVariable ["cmoney",0]) + _money, true];
					if (!isNil "notifyAdminMenu") then { ["money", _money] call notifyAdminMenu };
				};
				case 17: //esp map markers
				{
					execVM "client\systems\adminPanel\tools\mapEsp.sqf";
					if (!isNil "notifyAdminMenu") then { ["esp", _esp] spawn notifyAdminMenu };
				};

				case 18: //esp
				{
					execVM "client\systems\adminPanel\tools\igEsp.sqf";
				};				

				case 19: // toggle GM
				{
					execVM "client\systems\adminPanel\tools\togglePlayergod.sqf";
				};

				case 20: // toggle veh GM
				{
					execVM "client\systems\adminPanel\tools\toggleVehiclegod.sqf";
				};				

				case 21: // toggle invis mode
 				{
 					execVM "client\systems\adminPanel\tools\toggleInvisMode.sqf";
  				};

				case 22: //Air Strike
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\tools\matt76_rockets.sqf";
				};

				case 23: //Rocket Bullets
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\tools\matt76_bullets.sqf";
				};
				case 24: //ai esp
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\tools\aiEsp.sqf";
				};	

				case 25: //Toggle Terrain Height
				{
					execVM "client\systems\adminPanel\tools\terrain.sqf";
				};
				
				case 26: //Unlimited Ammo
				{
					execVM "client\systems\adminPanel\tools\matt76_ammo.sqf";
				};
				case 27: //ATM
				{
					closeDialog 0;
					call mf_items_atm_access;
				};	
			};
		};
	};
};
