// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: playerSetupGear.sqf
//	@file Author: [GoT] JoSchaap, AgentRev

private ["_player", "_uniform", "_vest", "_headgear", "_goggles"];
_player = _this;

// Clothing is now defined in "client\functions\getDefaultClothing.sqf"

_uniform = [_player, "uniform"] call getDefaultClothing;
_vest = [_player, "vest"] call getDefaultClothing;
_headgear = [_player, "headgear"] call getDefaultClothing;
_goggles = [_player, "goggles"] call getDefaultClothing;

if (_uniform != "") then { _player addUniform _uniform };
if (_vest != "") then { _player addVest _vest };
if (_headgear != "") then { _player addHeadgear _headgear };
if (_goggles != "") then { _player addGoggles _goggles };

sleep 0.1;

// Add GPS
_player linkItem "ItemGPS";

// Remove Radio
_player unlinkItem "ItemRadio";

// Remove NVG
if (hmd _player != "") then { _player unlinkItem hmd _player };

// Remove FirstAidKit and Medkit *Possible fix for saved players getting FirstAidKit and Medkit at spawn until full
_player removeItems "FirstAidKit";
_player removeItems "Medikit";

// Add NVG
_player linkItem "NVGoggles";

// Add Backpack
_player addBackpack "CUP_B_AssaultPack_Coyote";

switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "CUP_Binocular_Vector";
		_player addMagazine "CUP_30Rnd_9x19_MP5";
		_player addWeapon "CUP_smg_MP5A5";
		_player addMagazine "CUP_30Rnd_9x19_MP5";
	//_player addPrimaryWeaponItem "acc_flashlight";
		_player addMagazine "CUP_8Rnd_9x18_MakarovSD_M";
		_player addWeapon "CUP_hgun_PB6P9_snds";
		_player addMagazine "CUP_8Rnd_9x18_MakarovSD_M";
		_player addItem "Medikit";
		_player addItem "FirstAidKit";
		_player addItem "SmokeShell";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "CUP_Binocular_Vector";
		_player addMagazine "CUP_30Rnd_556x45_Stanag";
		//_player addMagazine "UGL_FlareWhite_F";
		_player addWeapon "CUP_arifle_M16A2";
		_player addMagazine "CUP_30Rnd_556x45_Stanag";
		_player addPrimaryWeaponItem "CUP_muzzle_snds_M16";
		_player addMagazine "CUP_17Rnd_9x19_glock17";
		_player addWeapon "CUP_hgun_glock17_flashlight_snds";
		_player addMagazine "CUP_17Rnd_9x19_glock17";
		_player addItem "MineDetector";
		_player addItem "Toolkit";
		_player addItem "SmokeShell";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "CUP_Binocular_Vector";
		_player addMagazine "CUP_5Rnd_762x51_M24";
		_player addMagazine "CUP_5Rnd_762x51_M24";
		_player addWeapon "CUP_srifle_M24_ghillie";
		_player addMagazine ["CUP_5Rnd_762x51_M24", 5];
		//_player addPrimaryWeaponItem "optic_MRCO";
		//_player addPrimaryWeaponItem "acc_pointer_IR";
		_player addMagazine "CUP_7Rnd_45ACP_1911";
		_player addWeapon "CUP_hgun_Colt1911_snds";
		_player addItem "FirstAidKit";
		_player addItem "FirstAidKit";
		//_player addWeaponItem ["hgun_ACPC2_F", "muzzle_snds_acp"];
		_player addMagazine "CUP_7Rnd_45ACP_1911";
		_player addItem "MiniGrenade";
	};
	case (["_diver_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "Binocular";
		_player addMagazine "20Rnd_556x45_UW_mag";
		_player addWeapon "arifle_SDAR_F";
		_player addMagazine "20Rnd_556x45_UW_mag";
		_player addMagazine "20Rnd_556x45_UW_mag";
		_player addMagazine "11Rnd_45ACP_Mag";
		_player addWeapon "hgun_Pistol_heavy_01_F";
		_player addMagazine "11Rnd_45ACP_Mag";
		_player addWeaponItem ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp"];
		_player addItem "HandGrenade";
	};
};

switch (side _player) do
{
	case west:
	{
		_player addItem "Chemlight_blue";
	};
	case east:
	{
		_player addItem "Chemlight_red";
	};
	case resistance:
	{
		_player addItem "Chemlight_green";
	};
};

if (_player == player) then
{
	thirstLevel = 100;
	hungerLevel = 100;
};