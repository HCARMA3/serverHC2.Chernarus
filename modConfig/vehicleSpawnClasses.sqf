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
	["CUP_smg_bizon", "CUP_smg_MP5SD6", "CUP_hgun_glock17_flashlight_snds"],
	["arifle_SDAR_F", "CUP_arifle_M4A1_black", "CUP_arifle_M4A1"],
	["CUP_arifle_Mk16_CQC", "CUP_arifle_Mk20_SB11420_snds", "CUP_arifle_AKS74_kobra"],
	["CUP_arifle_M4A3_desert_GL_ACOG_Laser", "CUP_lmg_L7A2"],
	["launch_RPG7_F", "launch_RPG32_F", "launch_NLAW_F"]
];

vehicleAddition =
[
	["CUP_muzzle_snds_M16", "CUP_muzzle_Bizon"],
	["CUP_SVD_camo_g", "CUP_acc_Glock17_Flashlight", "CUP_Mxx_camo", "CUP_optic_TrijiconRx01_desert"],
	["CUP_muzzle_snds_M110", "CUP_muzzle_snds_MicroUzi", "CUP_muzzle_snds_G36_black", "CUP_muzzle_snds_L85"],
	["CUP_V_RUS_6B3_1", "CUP_V_B_GER_Vest_1", "CUP_V_PMC_CIRAS_Black_Grenadier"],
	["CUP_H_PMC_Cap_PRR_Burberry", "CUP_H_RACS_Helmet_olive"],
	["CUP_optic_CompM2_Black", "CUP_optic_LeupoldMk4", "CUP_optic_PSO_1"],
	["optic_Hamr", "optic_DMS", "optic_Aco", "optic_ACO_grn"],
	["CUP_optic_MRad", "CUP_optic_HoloBlack", "CUP_optic_Eotech533", "CUP_acc_ANPEQ_15"],
	["Medikit", "FirstAidKit", "ToolKit", "MineDetector"]
];

vehicleAddition2 =
[
	"DemoCharge_Remote_Mag",
	"Titan_AA",
	"Titan_AT",
	["CUP_6Rnd_HE_M203", "CUP_6Rnd_FlareWhite_M203", "CUP_6Rnd_Smoke_M203"],
	["1Rnd_SmokePurple_Grenade_shell", "1Rnd_SmokeOrange_Grenade_shell", "1Rnd_Smoke_Grenade_shell"],
	["7Rnd_408_Mag", "5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag", "10Rnd_127x54_Mag", "10Rnd_50BW_Mag_F"],
	["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "10Rnd_338_Mag", "130Rnd_338_Mag", "10Rnd_93x64_DMR_05_Mag", "150Rnd_93x64_Mag"]
];
