/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/

//Server settings
dayZ_instance = 11; //Instance ID of this server
dayZ_serverName = "RS"; //Shown to all players in the bottom left of the screen (country code + server number)

//Game settings
dayz_antihack = 0; // DayZ Antihack / 1 = enabled // 0 = disabled
dayz_REsec = 0; // DayZ RE Security / 1 = enabled // 0 = disabled
dayz_enableRules = true; //Enables a nice little news/rules feed on player login (make sure to keep the lists quick).
dayz_quickSwitch = false; //Turns on forced animation for weapon switch. (hotkeys 1,2,3) False = enable animations, True = disable animations
dayz_POIs = false; //Adds Point of Interest map additions (negatively impacts FPS)
dayz_infectiousWaterholes = false; //Randomly adds some bodies, graves and wrecks by ponds (negatively impacts FPS)
dayz_ForcefullmoonNights = true; // Forces night time to be full moon.
dayz_randomMaxFuelAmount = 500; //Puts a random amount of fuel in all fuel stations.
DZE_garagist = ["Profiteer4","Worker3","RU_Profiteer4","Hooker1","Worker2"];

//DayZMod presets
dayz_presets = "Custom"; //"Custom","Classic","Vanilla","Elite"

//Only need to edit if you are running a custom server.
if (dayz_presets == "Custom") then {
	dayz_enableGhosting = false; //Enable disable the ghosting system.
	dayz_ghostTimer = 60; //Sets how long in seconds a player must be disconnected before being able to login again.
	dayz_spawnselection = 0; //(Chernarus only) Turn on spawn selection 0 = random only spawns, 1 = spawn choice based on limits
	dayz_spawncarepkgs_clutterCutter = 0; //0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnCrashSite_clutterCutter = 0;	// heli crash options 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnInfectedSite_clutterCutter = 0; // infected base spawn 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass 
	dayz_bleedingeffect = 2; //1 = blood on the ground (negatively impacts FPS), 2 = partical effect, 3 = both
	dayz_OpenTarget_TimerTicks = 60 * 10; //how long can a player be freely attacked for after attacking someone unprovoked
	dayz_nutritionValuesSystem = true; //true, Enables nutrition system, false, disables nutrition system.
	dayz_classicBloodBagSystem = true; // disable blood types system and use the single classic ItemBloodbag
	dayz_enableFlies = false; // Enable flies on dead bodies (negatively impacts FPS).
};

//Temp settings
dayz_DamageMultiplier = 2; //1 - 0 = Disabled, anything over 1 will multiply damage. Damage Multiplier for Zombies.
dayz_maxGlobalZeds = 20; //Limit the total zeds server wide.
dayz_maxLocalZombies = 5; // max quantity of Z controlled by local gameclient, used by player_spawnCheck. Below this limit we can spawn Z
dayz_maxNearByZombies = 5; // max quantity of Z controlled by local gameclient, used by player_spawnCheck. Below this limit we can spawn Z
dayz_temperature_override = false; // Set to true to disable all temperature changes.

enableRadio false;
enableSentences false;

// EPOCH CONFIG VARIABLES START //
#include "\z\addons\dayz_code\configVariables.sqf" // Don't remove this line
// See the above file for a full list including descriptions and default values
// Uncomment the lines below to change the default loadout
//DefaultMagazines = ["HandRoadFlare","ItemBandage","ItemPainkiller","8Rnd_9x18_Makarov","8Rnd_9x18_Makarov"];
DefaultWeapons = ["ItemRadio"];
//DefaultBackpack = "DZ_Patrol_Pack_EP1";
//DefaultBackpackItems = []; // Can include both weapons and magazines i.e. ["PDW_DZ","30Rnd_9x19_UZI"];
dayz_paraSpawn = false; // Halo spawn
// HALO Jump
DZE_HaloAltitudeMeter = true; // Display altitude and speed on screen while in halo jump.
dayz_poleSafeArea = 80; // Default = 30m, the buildable distance
DZE_NameTags = 2; // Name displays when looking at player up close  0 = Off, 1= On, 2 = Player choice
DZE_ForceNameTagsInTrader = true; // Force name display when looking at player up close in traders. Overrides player choice.
DZE_UI = "epoch"; //"vanilla","epoch","dark"  UI status icons style. Dark accommodates color blind people.
DZE_DeathMsgDynamicText = true; // Display death messages as dynamicText in the top left with weapon icons.
DZE_DeathMsgChat = "global"; //"none","global","side","system" Display death messages in selected chat channel.
DZE_AntiWallLimit = 3;
DZE_BackpackAntiTheft = true; // Prevent stealing from backpacks in trader zones
DZE_BuildOnRoads = false; // Allow building on roads
DZE_PlayerZed = false; // Enable spawning as a player zombie when players die with infected status
DZE_R3F_WEIGHT = false; // Enable R3F weight. Players carrying too much will be overburdened and forced to move slowly.
DZE_slowZombies = false; // Force zombies to always walk
DZE_StaticConstructionCount = 1; // Steps required to build. If greater than 0 this applies to all objects.
DZE_GodModeBase = true; // Make player built base objects indestructible
DZE_GodModeBaseExclude = ["CinderWallSmallDoorway_DZ","CinderWallDoor_DZ","CinderWallDoorwayLocked_DZ","CinderWallDoorSmallLocked_DZ","CinderWallDoorLocked_DZ","WoodFloor_DZ","WoodLargeWall_DZ","WoodLargeWallWin_DZ","WoodFloorQuarter_DZ","WoodStairsSans_DZ","Land_DZE_LargeWoodDoorLocked","WoodStairsRails_DZ","WoodLadder_DZ","WoodRamp_DZ","WoodSmallWall_DZ","WoodSmallWallThird_DZ"];
DZE_requireplot = 1; // Require a plot pole to build  0 = Off, 1 = On
DZE_PlotPole = [80,400]; // Radius owned by plot pole [Regular objects,Other plotpoles]. Difference between them is the minimum buffer between bases.
DZE_BuildingLimit = 350; // Max number of built objects allowed in DZE_PlotPole radius
DZE_SelfTransfuse = true; // Allow players to bloodbag themselves
DZE_selfTransfuse_Values = [6000,15,10]; // [blood amount given, infection chance %, cooldown in seconds]
MaxDynamicDebris = 1; // Max number of random road blocks to spawn around the map
MaxVehicleLimit = 50; // Max number of random vehicles to spawn around the map
MaxMineVeins = 5;

MaxHeliCrashes = 1;
dayz_maxAnimals = 1; // Default: 8
dayz_maxGlobalAnimals = 2;

// Plot Management and Plot for Life
DZE_permanentPlot = true; // Plot ownership saves after death. Enables Plot for Life by @RimBlock and Plot Management by @DevZupa.
DZE_plotManagementMustBeClose = true; //Players must be within 10m of pole to be added as a plot friend.
//DZE_MaxPlotFriends = 10; //Max friends allowed on a plot. There is no character limit in the inventory field of the database, but lower values limit the max global setVariable size to improve performance.
DZE_isRemovable = []; //Items that can be removed with a crowbar with no ownership or access required. To forbid base take overs remove plot pole from this list and add it to DZE_restrictRemoval. It is not necessary to add wrecks or items that inherit from 'BuiltItems' to this list.
DZE_restrictRemoval = ["Plastic_Pole_EP1_DZ","plot_pole_kit","Fence_corrugated_DZ","metal_floor_kit","M240Nest_DZ","ParkBench_DZ","FireBarrel_DZ","Scaffolding_DZ","CanvasHut_DZ","LightPole_DZ","DeerStand_DZ","MetalGate_DZ","StickFence_DZ"]; //Items that can be removed with a crowbar only with proper ownership or access. It is not necessary to add doors, storage or items that inherit from 'ModularItems' to this list. Items that inherit from 'BuiltItems' can be added to this list if desired.

// Snap Build and Build Vectors
DZE_PlotManagementAdmins = [76561198041381065]; //Array of admin PlayerUIDs. UIDs in this list are able to access every pole's management menu and delete or build any buildable with a pole nearby.
DZE_modularBuild = true; // Enable Snap Building by @raymix and Build Vectors by @strikerforce.
DZE_snapExtraRange = 0; // Increase the default range from which objects can snap by this many meters.
DZE_noRotate = ["plastic_pole_ep1_dz","ItemVault"]; // List of objects (magazine classnames) that cannot be rotated. Example: ["ItemVault","ItemTent","ItemDomeTent","ItemDesertTent"];
DZE_vectorDegrees = [0.01, 0.1, 1, 5, 15, 45, 90]; // Degree positions players are able to rotate buildables with using the build vectors action menu.
DZE_curDegree = 45; // Starting rotation angle. Prefer any value in the array above.
DZE_dirWithDegrees = true; // When rotating objects with Q&E, use the custom degrees.
DZE_buildMaxMoveDistance = 10; // Max distance player can walk from start position when building. Anything >= the differnce between DZE_PlotPole values is not recommended (allows walking into other plots).
DZE_buildMaxHeightDistance = 10; // Max distance player can raise or lower object from start position when building.

// Door Management
DZE_doorManagement = true; // Enable Door Management by @DevZupa. 
DZE_doorManagementMustBeClose = true; //Players must be within 10m of door to be added as a door friend.
DZE_doorManagementAdmins = [76561198041381065]; //Array of admin PlayerUIDs. UIDs in this list are able to access every door's management menu and open it.
DZE_doorManagementAllowManualCode = true; //Allow unlocking doors by manually entering the combination. Setting false requires the use of eye scan for all doors.
//DZE_doorManagementMaxFriends = 10; //Max friends allowed on a door. There is no character limit in the inventory field of the database, but lower values limit the max global setVariable size to improve performance.
DZE_doorManagementHarderPenalty = true; //Enforce an exponential wait on attempts between unlocking a door from a failed code.

vehsRemoveThermal = ["hmmwv_tow_des_ep1","hmmwv_tow","HMMWV_m998_crows_M2_DES_EP1","ah1z","M1A2_TUSK_MG","M1A2_US_TUSK_MG_EP1","T72_TK_EP1","BMP2_TK_EP1","M2A2_EP1","M2A3_EP1","M6_EP1","BAF_FV510_D","BAF_FV510_W","M1126_ICV_M2_EP1","M1126_ICV_MK19_EP1","M1128_MGS_EP1",
"AH64D_EP1","BAF_Apache_AH1_D","Mi24_D_TK_EP1","M1A1","AAV","T72_CDF","T72_INS","T72_RU","T72_Gue","T90","BMP2_CDF","BMP2_INS","BMP3","BRDM2_CDF","BRDM2_INS","BRDM2_GUE","BTR90","LAV25","GAZ_Vodnik_HMG","AH1Z","AH64D","Mi24_D","Mi24_P","Mi24_V","Ka52","Ka52Black"];

// Group System
dayz_groupSystem = true;
dayz_markGroup = 1; // Players can see their group members on the map 0=never, 1=always, 2=With GPS only;
dayz_markSelf = 1; // Players can see their own position on the map 0=never, 1=always, 2=With GPS only
dayz_markBody = 1; // Players can see their corpse position on the map 0=never, 1=always, 2=With GPS only
dayz_requireRadio = false; // Require players to have a radio on their toolbelt to create a group, be in a group and receive invites.

spawnArea = 1400; // Distance around markers to find a safe spawn position
spawnShoremode = 1; // Random spawn locations  1 = on shores, 0 = inland

EpochUseEvents = true; //Enable event scheduler. Define custom scripts in dayz_server\modules to run on a schedule.
EpochEvents = [

	["any","any","any","any",15,"Treasure"],
	["any","any","any","any",30,"Construction"],
	["any","any","any","any",45,"abandonedvault"],
	["any","any","any","any",60,"Military"],
	["any","any","any","any",75,"Treasure"],
//	["any","any","any","any",35,"Supplyitems"],
	["any","any","any","any",90,"Military"],
	["any","any","any","any",105,"abandonedvault"],
	["any","any","any","any",120,"Construction"],
	["any","any","any","any",135,"secret_event"]
	
// Removed due to time issues //
//	["any","any","any","any",30,"abandonedvault"],
//	["any","any","any","any",60,"abandonedvault"],
//	["any","any","any","any",30,"Construction"],
//	["any","any","any","any",10,"Military"],
//	["any","any","any","any",90,"secret_event"],
//	["any","any","any","any",10,"Supplyitems"],
//	["any","any","any","any",150,"Military"],
//	["any","any","any","any",150,"Treasure"]
];

// EPOCH CONFIG VARIABLES END //

//Building restrictions
LimitPlotPoles = true; // Limit the amount of plot poles a player can own?
if (LimitPlotPoles) then {
	PlotPoleLimit = 2; // Amount of plot poles each individual player is allowed to own
};

LimitBuildHeight = true; // Limit the maximum height a player can build at
if (LimitBuildHeight) then {
	MaxBuildHeight = 80; // Maximum build height in meters
};


// Restrict building near specific buildings
BlacklistedBuildings = [
//  ["What text will say", "Class name of building you want to block", Distance around that building to block (radius in meters)]
	//["Fire Station", "Land_a_stationhouse", 250]
];


// Restrict building near map areas
RestrictedBuildingZones = [
//  ["What text will say", [Choords of place to block], Distance around that area to block (radius in meters)]
    ["Trader City Bor", [3238.29, 3382.33, 0], 800],
	["Trader City Stary", [6325.6772,7807.7412, 0], 800],
	["Trader City Bash", [4063.4226,11664.19, 0], 800],
	["Trader City Klen", [11447.472,11364.504, 0], 800],
	//["Bandit Camp", [1606.6443,7803.5156, 0], 800],
	//["Hero Camp", [12944.227,12766.889, 0], 800],
	["Wholesaler East", [13441.16,5429.3013, 0], 800],
	["Aircraft Dealer", [4510.7773,10774.518, 0], 800],
	["Boat Dealer South", [7989.3354,2900.9946, 0], 800],
	["Boat Dealer East", [13532.614,6355.9497, 0], 800],
	["Wholesaler South", [4063.4226,11664.19, 0], 800],
	//["Gem Trader", [6070.3203, 1941.1635, 0], 800],
	["NWAF", [4467.44,10334.4, 0], 900],
	//["Cherno", [6738.89,2574.77, 0], 800],
	//["Elektro", [10362.5,2120.6, 0], 800],
	["Berezino", [12025.5,9087.51, 0], 400],
	["Trader City Tulga", [12912.3, 4459.1, 0], 800]
];

diag_log 'dayz_preloadFinished reset';
dayz_preloadFinished=nil;
onPreloadStarted "diag_log [diag_tickTime,'onPreloadStarted']; dayz_preloadFinished = false;";
onPreloadFinished "diag_log [diag_tickTime,'onPreloadFinished']; dayz_preloadFinished = true;";
with uiNameSpace do {RscDMSLoad=nil;}; // autologon at next logon

_verCheck = (getText (configFile >> "CfgMods" >> "DayZ" >> "version") == "DayZ Epoch 1.0.6.1");
if (!isDedicated) then {
	enableSaving [false, false];	startLoadingScreen ["","RscDisplayLoadCustom"];
	progressLoadingScreen 0;
	dayz_loadScreenMsg = localize 'str_login_missionFile';
	if (_verCheck) then {
		progress_monitor = [] execVM "DZE_Hotfix_1.0.6.1A\system\progress_monitor.sqf";
	} else {
		progress_monitor = [] execVM "\z\addons\dayz_code\system\progress_monitor.sqf";
	};
	0 cutText ['','BLACK',0];
	0 fadeSound 0;
	0 fadeMusic 0;
};

initialized = false;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";
call compile preprocessFileLineNumbers "dayz_code\init\variables.sqf";
progressLoadingScreen 0.05;
call compile preprocessFileLineNumbers "scripts\garage\publicEH.sqf";
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";
progressLoadingScreen 0.15;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf";
call compile preprocessFileLineNumbers "scripts\bike\init.sqf";
if (_verCheck) then {
	#include "DZE_Hotfix_1.0.6.1A\init\compiles.sqf"
};
call compile preprocessFileLineNumbers "scripts\logistic\init.sqf";
progressLoadingScreen 0.25;
//call compile preprocessFileLineNumbers "server_traders.sqf";
call compile preprocessFileLineNumbers "scripts\traders\server_traders.sqf";
call compile preprocessFileLineNumbers "scripts\chernarus11.sqf"; //Add trader city objects locally on every machine early
//call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\mission\chernarus11.sqf"; //Add trader city objects locally on every machine early
if (dayz_POIs && (toLower worldName == "chernarus")) then {call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\mission\chernarus\poi\init.sqf";}; //Add POI objects locally on every machine early
initialized = true;

// Terrain and view distance
setTerrainGrid 50;
setViewDistance 4000;


if (dayz_REsec == 1) then {call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\REsec.sqf";};
execVM "\z\addons\dayz_code\system\DynamicWeatherEffects.sqf";

// No fog Clear day
0 setFog 0; 0 setOvercast 0; 0 setRain 0;

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\system\dynamic_vehicle.sqf";
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\system\server_monitor.sqf";
	execVM "\z\addons\dayz_server\traders\chernarus11.sqf"; //Add trader agents
	execVM "\z\addons\dayz_server\bankTraders\chernarus.sqf";
	//Get the server to setup what waterholes are going to be infected and then broadcast to everyone.
	if (dayz_infectiousWaterholes && (toLower worldName == "chernarus")) then {execVM "\z\addons\dayz_code\system\mission\chernarus\infectiousWaterholes\init.sqf";};
	
	// Lootable objects from CfgTownGeneratorDefault.hpp
	if (dayz_townGenerator) then { execVM "\z\addons\dayz_code\system\mission\chernarus\MainLootableObjects.sqf"; };
	//Most Wanted
	execVM "\z\addons\dayz_server\missions\most_wanted.sqf";
};

if (!isDedicated) then {
	//Enables Plant lib fixes
	execVM "\z\addons\dayz_code\system\antihack.sqf";
	
	if (toLower(worldName) == "chernarus") then {
		diag_log "WARNING: Clearing annoying benches from Chernarus";
		([4654,9595,0] nearestObject 145259) setDamage 1;
		([4654,9595,0] nearestObject 145260) setDamage 1;
	};
	
	if (dayz_townGenerator) then { execVM "\z\addons\dayz_code\compile\client_plantSpawner.sqf"; };
	
	// SELCECT
	call compile preprocessFileLineNumbers "spawn\init.sqf";
	
	execFSM "\z\addons\dayz_code\system\player_monitor.fsm";
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	_nil = [] execVM "scripts\remote\remote.sqf";
	if (DZE_R3F_WEIGHT) then {execVM "\z\addons\dayz_code\external\R3F_Realism\R3F_Realism_Init.sqf";};
	call compile preprocessFileLineNumbers "scripts\zsc\zscInit.sqf";
	call compile preprocessFileLineNumbers "scripts\zsc\zscATMInit.sqf";
	execVM "scripts\zsc\playerHud.sqf";
	[] execVM "dayz_code\compile\remote_message.sqf";
	
	// Serive point
	[] execVM "scripts\service_points\service_point.sqf";
	//[] execVM "scripts\ServiceSAFEZONE\service_point.sqf";
	waitUntil {scriptDone progress_monitor};
	cutText ["","BLACK IN", 3];
	3 fadeSound 1;
	3 fadeMusic 1;
	endLoadingScreen;
};


// Bank markers
execVM "scripts\bankMarker\addbankmarkers.sqf";

// Safe Zones
[] execVM "scripts\Safezone\SafeZone.sqf";

// Base Safe Zones
[] execVM "scripts\Safezone\base_SafeArea.sqf";

//LoyaltyReward
[] execVM "Scripts\fn_rewardLoyalty.sqf";

//Most Wanted Script
if (isServer) then {execVM "\z\addons\dayz_server\most_wanted.sqf";};

