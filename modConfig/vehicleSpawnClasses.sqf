// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2016 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: vehicleSpawnClasses.sqf
//	@file Author: AgentRev

A3W_smallVehicles =
[
	"C_Quadbike_01_F",
	["CUP_C_Datsun_Covered", "CUP_B_M1030_USMC", "CUP_C_SUV_CIV", "CUP_B_M1030_USMC"]
];

//Civilian Vehicle List - Random Spawns
civilianVehicles =
[
	"CUP_B_LR_Ambulance_CZ_D",
	"CUP_B_UAZ_Open_ACR",
	"CUP_B_LR_Transport_CZ_W",
	"CUP_B_UAZ_Unarmed_ACR",
	["CUP_B_UAZ_Open_ACR", "CUP_C_Skoda_Blue_CIV"]
];

//Light Military Vehicle List - Random Spawns
lightMilitaryVehicles =
[
	["CUP_B_HMMWV_M2_USMC", "CUP_B_RG31_M2_USMC"]
];

//Medium Military Vehicle List - Random Spawns
mediumMilitaryVehicles =
[
	"CUP_B_HMMWV_M2_NATO_T",
	"CUP_B_HMMWV_SOV_M2_NATO_T",
	"CUP_I_Datsun_PK_Random"
];

//Water Vehicles - Random Spawns
waterVehicles =
[
	"CUP_C_Fishing_Boat_Chernarus",
	"CUP_C_PBX_CIV",
	["CUP_C_Zodiac_CIV", "C_Boat_Civil_01_rescue_F"],
	["CUP_B_RHIB_USMC", "CUP_B_RHIB2Turret_USMC", "I_Boat_Armed_01_minigun_F"]
];

//Object List - Random Spawns.
staticWeaponsList =
[
	"B_Mortar_01_F",
	"O_Mortar_01_F",
	"I_Mortar_01_F",
	"I_G_Mortar_01_F"
];

//Object List - Random Helis.
staticHeliList =
[
	"CUP_I_MH6J_RACS",
	"C_Heli_Light_01_civil_F",
	"B_Heli_Light_01_F",
	"CUP_C_MI6A_RU",
	"CUP_I_MH6M_ION"
	// don't put cargo helicopters here, it doesn't make sense to find them in towns; they spawn in the CivHeli mission
];

//Object List - Random Planes.
staticPlaneList =
[
	//["B_Plane_CAS_01_F", "O_Plane_CAS_02_F"],
	"CUP_I_C130J_AAF",
	"CUP_C_AN2_CIV"
];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons =
[
	["SMG_01_F", "SMG_05_F", "hgun_PDW2000_F"],
	["arifle_SDAR_F", "arifle_Mk20C_plain_F", "arifle_TRG20_F"],
	["arifle_MXC_F", "arifle_AKS_F", "arifle_AKM_F"],
	["arifle_SPAR_02_khk_F", "LMG_03_F"],
	["launch_RPG7_F", "launch_RPG32_F", "launch_NLAW_F"]
];

vehicleAddition =
[
	["muzzle_snds_L", "muzzle_snds_acp"],
	["muzzle_snds_M", "muzzle_snds_58_blk_F", "muzzle_snds_H", "muzzle_snds_H_MG"],
	["muzzle_snds_65_TI_blk_F", "muzzle_snds_B", "muzzle_snds_338_black", "muzzle_snds_93mmg"],
	["V_TacVest_blk", "V_TacVestIR_blk", "V_Press_F"],
	["H_HelmetIA", "H_HelmetB"],
	["optic_Arco", "optic_SOS", "optic_LRPS"],
	["optic_Hamr", "optic_DMS", "optic_Aco", "optic_ACO_grn"],
	["optic_aco_smg", "optic_Holosight", "optic_Holosight_smg", "acc_pointer_IR"],
	["Medikit", "FirstAidKit", "ToolKit", "MineDetector"]
];

vehicleAddition2 =
[
	"DemoCharge_Remote_Mag",
	"Titan_AA",
	["3Rnd_UGL_FlareYellow_F", "3Rnd_UGL_FlareWhite_F"],
	["1Rnd_SmokePurple_Grenade_shell", "1Rnd_SmokeOrange_Grenade_shell", "1Rnd_Smoke_Grenade_shell"],
	["7Rnd_408_Mag", "5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag", "10Rnd_127x54_Mag", "10Rnd_50BW_Mag_F"],
	["30Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "10Rnd_338_Mag", "130Rnd_338_Mag", "10Rnd_93x64_DMR_05_Mag", "150Rnd_93x64_Mag"]
];
