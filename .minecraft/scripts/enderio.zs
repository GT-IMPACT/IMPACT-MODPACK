#=========#
# enderio #
#=========#

#==================================================================#
#Imports
import mods.nei.NEI;
import mods.gregtech.AlloySmelter;
import mods.gregtech.ChemicalBath;
import mods.gregtech.Assembler;
import mods.gregtech.Autoclave;
import mods.gregtech.BlastFurnace;
import mods.gregtech.ChemicalReactor;
import mods.gregtech.FluidSolidifier;
import mods.gregtech.FluidExtractor;

print("Initializing 'enderio.zs'...");

#==================================================================#
#Variables
var ballDarkSteel = <EnderIO:itemMaterial:7>;
var clearGlass = <EnderIO:blockFusedQuartz:1>;
var clearGlassEnlighten = <EnderIO:blockFusedQuartz:3>;
var conduitBinder = <EnderIO:itemMaterial:1>;
var crystalEnder = <EnderIO:itemMaterial:8>;
var crystalPulsating = <EnderIO:itemMaterial:5>;
var crystalVibrant = <EnderIO:itemMaterial:6>;
var dustGlass = <gregtech:gt.metaitem.01:2890>;
var enderioSilicon = <EnderIO:itemMaterial>;
var frankenSkull2 = <EnderIO:itemFrankenSkull:2>;
var fusedQuartz = <EnderIO:blockFusedQuartz>;
var fusedQuartzEnlighten = <EnderIO:blockFusedQuartz:2>;
var gearBasic = <EnderIO:itemMachinePart:1>;
var ingotPulsatingIron = <EnderIO:itemAlloy:5>;
var itemDustDiamond = <gregtech:gt.metaitem.01:2500>;
var itemDustEmerald = <gregtech:gt.metaitem.01:2501>;
var itemDustEnderium = <gregtech:gt.metaitem.01:2321>;
var itemDustEnderPearl = <gregtech:gt.metaitem.01:2532>;
var itemDustPlatinum = <gregtech:gt.metaitem.01:2085>;
var itemDustSilver = <gregtech:gt.metaitem.01:2054>;
var itemRodDarkSteel = <gregtech:gt.metaitem.01:23364>;
var robotarmMV = <gregtech:gt.metaitem.01:32651>;
var machineHullLV = <gregtech:gt.blockmachines:11>;
var machineChassis = <EnderIO:itemMachinePart>;
var moldBall = <gregtech:gt.metaitem.01:32307>;
var moltenVibrantAlloy = <liquid:molten.vibrantalloy>;
var moltenPulsatingIron = <liquid:molten.pulsatingiron>;
var motorMV = <gregtech:gt.metaitem.01:32601>;
var pistonMV = <gregtech:gt.metaitem.01:32641>;
var pulsatingCrystal = <EnderIO:itemMaterial:5>;
var pumpElectricMV = <gregtech:gt.metaitem.01:32611>;
var resonatorEnder = <EnderIO:itemFrankenSkull:3>;
var tankFluid = <EnderIO:blockTank>;
var tankFluidPressurized = <EnderIO:blockTank:1>;
var craftingCover = <gregtech:gt.metaitem.01:32744>;

val LvMotor = <gregtech:gt.metaitem.01:32600>;
val MvMotor = <gregtech:gt.metaitem.01:32601>;
val HvMotor = <gregtech:gt.metaitem.01:32602>;
val RobotArmHV = <gregtech:gt.metaitem.01:32652>;
val LvPump = <gregtech:gt.metaitem.01:32610>;
val MvPump = <gregtech:gt.metaitem.01:32611>;
val HvPump = <gregtech:gt.metaitem.01:32612>;
val LuVFieldGen = <gregtech:gt.metaitem.01:32675>;
val LuVMotor = <gregtech:gt.metaitem.01:32606>;
val IronFurnace = <ore:craftingIronFurnace>;
val MCasing = <EnderIO:itemMachinePart>;
val Circuit = <ore:circuitBasic>;
val GCircuit = <ore:circuitGood>;
val AdvCircuit = <ore:circuitAdvanced>;
val EnergyFlowCircuit = <ore:circuitMaster>;
val IronCasing = <ore:itemCasingAnyIron>;
val SteelCasing = <ore:itemCasingSteel>;
val AluCasing = <ore:itemCasingAluminium>;
val IronRotor = <ore:rotorIron>;
val SteelRotor = <ore:rotorSteel>;
val Tank = <EnderIO:blockTank>;
val FQuartz = <EnderIO:blockFusedQuartz>;
val LvPiston = <gregtech:gt.metaitem.01:32640>;
val Capacitor = <EnderIO:itemBasicCapacitor>;
val Capacitor2 = <EnderIO:itemBasicCapacitor:1>;
val Capacitor3 = <EnderIO:itemBasicCapacitor:2>;
val VAPlate = <gregtech:gt.metaitem.01:17367>;
val PIPlate = <gregtech:gt.metaitem.01:17378>;
val EAPlate = <gregtech:gt.metaitem.01:17366>;
val DensePulsatingIronPlate = <ore:plateDensePulsatingIron>;
val DiamondGear = <ore:gearDiamond>;
val GearElectricSteel = <ore:gearElectricalSteel>;
val Cauldron = <minecraft:cauldron>;
val VCrystal = <EnderIO:itemMaterial:6>;
val RedstonePlate = <ore:plateRedstone>;
val ESteelPlate = <ore:plateElectricalSteel>;
val Display = <gregtech:gt.metaitem.01:32740>;
val ConduitProbe = <EnderIO:itemConduitProbe>;
val EConduit = <EnderIO:itemPowerConduit>;
val ZElectrode = <EnderIO:itemFrankenSkull>;
val ZLogic = <EnderIO:itemFrankenSkull:1>;
val FZombi = <EnderIO:itemFrankenSkull:2>;
val PCrystal = <EnderIO:itemMaterial:5>;
val EResonator = <EnderIO:itemFrankenSkull:3>;
val DarkSteelBars = <EnderIO:blockDarkIronBars>;
val DarkSteelPlate = <ore:plateDarkSteel>;
val SEnder = <EnderIO:itemFrankenSkull:4>;
val ECrystal = <EnderIO:itemMaterial:8>;
val Chest = <ore:chestWood>;
val LvConveyor =  <gregtech:gt.metaitem.01:32630>;
val RAUpgrade = <EnderIO:itemFunctionUpgrade>;
val DarkSteelRing = <ore:ringDarkSteel>;
val DarkSteelScrew = <ore:screwDarkSteel>;
val WCrystal = <EnderIO:itemMaterial:10>;
val EnderEyeLens = <ore:lensEnderEye>;
val MvFieldGen = <gregtech:gt.metaitem.01:32671>;
val SPlate = <ore:plateSoularium>;
val Shears = <minecraft:shears>;
val IronAxe = <minecraft:iron_axe>;
val Skull = <ore:itemSkull>;
val EntCrystal = <EnderIO:itemMaterial:9>;
val TEnderman = <EnderIO:blockEndermanSkull:2>;
val EXPRod = <EnderIO:itemXpTransfer>;
val Lava = <ore:bucketLava>;
val Water = <ore:bucketWater>;
val CapacitorB2 = <EnderIO:blockCapBank:2>;
val ETable = <minecraft:enchanting_table>;
val Book = <ore:crafting Book>;
val DarkIronBars = <EnderIO:blockDarkIronBars>;
val Hammer = <ore:craftingToolHardHammer>;
val Wrench = <ore:craftingToolWrench>;
val Screwdriver = <ore:craftingToolScrewdriver>;
val SteelScrew = <ore:screwSteel>;
val SteelWire = <ore:wireFineSteel>;
val SiliconPlate = <ore:plateSilicon>;
val IronPlate = <ore:plateIron>;
val RedAlloyWire = <ore:wireGt01RedAlloy>;
val Obsidian = <ore:blockObsidian>;
val EnderEye = <ore:gemEnderEye>;
val Compass = <minecraft:compass>;
val RAPlate = <ore:plateRedstoneAlloy>;
val Binder = <EnderIO:itemMaterial:1>;
val CIPlate = <ore:plateConductiveIron>;
val ESteelIngot = <ore:ingotElectricalSteel>;
val ESteelGear = <ore:gearElectricalSteel>;
val Compartor = <ProjRed|Integration:projectred.integration.gate:26>;
val IRConduit = <EnderIO:itemRedstoneConduit:2>;
val VAScrew = <ore:screwVibrantAlloy>;
val DarkSteelRod = <ore:stickDarkSteel>;
val EAScrew = <ore:screwEnergeticAlloy>;
val SoulariumRod = <ore:stickSoularium>;
val Leather = <ore:itemLeather>;
val TLeather = <Backpack:tannedLeather>;
val MSScrew = <ore:screwSteelMagnetic>;
val sgLargeCapacitor = <SGCraft:ic2Capacitor>;

#==================================================================#
#Remove Recipes
<ore:itemSilicon>.remove(enderioSilicon);
<ore:gearStone>.remove(gearBasic);

recipes.remove(gearBasic);
recipes.remove(tankFluid);
recipes.remove(tankFluidPressurized);
recipes.remove(ballDarkSteel);
recipes.remove(machineChassis);
recipes.remove(crystalVibrant);
recipes.remove(crystalPulsating);
recipes.remove(<EnderIO:itemGliderWing>);
recipes.remove(<EnderIO:itemGliderWing:1>);
recipes.remove(<EnderIO:itemTravelStaff:16>);
recipes.remove(<EnderIO:blockKillerJoe>);
recipes.remove(<EnderIO:blockEnderRail>);
recipes.remove(<EnderIO:blockEnderIo>);
recipes.remove(<EnderIO:blockAlloySmelter>);
recipes.remove(<EnderIO:blockSagMill>);
recipes.remove(<EnderIO:itemPowderIngot:*>); // Powder
recipes.remove(<EnderIO:blockPowerMonitor>);
recipes.remove(<EnderIO:itemMaterial:2>); // binderComposite
recipes.remove(<EnderIO:blockVat>);
recipes.remove(<EnderIO:blockWirelessCharger>);
recipes.remove(<EnderIO:blockZombieGenerator>);
recipes.remove(<EnderIO:blockSolarPanel>);
recipes.remove(<EnderIO:blockSolarPanel:1>);
recipes.remove(<EnderIO:itemEnderFood>);
recipes.remove(<EnderIO:blockSpawnGuard>);
recipes.remove(<EnderIO:blockWeatherObelisk>);
recipes.remove(<EnderIO:itemCoordSelector>);
recipes.remove(<EnderIO:blockBuffer>);
recipes.remove(<EnderIO:blockBuffer:1>);
recipes.remove(<EnderIO:blockBuffer:2>);
recipes.remove(<EnderIO:blockBuffer:3>);
recipes.remove(<EnderIO:blockReinforcedObsidian>);
recipes.remove(<EnderIO:blockEnchanter>);
recipes.remove(<EnderIO:blockDarkIronBars>);
recipes.remove(<EnderIO:blockDarkSteelPressurePlate>);
recipes.remove(<EnderIO:blockVacuumChest>);
recipes.remove(<EnderIO:itemBasicCapacitor>);
recipes.remove(<EnderIO:itemBasicCapacitor:1>); // capacitor DualLayer
recipes.remove(<EnderIO:itemBasicCapacitor:2>); // capacitor Octadic
recipes.remove(<EnderIO:blockCapBank:2>); // capacitor 2
recipes.remove(<EnderIO:blockCapBank:3>); // capacitor 3
recipes.remove(<EnderIO:itemConduitProbe>);
recipes.remove(<EnderIO:blockPainter>);
recipes.remove(<EnderIO:blockCrafter>);
recipes.remove(<EnderIO:blockFarmStation>);
recipes.remove(<EnderIO:itemYetaWrench>);
recipes.remove(<EnderIO:blockTravelAnchor>);
recipes.remove(<EnderIO:blockCombustionGenerator>);
recipes.remove(<EnderIO:blockStirlingGenerator>);
recipes.remove(<EnderIO:blockReservoir>);
recipes.remove(<EnderIO:itemMagnet:16>);
recipes.remove(<EnderIO:blockElectricLight>);
recipes.remove(<EnderIO:blockAttractor>);
recipes.remove(<EnderIO:blockExperienceObelisk>);
recipes.remove(<EnderIO:itemXpTransfer>);
recipes.remove(<EnderIO:itemSoulVessel>);
recipes.remove(<EnderIO:blockInventoryPanel>);
recipes.remove(RAUpgrade);
recipes.remove(<EnderIO:itemBasicFilterUpgrade>);
recipes.remove(<EnderIO:itemBasicFilterUpgrade:1>);
recipes.remove(<EnderIO:itemModItemFilter>);
recipes.remove(<EnderIO:itemRedstoneConduit>);
recipes.remove(<EnderIO:itemRedstoneConduit:1>);
recipes.remove(<EnderIO:itemRedstoneConduit:2>);
recipes.remove(<EnderIO:itemPowerConduit>);
recipes.remove(<EnderIO:itemPowerConduit:1>);
recipes.remove(<EnderIO:itemPowerConduit:2>);
recipes.remove(<EnderIO:itemItemConduit>);
recipes.remove(<EnderIO:itemLiquidConduit>);
recipes.remove(<EnderIO:itemLiquidConduit:1>);
recipes.remove(<EnderIO:itemLiquidConduit:2>);
recipes.remove(<EnderIO:itemMEConduit>);
recipes.remove(<EnderIO:itemMEConduit:1>);

// --- Slice and Splice
recipes.remove(<EnderIO:blockSliceAndSplice>);

// --- Soul Binder
recipes.remove(<EnderIO:blockSoulBinder>);

// --- Powered Spawner
recipes.remove(<EnderIO:blockPoweredSpawner>);

// --- Killer Joe
recipes.remove(<EnderIO:blockKillerJoe>);

recipes.removeShapeless(<EnderIO:itemMaterial:3> * 9, [<EnderIO:itemAlloy:5>]);
recipes.removeShapeless(<EnderIO:itemMaterial:4> * 9, [<EnderIO:itemAlloy:2>]);

furnace.remove(conduitBinder);

recipes.remove(<EnderIO:item.darkSteel_helmet>);
recipes.remove(<EnderIO:item.darkSteel_chestplate>);
recipes.remove(<EnderIO:item.darkSteel_leggings>);
recipes.remove(<EnderIO:item.darkSteel_boots>);
recipes.remove(<EnderIO:item.darkSteel_sword>);
recipes.remove(<EnderIO:item.darkSteel_pickaxe>);
recipes.remove(<EnderIO:item.darkSteel_axe>);
recipes.remove(<EnderIO:item.darkSteel_shears>);

#==================================================================#
#Adding Recipe
// --- Basic Capacitor 
recipes.remove(<EnderIO:blockCapBank:1>);
recipes.addShaped(<EnderIO:blockCapBank:1>.withTag({type: "SIMPLE", storedEnergyRF: 0}), [
		[Capacitor, Circuit, Capacitor],
		[RedstonePlate, MCasing, RedstonePlate],
		[Capacitor, <gregtech:gt.metaitem.01:32527>, Capacitor]
	]
);
// --- Painting Machine
recipes.addShaped(<EnderIO:blockPainter>, [
		[SteelCasing, SteelRotor, SteelCasing],
		[Circuit, MCasing, Circuit],
		[LvMotor, SteelRotor, LvMotor]
	]
);
// --- Crafter
recipes.addShaped(<EnderIO:blockCrafter>, [
		[SteelCasing, craftingCover, SteelCasing],
		[Circuit, MCasing, Circuit],
		[SteelCasing, <EnderIO:itemBasicCapacitor>, SteelCasing]
	]
);
// --- Machinen Casing
recipes.addShaped(MCasing, [
		[SteelCasing, ESteelPlate, SteelCasing],
		[ESteelPlate, Capacitor, ESteelPlate],
		[SteelCasing, ESteelPlate, SteelCasing]
	]
);
// --- Power Monitor
recipes.addShaped(<EnderIO:blockPowerMonitor>, [
		[ESteelPlate, Display, ESteelPlate],
		[Circuit, MCasing, Circuit],
		[EConduit, ConduitProbe, EConduit]
	]
);
// --- Farming Station
recipes.addShaped(<EnderIO:blockFarmStation>, [
		[RobotArmHV, DensePulsatingIronPlate, RobotArmHV],
		[PCrystal, MCasing, PCrystal],
		[GearElectricSteel, <ore:circuitAdvanced>, GearElectricSteel]
	]
);
// --- Wireless Charger
recipes.addShaped(<EnderIO:blockWirelessCharger>, [
		[ESteelPlate, Capacitor3, ESteelPlate],
		[AdvCircuit, MCasing, AdvCircuit],
		[ESteelPlate, <gregtech:gt.metaitem.01:32672>, ESteelPlate]
	]
);
// --- Travel Anchor
recipes.addShaped(<EnderIO:blockTravelAnchor>, [
		[ESteelPlate, PIPlate, ESteelPlate],
		[PCrystal, MCasing, PCrystal],
		[ESteelPlate, <gregtech:gt.metaitem.01:32670>, ESteelPlate]
	]
);
// --- Attractor Obelisk
recipes.addShaped(<EnderIO:blockAttractor>, [
		[null, EntCrystal, null],
		[EAPlate, SPlate, EAPlate],
		[SPlate, MCasing, SPlate]
	]
);
// --- Experience Obelisk
recipes.addShaped(<EnderIO:blockExperienceObelisk>, [
		[null, EXPRod, null],
		[EAPlate, SPlate, EAPlate],
		[SPlate, MCasing, SPlate]
	]
);
// --- Staff of Traveling
recipes.addShaped(<EnderIO:itemTravelStaff:16>, [
		[Screwdriver, AdvCircuit, PCrystal],
		[VAScrew, DarkSteelRod, AdvCircuit],
		[DarkSteelRod, VAScrew, Wrench]
	]
);
// --- Experience Rod
recipes.addShaped(<EnderIO:itemXpTransfer>, [
		[Screwdriver, AdvCircuit, PCrystal],
		[EAScrew, SoulariumRod, AdvCircuit],
		[SoulariumRod, EAScrew, Wrench]
	]
);
// --- Inventory Panel
recipes.addShaped(<EnderIO:blockInventoryPanel>, [
		[DarkSteelPlate, RAUpgrade, DarkSteelPlate],
		[PCrystal, Display, PCrystal],
		[DarkSteelPlate, <ore:circuitAdvanced>, DarkSteelPlate]
	]
);
// --- Remote Awareness Upgrade
recipes.addShaped(RAUpgrade, [
		[SiliconPlate, <ore:craftingLensGreen>, SiliconPlate],
		[AdvCircuit, <gregtech:gt.metaitem.01:32690>, AdvCircuit],
		[SiliconPlate, <ore:gearGtSmallElectricalSteel>, SiliconPlate]
	]
);
recipes.addShaped(RAUpgrade, [
		[SiliconPlate, <ore:craftingLensLime>, SiliconPlate],
		[AdvCircuit, <gregtech:gt.metaitem.01:32690>, AdvCircuit],
		[SiliconPlate, <ore:gearGtSmallElectricalSteel>, SiliconPlate]
	]
);
recipes.addShaped(RAUpgrade, [
		[SiliconPlate, <ore:craftingLensCyan>, SiliconPlate],
		[AdvCircuit, <gregtech:gt.metaitem.01:32690>, AdvCircuit],
		[SiliconPlate, <ore:gearGtSmallElectricalSteel>, SiliconPlate]
	]
);
recipes.addShaped(<EnderIO:itemMaterial:7> * 4, [
		[DarkSteelScrew, DarkSteelPlate, DarkSteelScrew],
		[DarkSteelPlate, DarkSteelRing, DarkSteelPlate],
		[DarkSteelScrew, DarkSteelPlate, DarkSteelScrew]
	]
);
recipes.addShaped(<EnderIO:blockReinforcedObsidian>, [
		[<ore:plateDarkSteel>, <EnderIO:blockDarkIronBars>, <ore:plateDarkSteel>],
		[<EnderIO:blockDarkIronBars>, <minecraft:obsidian>, <EnderIO:blockDarkIronBars>],
		[<ore:plateDarkSteel>, <EnderIO:blockDarkIronBars>, <ore:plateDarkSteel>]
	]
);
recipes.addShaped(<EnderIO:blockDarkIronBars> * 8, [
		[null, <ore:craftingToolWrench>, null],
		[<ore:stickDarkSteel>, <ore:stickDarkSteel>, <ore:stickDarkSteel>],
		[<ore:stickDarkSteel>, <ore:stickDarkSteel>, <ore:stickDarkSteel>]
	]
);
recipes.addShaped(<EnderIO:blockDarkSteelPressurePlate>, [
		[<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:craftingToolHardHammer>]
	]
);
recipes.addShaped(<EnderIO:blockVacuumChest>, [
		[<ore:plateObsidian>, crystalPulsating, <ore:plateObsidian>],
		[<ore:plateObsidian>, <minecraft:chest>, <ore:plateObsidian>],
		[<ore:plateObsidian>, crystalPulsating, <ore:plateObsidian>]
	]
);
recipes.addShaped(<EnderIO:itemConduitProbe>, [
		[SiliconPlate, EConduit, SiliconPlate],
		[Circuit, Compartor, Circuit],
		[ESteelPlate, IRConduit, ESteelPlate]
	]
);
recipes.addShaped(<EnderIO:blockBuffer>, [
		[<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>],
		[<ore:plateSteel>, <minecraft:chest>, <ore:plateSteel>],
		[<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>]
	]
);
recipes.addShaped(<EnderIO:itemYetaWrench>, [
		[ESteelIngot, Hammer, ESteelIngot],
		[ESteelIngot, ESteelGear, ESteelIngot],
		[null, ESteelIngot, null]
	]
);
recipes.addShaped(<EnderIO:itemMagnet:16> , [
		[ESteelPlate, CIPlate, CIPlate],
		[Wrench, MSScrew, VCrystal],
		[ESteelPlate, CIPlate, CIPlate]
	]
);
recipes.addShaped(<EnderIO:blockElectricLight>, [
		[fusedQuartz, fusedQuartz, fusedQuartz],
		[<ore:plateIron>, <minecraft:glowstone_dust>, <ore:plateIron>],
		[<ore:plateIron>, <EnderIO:itemPowerConduit>, <ore:plateIron>]
	]
);
recipes.addShaped(<EnderIO:itemExtractSpeedUpgrade:1>, [
		[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
		[<ore:ingotElectricalSteel>, <IC2:itemHarz>, <ore:ingotElectricalSteel>],
		[<ore:ingotElectricalSteel>, <ore:stickWood>, <ore:ingotElectricalSteel>]
	]
);
	
#==================================================================#
#Assembler Recipes
Assembler.addRecipe(<EnderIO:blockDarkIronBars> * 4, itemRodDarkSteel * 3, <gregtech:gt.integrated_circuit:3> * 0, 300, 4);
Assembler.addRecipe(<EnderIO:itemBasicCapacitor:1>, <EnderIO:itemBasicCapacitor> * 2, <EnderIO:itemMaterial:5> , <liquid:molten.glowstone> * 288, 500, 120);
Assembler.addRecipe(<EnderIO:itemBasicCapacitor:2>, <EnderIO:itemBasicCapacitor:1> * 2, <EnderIO:itemMaterial:6>, <liquid:molten.energeticalloy> * 288, 500, 480);
Assembler.addRecipe(Capacitor, <gregtech:gt.metaitem.01:26080> * 4, <gregtech:gt.metaitem.01:29031> * 4,  <liquid:molten.plastic> * 288, 200, 30);
Assembler.addRecipe(<EnderIO:itemRedstoneConduit:1>, <EnderIO:itemRedstoneConduit:2>, <minecraft:lever>, 50, 60);
Assembler.addRecipe(<EnderIO:itemRedstoneConduit:2>, <EnderIO:itemRedstoneConduit>, <EnderIO:itemMaterial:1> * 4, 100, 120); 
Assembler.addRecipe(<EnderIO:itemPowerConduit>, <gregtech:gt.blockmachines:1380>, <EnderIO:itemMaterial:1> * 4, <liquid:molten.conductiveiron> * 144, 50, 30);
Assembler.addRecipe(<EnderIO:itemRedstoneConduit>, <gregtech:gt.blockmachines:2000>, <EnderIO:itemMaterial:1> * 2, 100, 64);
Assembler.addRecipe(<EnderIO:itemItemConduit>, [<gregtech:gt.blockmachines:5664>, <ore:foilPulsatingIron>*2, <EnderIO:itemMaterial:1> * 4], <liquid:molten.plastic> * 144, 100, 120);
Assembler.addRecipe(<EnderIO:itemLiquidConduit>, [<gregtech:gt.blockmachines:5132>, <ore:foilRedstoneAlloy>*2, <EnderIO:itemMaterial:1> * 4], <liquid:molten.plastic> * 144, 100, 120);
Assembler.addRecipe(<EnderIO:itemLiquidConduit:1>, [<gregtech:gt.blockmachines:5142>, <ore:foilElectricalSteel>*2, <EnderIO:itemMaterial:1> * 4], <liquid:molten.plastic> * 144, 100, 256);
Assembler.addRecipe(<EnderIO:itemLiquidConduit:2>, [<gregtech:gt.blockmachines:5152>, <ore:foilDarkSteel>*2, <EnderIO:itemMaterial:1> * 4], <liquid:molten.plastic> * 144, 100, 480);
Assembler.addRecipe(<EnderIO:itemMEConduit>, <appliedenergistics2:item.ItemMultiPart:16>, <EnderIO:itemMaterial:1> * 4, 50, 120);
Assembler.addRecipe(<EnderIO:itemMEConduit:1>, <appliedenergistics2:item.ItemMultiPart:76>, <EnderIO:itemMaterial:1> * 16, 100, 480);

// --- Filters
Assembler.addRecipe(<EnderIO:itemBasicFilterUpgrade>, <gregtech:gt.metaitem.01:32630>, <ore:plateElectricalSteel>, 100, 16);
Assembler.addRecipe(<EnderIO:itemBasicFilterUpgrade:1>, <gregtech:gt.metaitem.01:32632>, <ore:plateDarkSteel>, 200, 120);
Assembler.addRecipe(<EnderIO:itemModItemFilter>, <EnderIO:itemBasicFilterUpgrade>, <ore:plateDarkSteel>, 200, 120);

#==================================================================#
#AlloySmelter Recipes
AlloySmelter.addRecipe(fusedQuartz, <minecraft:quartz> * 4, dustGlass, 200, 8);
//AlloySmelter.addRecipe(fusedQuartz, <minecraft:quartz_block>, dustGlass, 100, 16);

#==================================================================#
#Autoclave Recipes
Autoclave.addRecipe(crystalVibrant, itemDustEmerald, moltenVibrantAlloy * 144, 8500, 1000, 24);
Autoclave.addRecipe(crystalPulsating, itemDustDiamond, moltenPulsatingIron * 144, 8500, 1000, 24);

#==================================================================#
#ChemicalBath Recipes
ChemicalBath.addRecipe([fusedQuartzEnlighten], fusedQuartz, <liquid:molten.glowstone> * 576, [10000], 100, 8);
ChemicalBath.addRecipe([clearGlassEnlighten], clearGlass, <liquid:molten.glowstone> * 576, [10000], 100, 4);
ChemicalBath.addRecipe([clearGlass], <minecraft:glass>, <liquid:chlorine> * 50, [10000], 400, 2);

#==================================================================#
#FluidExtractor Recipes
FluidExtractor.addRecipe(null, conduitBinder, <liquid:molten.concrete> * 36, 10000, 24, 24);

#==================================================================#
#FluidSolidifier Recipes
FluidSolidifier.addRecipe(conduitBinder, moldBall * 0, <liquid:molten.concrete> * 36, 20, 4);

#==================================================================#
#Nei
NEI.overrideName(<EnderIO:blockDarkIronBars>, "Dark Steel Bars");

#==================================================================#

print("Initialized 'enderio.zs'");