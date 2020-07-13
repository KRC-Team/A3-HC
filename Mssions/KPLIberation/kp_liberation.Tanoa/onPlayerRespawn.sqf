params ["_newUnit", "_oldUnit"];

if (isNil "GRLIB_respawn_loadout") then {
    removeAllWeapons player;
    removeAllItems player;
    removeAllAssignedItems player;
    removeVest player;
    removeBackpack player;
    removeHeadgear player;
    removeGoggles player;
    player linkItem "ItemMap";
    player linkItem "ItemCompass";
    player linkItem "ItemWatch";
    player linkItem "ItemRadio";
	
	comment "Add weapons";
	player addWeapon "rhs_weap_m4a1_carryhandle";
	player addPrimaryWeaponItem "rhsusf_acc_nt4_black";
	player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
	player addPrimaryWeaponItem "rhsusf_acc_ACOG2_USMC";
	player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855_Stanag";
	player addPrimaryWeaponItem "rhsusf_acc_kac_grip";
	player addWeapon "rhsusf_weap_m1911a1";
	player addHandgunItem "rhsusf_mag_7x45acp_MHP";

	comment "Add containers";
	player forceAddUniform "rhs_uniform_FROG01_wd";
	player addVest "rhsusf_spc_light";

	comment "Add binoculars";
	player addWeapon "Binocular";

	comment "Add items to containers";
	player addItemToUniform "FirstAidKit";
	player addItemToUniform "rhsusf_ANPVS_14";
	player addItemToUniform "Chemlight_green";
	for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_red";};
	player addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag";
	for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
	player addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";
	for "_i" from 1 to 3 do {player addItemToVest "rhsusf_mag_7x45acp_MHP";};
	for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_mk3a2";};
	player addItemToVest "rhs_mag_mk84";
	player addItemToVest "Chemlight_green";
	player addHeadgear "rhsusf_mich_helmet_marpatwd_norotos";
	player addGoggles "rhs_googles_clear";
} else {
    sleep 4;
    [player, GRLIB_respawn_loadout] call KPLIB_fnc_setLoadout;
};

[] call KPLIB_fnc_addActionsPlayer;

// Support Module handling
if ([
    false,
    player isEqualTo ([] call KPLIB_fnc_getCommander) || (getPlayerUID player) in KP_liberation_suppMod_whitelist,
    true
] select KP_liberation_suppMod) then {
    waitUntil {!isNil "KPLIB_suppMod_req" && !isNil "KPLIB_suppMod_arty" && time > 5};

    // Remove link to corpse, if respawned
    if (!isNull _oldUnit) then {
        KPLIB_suppMod_req synchronizeObjectsRemove [_oldUnit];
        _oldUnit synchronizeObjectsRemove [KPLIB_suppMod_req];
    };

    // Link player to support modules
    [player, KPLIB_suppMod_req, KPLIB_suppMod_arty] call BIS_fnc_addSupportLink;

    // Init modules, if newly joined and not client host
    if (isNull _oldUnit && !isServer) then {
        [KPLIB_suppMod_req] call BIS_fnc_moduleSupportsInitRequester;
        [KPLIB_suppMod_arty] call BIS_fnc_moduleSupportsInitProvider;
    };
};
