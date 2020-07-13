/*
    Needed Mods:
    - RHS USAF

    Optional Mods:
    - F-15C
    - F/A-18
    - USAF Main Pack
    - USAF Fighters Pack
    - USAF Utility Pack
	
	

*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
FOB_typename = "Land_Cargo_HQ_V1_F";                                    // This is the main FOB HQ building.
FOB_box_typename = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
FOB_truck_typename = "rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy";            // This is the FOB as a vehicle.
Arsenal_typename = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
Respawn_truck_typename = ["rhsusf_stryker_m1132_m2_wd","rhsusf_m998_w_s_4dr","RHS_UH60M_MEV2","rhsusf_mkvsoc"];   // This is the mobile respawn (and medical) truck.
huron_typename = "RHS_CH_47F";                                          // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "rhsusf_army_ocp_combatcrewman";                    // This defines the crew for vehicles.
pilot_classname = "rhsusf_army_ocp_helipilot";                          // This defines the pilot for helicopters.
KP_liberation_little_bird_classname = "RHS_MELB_MH6M";                  // These are the little birds which spawn on the Freedom or at Chimera base.
KP_liberation_boat_classname = "B_Boat_Transport_01_F";                 // These are the boats which spawn at the stern of the Freedom.
KP_liberation_truck_classname = "rhsusf_M977A4_BKIT_usarmy_wd";         // These are the trucks which are used in the logistic convoy system.
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";     // A small storage area for resources.
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";     // A large storage area for resources.
KP_liberation_recycle_building = "Land_RepairDepot_01_tan_F";           // The building defined to unlock FOB recycling functionality.
KP_liberation_air_vehicle_building = "B_Radar_System_01_F";             // The building defined to unlock FOB air vehicle functionality.
KP_liberation_heli_slot_building = "Land_HelipadSquare_F";              // The helipad used to increase the GLOBAL rotary-wing cap.
KP_liberation_plane_slot_building = "Land_TentHangar_V1_F";             // The hangar used to increase the GLOBAL fixed-wing cap.
KP_liberation_supply_crate = "CargoNet_01_box_F";                       // This defines the supply crates, as in resources.
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";                      // This defines the ammunition crates.
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";                     // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
infantry_units = [
    ["rhsusf_army_ocp_riflemanl",0,0,0],                               // Rifleman (Light)
    ["rhsusf_army_ocp_rifleman",0,0,0],                                // Rifleman
    ["rhsusf_army_ocp_riflemanat",0,0,0],                              // Rifleman (AT)
    ["rhsusf_army_ocp_grenadier",0,0,0],                               // Grenadier
    ["rhsusf_army_ocp_autorifleman",0,0,0],                            // Autorifleman
    ["rhsusf_army_ocp_machinegunner",0,0,0],                           // Heavygunner
    ["rhsusf_army_ocp_marksman",0,0,0],                                // Marksman
    ["rhsusf_army_ocp_javelin",0,0,0],                                // AT Specialist
    ["rhsusf_army_ocp_aa",0,0,0],                                     // AA Specialist
    ["rhsusf_army_ocp_medic",0,0,0],                                   // Combat Life Saver
    ["rhsusf_army_ocp_engineer",0,0,0],                                // Engineer
    ["rhsusf_army_ocp_explosives",0,0,0],                              // Explosives Specialist
    ["rhsusf_usmc_recon_marpat_wd_rifleman",0,0,0],                    // Recon Rifleman
    ["rhsusf_usmc_recon_marpat_wd_rifleman_at",0,0,0],                 // Recon Rifleman (AT)
    ["rhsusf_usmc_recon_marpat_wd_autorifleman",0,0,0],                // Recon Autorifleman
    ["rhsusf_usmc_recon_marpat_wd_machinegunner",0,0,0],               // Recon Machine Gunner
    ["rhsusf_usmc_recon_marpat_wd_marksman",0,0,0],                    // Recon Marksman
    ["rhsusf_usmc_recon_marpat_wd_sniper_M107",0,0,0],                 // Recon Sniper (M107)
    ["rhsusf_army_ocp_sniper",0,0,0],                                  // Sniper
    ["rhsusf_army_ocp_sniper_m107",0,0,0],                             // Sniper (M107)
    ["rhsusf_army_ocp_sniper_m24sws",0,0,0],                           // Sniper (M24 SWS)
    ["rhsusf_army_ocp_combatcrewman",0,0,0],                           // Crewman
    ["rhsusf_army_ocp_rifleman_101st",0,0,0],                          // Para Trooper
    ["rhsusf_army_ocp_helicrew",0,0,0],                                // Helicopter Crew
    ["rhsusf_army_ocp_helipilot",0,0,0],                               // Helicopter Pilot
    ["rhsusf_airforce_jetpilot",0,0,0]                                 // Pilot
];

light_vehicles = [
    ["B_Quadbike_01_F",0,0,0],                                        // Quad Bike
	["rhsusf_mrzr4_d",0,0,0],  
    ["rhsusf_m1025_w",0,0,0],                                        // M1025A2
    ["rhsusf_m1025_w_m2",0,0,0],                                    // M1025A2 (M2)
    ["rhsusf_m1025_w_mk19",0,0,0],                                  // M1025A2 (Mk19)
    ["rhsusf_m998_w_2dr_fulltop",0,0,0],                             // M1097A2 (2D)
    ["rhsusf_m998_w_2dr_halftop",0,0,0],                             // M1097A2 (2D / open back)
    ["rhsusf_M1220_usarmy_wd",0,0,0],                                // M1220
    ["rhsusf_M1220_M2_usarmy_wd",0,0,0],                            // M1220 (M2)
    ["rhsusf_M1220_MK19_usarmy_wd",0,0,0],                          // M1220 (Mk19)
    ["rhsusf_M1220_M153_M2_usarmy_wd",0,0,0],                       // M1220 (M2 CROWS)
    ["rhsusf_M1220_M153_MK19_usarmy_wd",0,0,0],                     // M1220 (Mk19 CROWS)
    ["rhsusf_M1232_usarmy_wd",0,0,0],                                // M1232
    ["rhsusf_M1232_M2_usarmy_wd",0,0,0],                            // M1232 (M2)
    ["rhsusf_M1232_MK19_usarmy_wd",0,0,0],                          // M1232 (Mk19)
    ["rhsusf_M1230a1_usarmy_wd",0,0,0],                              // M1230A1 (MEDEVAC)
    ["rhsusf_M1083A1P2_wd_open_fmtv_usarmy",0,0,0],                  // M1083A1P2 Transport
    ["rhsusf_M1083A1P2_wd_fmtv_usarmy",0,0,0],                       // M1083A1P2 Transport (Covered)
    ["rhsusf_M1083A1P2_WD_flatbed_fmtv_usarmy",0,0,0],               // M1083A1P2
    ["rhsusf_M977A4_BKIT_usarmy_wd",0,0,0],                          // M977A4 BKIT
    ["rhsusf_M977A4_BKIT_M2_usarmy_wd",0,0,0],                      // M977A4 BKIT (HMG)
    ["rhsusf_M1117_W",0,0,0],                                       // M1117 ASV
    ["B_UGV_01_F",0,0,0],                                            // UGV Stomper
    ["B_UGV_01_rcws_F",0,0,0],                                      // UGV Stomper (RCWS)
    ["B_Boat_Transport_01_F",0,0,0],                                 // Assault Boat
    ["B_Boat_Armed_01_minigun_F",0,0,0],                            // Speedboat Minigun
    ["B_SDV_01_F",0,0,0]                                             // SDV
];

heavy_vehicles = [
    ["rhsusf_m113_usarmy",0,0,0],                                  // M113A3 (M2)
    ["rhsusf_m113_usarmy_MK19",0,0,0],                             // M113A3 (Mk19)
    ["rhsusf_m113_usarmy_medical",0,0,0],                           // M113A3 (Medical)
	["B_APC_Wheeled_01_cannon_F",0,0,0],
	["rhsusf_stryker_m1126_mk19_wd",0,0,0],
    ["rhsusf_stryker_m1126_m2_wd",0,0,0],                         // M1126 Stryker (M2)
    ["RHS_M2A2_BUSKI_WD",0,0,0],                                  // M2A2ODS (Busk I)
    ["RHS_M2A3_BUSKIII_wd",0,0,0],                                // M2A3 (Busk III)
    ["RHS_M6_wd",0,0,0],                                          // M6A2
    ["rhsusf_m1a1aim_tuski_wd",0,0,0],                            // M1A1SA (Tusk I)
    ["rhsusf_m1a2sep1tuskiiwd_usarmy",0,0,0],                     // M1A2SEPv1 (Tusk II)
    ["rhsusf_m109_usarmy",0,0,0],                                // M109A6
	["rhsusf_M142_usarmy_WD",0,0,0],
	["rhsusf_m1a1hc_wd",0,0,0]
];

air_vehicles = [
    ["B_UAV_01_F",0,0,0],                                             // AR-2 Darter
    ["B_UAV_06_F",0,0,0],                                             // AL-6 Pelican (Cargo)
    ["RHS_MELB_MH6M",0,0,0],                                        // MH-6M Little Bird
    ["RHS_MELB_AH6M",0,0,0],                                      // AH-6M Pawnee
    ["RHS_UH1Y_UNARMED",0,0,0],                                     // UH-1Y (Unarmed)
    ["RHS_UH1Y_GS",0,0,0],                                        // UH-1Y (Ground Suppression)
    ["RHS_AH1Z",0,0,0],                                           // AH-1Z (Multi-Role)
    ["RHS_AH64D_wd",0,0,0],                                       // AH-64D (Multi-Role)
	["B_Heli_Attack_01_dynamicLoadout_F",0,0,0], 
    ["RHS_UH60M2",0,0,0],                                           // UH-60M (Unarmed)
    ["RHS_UH60M",0,0,0],                                           // UH-60M
    ["RHS_UH60M_MEV2",0,0,0],                                       // UH-60M MEV2
    ["RHS_CH_47F_10",0,0,0],                                       // CH-47 Chinook (Armed)
    ["rhsusf_CH53E_USMC",0,0,0],                                    // CH-53E Super Stallion
    ["rhsusf_CH53E_USMC_GAU21",0,0,0],                            // CH-53E Super Stallion (GAU-21)
    ["USAF_C130J",0,0,0],                                           // C-130J Super Hercules
    ["USAF_C130J_Cargo",0,0,0],                                     // C-130J Super Hercules (Cargo)
    ["USAF_C17",0,0,0],                                             // C-17 Globemaster III
    ["usaf_kc135",0,0,0],                                          // KC-135 Stratotanker
    ["B_UAV_02_dynamicLoadout_F",0,0,0],                          // MQ-4A Greyhawk
    ["B_T_UAV_03_dynamicLoadout_F",0,0,0],                        // MQ-12 Falcon
    ["B_UAV_05_F",0,0,0],                                         // UCAV Sentinel
    ["USAF_RQ4A",0,0,0],                                            // RQ-4A Global Hawk
    ["USAF_MQ9",0,0,0],                                           // MQ-9 Reaper
    ["RHS_A10",0,0,0],                                          // A-10A (CAS)
    ["USAF_A10",0,0,0],                                         // A-10C Thunderbolt II
    ["FIR_F15C",0,0,0],                                         // F-15C Eagle
    ["FIR_F15D",0,0,0],                                         // F-15D Eagle
    ["FIR_F15E",0,0,0],                                         // F-15E Strike Eagle
    ["JS_JC_FA18E",0,0,0],                                      // F/A-18 E Super Hornet
    ["JS_JC_FA18F",0,0,0],                                      // F/A-18 F Super Hornet
    ["USAF_F22",0,0,0],                                         // F-22A Raptor
    ["USAF_F22_EWP_AA",0,0,0],                                  // F-22A Raptor (EWP-AA)
    ["USAF_F22_EWP_AG",0,0,0],                                  // F-22A Raptor (EWP-AG)
    ["USAF_F22_Heavy",0,0,0],                                   // F-22A Raptor (Heavy)
    ["USAF_F35A_STEALTH",0,0,0],                                // F-35A Lightning II
    ["USAF_F35A",0,0,0],                                        // F-35A Lightning II (Heavy)
    ["B_Plane_Fighter_01_F",0,0,0],                             // F/A-181 Black Wasp II
    ["B_Plane_Fighter_01_Stealth_F",0,0,0],                     // F/A-181 Black Wasp II (Stealth)
    ["B_T_VTOL_01_armed_F",0,0,0],                               // V-44 X Blackfish (Armed)
    ["B_T_VTOL_01_infantry_F",0,0,0],                               // V-44 X Blackfish (Infantry)
    ["B_T_VTOL_01_vehicle_F",0,0,0],                                 // V-44 X Blackfish (Vehicle)
	["B_Plane_CAS_01_dynamicLoadout_F",0,0,0],
	["rhsusf_f22",0,0,0]
];

static_vehicles = [
    ["RHS_M2StaticMG_MiniTripod_WD",0,0,0],                           // Mk2 HMG .50
    ["RHS_M2StaticMG_WD",0,0,0],                                      // Mk2 HMG .50 (Raised)
    ["RHS_MK19_TriPod_WD",0,0,0],                                     // Mk19 GMG 20mm
    ["RHS_TOW_TriPod_WD",0,0,0],                                     // TOW (AT)
    ["RHS_Stinger_AA_pod_WD",0,0,0],                                 // Stinger (AA)
    ["RHS_M252_WD",0,0,0],                                           // Mk6 Mortar
    ["RHS_M119_WD",0,0,0],                                          // M119A2
	["B_AAA_System_01_F",0,0,0],
    ["B_SAM_System_03_F",0,0,0]                                     // MIM-145 Defender
];

buildings = [
    ["Land_Cargo_House_V1_F",0,0,0],
    ["Land_Cargo_Patrol_V1_F",0,0,0],
    ["Land_Cargo_Tower_V1_F",0,0,0],
    ["Flag_NATO_F",0,0,0],
    ["Flag_US_F",0,0,0],
    ["BWA3_Flag_Ger_F",0,0,0],
    ["Flag_UK_F",0,0,0],
    ["Flag_White_F",0,0,0],
    ["Land_Medevac_house_V1_F",0,0,0],
    ["Land_Medevac_HQ_V1_F",0,0,0],
    ["Flag_RedCrystal_F",0,0,0],
    ["CamoNet_BLUFOR_F",0,0,0],
    ["CamoNet_BLUFOR_open_F",0,0,0],
    ["CamoNet_BLUFOR_big_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_LampSolar_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampStreet_small_F",0,0,0],
    ["Land_LampAirport_F",0,0,0],
    ["Land_HelipadCircle_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingChair_V2_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
    ["MapBoard_altis_F",0,0,0],
    ["MapBoard_stratis_F",0,0,0],
    ["MapBoard_seismic_F",0,0,0],
    ["Land_Pallet_MilBoxes_F",0,0,0],
    ["Land_PaperBox_open_empty_F",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],
    ["Land_PaperBox_closed_F",0,0,0],
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],
    ["Land_ToolTrolley_02_F",0,0,0],
    ["Land_WeldingTrolley_01_F",0,0,0],
    ["Land_Workbench_01_F",0,0,0],
    ["Land_GasTank_01_blue_F",0,0,0],
    ["Land_GasTank_01_khaki_F",0,0,0],
    ["Land_GasTank_01_yellow_F",0,0,0],
    ["Land_GasTank_02_F",0,0,0],
    ["Land_BarrelWater_F",0,0,0],
    ["Land_BarrelWater_grey_F",0,0,0],
    ["Land_WaterBarrel_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    ["Land_BagBunker_Small_F",0,0,0],
    ["Land_BagBunker_Large_F",0,0,0],
    ["Land_BagBunker_Tower_F",0,0,0],
    ["Land_HBarrier_1_F",0,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_HBarrier_5_F",0,0,0],
    ["Land_HBarrier_Big_F",0,0,0],
    ["Land_HBarrierWall4_F",0,0,0],
    ["Land_HBarrierWall6_F",0,0,0],
    ["Land_HBarrierWall_corner_F",0,0,0],
    ["Land_HBarrierWall_corridor_F",0,0,0],
    ["Land_HBarrierTower_F",0,0,0],
    ["Land_CncBarrierMedium_F",0,0,0],
    ["Land_CncBarrierMedium4_F",0,0,0],
    ["Land_Concrete_SmallWall_4m_F",0,0,0],
    ["Land_Concrete_SmallWall_8m_F",0,0,0],
    ["Land_CncShelter_F",0,0,0],
    ["Land_CncWall1_F",0,0,0],
    ["Land_CncWall4_F",0,0,0],
    ["Land_Sign_WarningMilitaryArea_F",0,0,0],
    ["Land_Sign_WarningMilAreaSmall_F",0,0,0],
    ["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
    ["Land_Razorwire_F",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0]
];

support_vehicles = [
    [Arsenal_typename,0,0,0],
    [(Respawn_truck_typename select 0),0,0,0],
	[(Respawn_truck_typename select 1),0,0,0],
	[(Respawn_truck_typename select 2),0,0,0],
	[(Respawn_truck_typename select 3),0,0,0],
    [FOB_truck_typename,0,0,0],
    [KP_liberation_small_storage_building,0,0,0],
    [KP_liberation_large_storage_building,0,0,0],
    [KP_liberation_recycle_building,0,0,0],
    [KP_liberation_air_vehicle_building,0,0,0],
    [KP_liberation_heli_slot_building,0,0,0],
    [KP_liberation_plane_slot_building,0,0,0],
    ["ACE_medicalSupplyCrate_advanced",0,0,0],
    ["ACE_Box_82mm_Mo_HE",0,0,0],
    ["ACE_Box_82mm_Mo_Smoke",0,0,0],
    ["ACE_Box_82mm_Mo_Illum",0,0,0],
    ["ACE_Wheel",0,0,0],
    ["ACE_Track",0,0,0],
    ["USAF_missileCart_W_AGM114",0,0,0],                             // Missile Cart (AGM-114)
    ["USAF_missileCart_AGMMix",0,0,0],                               // Missile Cart (AGM-65 Mix)
    ["USAF_missileCart_AGM1",0,0,0],                                 // Missile Cart (AGM-65D)
    ["USAF_missileCart_AGM2",0,0,0],                                 // Missile Cart (AGM-65E)
    ["USAF_missileCart_AGM3",0,0,0],                                 // Missile Cart (AGM-65K)
    ["USAF_missileCart_AA1",0,0,0],                                  // Missile Cart (AIM-9M/AIM-120)
    ["USAF_missileCart_AA2",0,0,0],                                  // Missile Cart (AIM-9X/AIM-120)
    ["USAF_missileCart_GBU12_green",0,0,0],                          // Missile Cart (GBU12 Green)
    ["USAF_missileCart_GBU12_maritime",0,0,0],                       // Missile Cart (GBU12 Maritime)
    ["USAF_missileCart_GBU12",0,0,0],                                // Missile Cart (GBU12)
    ["USAF_missileCart_Gbu31",0,0,0],                                // Missile Cart (GBU31)
    ["USAF_missileCart_GBU39",0,0,0],                                // Missile Cart (GBU39)
    ["USAF_missileCart_Mk82",0,0,0],                                 // Missile Cart (Mk82)
    ["B_APC_Tracked_01_CRV_F",0,0,0],                             // CRV-6e Bobcat
    ["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",0,0,0],                   // M977A4 Repair
    ["rhsusf_M978A4_BKIT_usarmy_wd",0,0,0],                         // M978A4 Fuel
    ["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",0,0,0],                   // M977A4 Ammo
    ["B_Slingload_01_Repair_F",0,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",0,0,0],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",0,0,0]                                  // Huron Ammo
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
blufor_squad_inf_light = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_riflemanat",
    "rhsusf_army_ocp_grenadier",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_marksman",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_engineer"
];

// Heavy infantry squad.
blufor_squad_inf = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_riflemanat",
    "rhsusf_army_ocp_riflemanat",
    "rhsusf_army_ocp_grenadier",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_machinegunner",
    "rhsusf_army_ocp_marksman",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_engineer"
];

// AT specialists squad.
blufor_squad_at = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_rifleman"
];

// AA specialists squad.
blufor_squad_aa = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_rifleman"
];

// Force recon squad.
blufor_squad_recon = [
    "rhsusf_usmc_recon_marpat_wd_teamleader",
    "rhsusf_usmc_recon_marpat_wd_rifleman",
    "rhsusf_usmc_recon_marpat_wd_rifleman",
    "rhsusf_usmc_recon_marpat_wd_rifleman_at",
    "rhsusf_usmc_recon_marpat_wd_autorifleman",
    "rhsusf_usmc_recon_marpat_wd_machinegunner",
    "rhsusf_usmc_recon_marpat_wd_marksman",
    "rhsusf_usmc_recon_marpat_wd_sniper_M107",
    "rhsusf_army_ucp_medic",
    "rhsusf_army_ucp_engineer"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
blufor_squad_para = [
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
elite_vehicles = [
    "rhsusf_mkvsoc",                                                    // Mk.V SOCOM
    "rhsusf_m1a1aim_tuski_wd",                                          // M1A1SA (Tusk I)
    "rhsusf_m1a2sep1tuskiiwd_usarmy",                                   // M1A2SEPv1 (Tusk II)
    "rhsusf_m109_usarmy",                                               // M109A6
    "RHS_AH64D_wd",                                                     // AH-64D (Multi-Role)
    "B_UAV_02_dynamicLoadout_F",                                        // MQ-4A Greyhawk
    "B_T_UAV_03_dynamicLoadout_F",                                      // MQ-12 Falcon
    "B_UAV_05_F",                                                       // UCAV Sentinel
    "USAF_MQ9",                                                         // MQ-9 Reaper
    "USAF_A10",                                                         // A-10C Thunderbolt II
    "USAF_F22",                                                         // F-22A Raptor
    "USAF_F22_EWP_AA",                                                  // F-22A Raptor (EWP-AA)
    "USAF_F22_EWP_AG",                                                  // F-22A Raptor (EWP-AG)
    "USAF_F22_Heavy",                                                   // F-22A Raptor (Heavy)
    "USAF_F35A_STEALTH",                                                // F-35A Lightning II
    "USAF_F35A",                                                        // F-35A Lightning II (Heavy)
    "RHS_A10",                                                          // A-10A (CAS)
    "FIR_F15C",                                                         // F-15C Eagle
    "FIR_F15D",                                                         // F-15D Eagle
    "FIR_F15E",                                                         // F-15E Strike Eagle
    "JS_JC_FA18E",                                                      // F/A-18 E Super Hornet
    "JS_JC_FA18F",                                                      // F/A-18 F Super Hornet
    "B_Plane_Fighter_01_F",                                             // F/A-181 Black Wasp II
    "B_Plane_Fighter_01_Stealth_F",                                     // F/A-181 Black Wasp II (Stealth)
    "B_T_VTOL_01_armed_F"                                               // V-44 X Blackfish (Armed)
];
