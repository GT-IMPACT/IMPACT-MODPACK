// --- Created by DreamMasterXXL ---
// --- Modified by Jason McRay ---

// --- Mod Import ---

import mods.gregtech.Assembler;
import mods.gregtech.BlastFurnace;
import mods.gregtech.Canner;
import mods.ic2.Compressor;
import mods.gregtech.Extruder;
import mods.gregtech.ImplosionCompressor;
import mods.ic2.Macerator;
import mods.gregtech.PlateBender;
import mods.gregtech.VacuumFreezer;
import mods.gregtech.Wiremill;
import mods.gregtech.FluidCanner;
import mods.nei.NEI;

// --- Variables --- #
var AdvAlloy = <ore:plateAlloyAdvanced>;
var AdvWafer = <ore:waferAdvanced>;
var AirVent = <GalacticraftCore:item.airVent>;
var AlFoil = <ore:foilAluminium>;
var BWafer = <ore:waferBasic>;
var cableSealableCopper = <GalacticraftCore:tile.enclosed:2>;
var cableSealableFibre = <GalacticraftCore:tile.enclosed:5>;
var cableSealableGold = <GalacticraftCore:tile.enclosed:3>;
var cableSealableHV = <GalacticraftCore:tile.enclosed:4>;
var cableSealableTin = <GalacticraftCore:tile.enclosed:6>;
var CompressedAl = <ore:compressedAluminium>;
var CompressedBronze = <ore:compressedBronze>;
var CompressedCopper = <ore:compressedCopper>;
var CompressedIron = <ore:compressedIron>;
var CompressedSteel = <ore:compressedSteel>;
var CompressedTi = <ore:compressedTitanium>;
var CompressedTin = <ore:compressedTin>;
var DeshPlate = <gregtech:gt.metaitem.01:17884>;
var DeshRing = <ore:ringDesh>;
var File = <ore:craftingToolFile>;
var GCAlWire = <GalacticraftCore:tile.aluminumWire>;
var GCHeavyAlWire = <GalacticraftCore:tile.aluminumWire:1>;
var HeavyDutyPlate = <GalacticraftMars:item.itemBasicAsteroids>;
var HeavyPlating = <GalacticraftCore:item.heavyPlating>;
var HHammer = <ore:craftingToolHardHammer>;
var IronBars = <minecraft:iron_bars>;
var LVPump = <gregtech:gt.metaitem.01:32610>;
var MeteorPlate = <gregtech:gt.metaitem.01:17340>;
var MeteorScrew = <ore:screwMeteoricSteel>;
var MVConveyor = <gregtech:gt.metaitem.01:32632>;
var OxygenPipe = <GalacticraftCore:tile.oxygenPipe>;
var ReinforcedGlass = <ore:glassReinforced>;
var RubberBlock = <IC2:blockRubber>;
var SensorLens = <GalacticraftCore:item.sensorLens>;
var SolarPanel = <gregtech:gt.metaitem.01:32750>;
var SSteelBolt = <ore:boltStainlessSteel>;
var SteelPole = <GalacticraftCore:item.steelPole>;
var SteelRotor = <gregtech:gt.metaitem.02:21305>;
var SteelScrew = <ore:screwSteel>;
var Stick = <ore:stickWood>;
var String = <minecraft:string>;
var TinDecoBlock = <GalacticraftCore:tile.gcBlockCore:4>;
var TSteelBolt = <ore:boltTungstenSteel>;
var Wool = <ore:blockWool>;
var Wrench = <ore:craftingToolWrench>;
var CompressedMeteoricIron = <ore:compressedMeteoricIron>;
var CompressedDesh = <ore:compressedDesh>;
var plateTin = <ore:plateTin>;
var battery = <gregtech:gt.metaitem.01:32518>;
var orionDrive = <GalacticraftMars:item.orionDrive>;
var gtPlateEuropium = <ore:plateEuropium>;
var gtPlateAmericium = <ore:plateAmericium>;

// --- remove Recipes ---
//Sealable Cables
recipes.remove(cableSealableCopper);
recipes.remove(cableSealableGold);
recipes.remove(cableSealableHV);
recipes.remove(cableSealableFibre);
recipes.remove(cableSealableTin);
recipes.remove(<GalacticraftCore:item.sensorGlasses>);
//Rocket Launch Pad
recipes.remove(<GalacticraftCore:tile.landingPad>);
//Buggy Fueling Pad
recipes.remove(<GalacticraftCore:tile.landingPad:1>);
//Oxygen Collector
recipes.remove(<GalacticraftCore:tile.oxygenCollector>);
//Oxygen Compressor
recipes.remove(<GalacticraftCore:tile.oxygenCompressor>);
//Oxygen Decompressor
recipes.remove(<GalacticraftCore:tile.oxygenCompressor:4>);
//Oxygen Storage Module
recipes.remove(<GalacticraftCore:tile.machine2:8>);
//Oxygen Bubble Distributor
recipes.remove(<GalacticraftCore:tile.distributor>);
//Oxygen Sealer
recipes.remove(<GalacticraftCore:tile.sealer>);
//Oxygen Detector
recipes.remove(<GalacticraftCore:tile.oxygenDetector>);
//Oxygen Pipe
recipes.remove(OxygenPipe);
//Refinery
recipes.remove(<GalacticraftCore:tile.refinery>);
//Fuel Loader
recipes.remove(<GalacticraftCore:tile.fuelLoader>);
//Fuel Loader
recipes.remove(<GalacticraftCore:tile.fuelLoader>);
//Cargo Loader
recipes.remove(<GalacticraftCore:tile.cargo>);
//Cargo Unloader
recipes.remove(<GalacticraftCore:tile.cargo:4>);
//Nasa Workbench
recipes.remove(<GalacticraftCore:tile.rocketWorkbench>);
//Tin Decoration Block
recipes.remove(<GalacticraftCore:tile.gcBlockCore:3>);
recipes.remove(TinDecoBlock);
//Copper Block
recipes.remove(<GalacticraftCore:tile.gcBlockCore:9>);
//Tin Block
recipes.remove(<GalacticraftCore:tile.gcBlockCore:10>);
//Aluminum Block
recipes.remove(<GalacticraftCore:tile.gcBlockCore:11>);
//Meteoric Iron Ingot
recipes.remove(<gregtech:gt.metaitem.01:11340>);
//Solid Meteoric Iron
recipes.remove(<GalacticraftCore:tile.gcBlockCore:12>);
//Air Lock Frame
recipes.remove(<GalacticraftCore:tile.airLockFrame>);
//Air Lock Controller
recipes.remove(<GalacticraftCore:tile.airLockFrame:1>);
//Aluminium Wire
recipes.remove(GCAlWire);
//Heavy Aluminium Wire
recipes.remove(GCHeavyAlWire);
//Basic Solar Panel
recipes.remove(<GalacticraftCore:tile.solar>);
//Advanced Solar Panel
recipes.remove(<GalacticraftCore:tile.solar:4>);
//Wafer Solar
recipes.remove(<GalacticraftCore:item.basicItem:12>);
//Single Solar Modul
recipes.remove(<GalacticraftCore:item.basicItem>);
//Full Solar Panel
recipes.remove(<GalacticraftCore:item.basicItem:1>);
//Coal Generator
recipes.remove(<GalacticraftCore:tile.machine>);
//Compressor
recipes.remove(<GalacticraftCore:tile.machine:12>);
//Electric Compressor
recipes.remove(<GalacticraftCore:tile.machine2>);
//Circuit Fabricator
recipes.remove(<GalacticraftCore:tile.machine2:4>);
//Energy Storage Module
recipes.remove(<GalacticraftCore:tile.machineTiered>);
//Electric Furnace
recipes.remove(<GalacticraftCore:tile.machineTiered:4>);
//Energy Storage Cluster
recipes.remove(<GalacticraftCore:tile.machineTiered:8>);
//Electric Arc Furnace
recipes.remove(<GalacticraftCore:tile.machineTiered:12>);
//Glowstone Torch
recipes.remove(<GalacticraftCore:tile.glowstoneTorch>);
//Spin Truster
recipes.remove(<GalacticraftCore:tile.spinThruster>);
//Display Screen
recipes.remove(<GalacticraftCore:tile.viewScreen>);
//Telemetry Unit
recipes.remove(<GalacticraftCore:tile.telemetry>);
//Arc Lamp
recipes.remove(<GalacticraftCore:tile.arclamp>);
//Oxygen Mask
recipes.remove(<GalacticraftCore:item.oxygenMask>);
//Oxygen Gear
recipes.remove(<GalacticraftCore:item.oxygenGear>);
//Light Oxygen Tak
recipes.remove(<GalacticraftCore:item.oxygenTankLightFull:900>);
//Medium Oxygen Tank
recipes.remove(<GalacticraftCore:item.oxygenTankMedFull:1800>);
//Heavy Oxygen Tank
recipes.remove(<GalacticraftCore:item.oxygenTankHeavyFull:2700>);
//Tin Canister
recipes.remove(<GalacticraftCore:item.canister>);
//Copper Canister
recipes.remove(<GalacticraftCore:item.canister:1>);
//Oxygen Vent
recipes.remove(AirVent);
//Oxygen Fan
recipes.remove(<GalacticraftCore:item.airFan>);
//Oxygen Concentrator
recipes.remove(<GalacticraftCore:item.oxygenConcentrator>);
//Tier 1 Rocket Engine
recipes.remove(<GalacticraftCore:item.engine>);
//Tier 1 Booster
recipes.remove(<GalacticraftCore:item.engine:1>);
//Nose Cone
recipes.remove(<GalacticraftCore:item.noseCone>);
//Steel Pole
recipes.remove(SteelPole);
//Canister
recipes.remove(<GalacticraftCore:item.oilCanisterPartial:1001>);
//Oil Extractor
recipes.remove(<GalacticraftCore:item.oilExtractor>);
//Buggy Wheel
recipes.remove(<GalacticraftCore:item.buggymat>);
//Buggy Seat
recipes.remove(<GalacticraftCore:item.buggymat:1>);
//Buggy Storage Box
recipes.remove(<GalacticraftCore:item.buggymat:2>);
//Standard Wrenche
recipes.remove(<GalacticraftCore:item.standardWrench>);
//Can of Food
recipes.remove(<GalacticraftCore:item.basicItem:15>);
recipes.remove(<GalacticraftCore:item.basicItem:16>);
recipes.remove(<GalacticraftCore:item.basicItem:17>);
recipes.remove(<GalacticraftCore:item.basicItem:18>);
//Frequencey Module
recipes.remove(<GalacticraftCore:item.basicItem:19>);
//Battery
recipes.remove(battery);
//Titanium Pickaxe
recipes.remove(<GalacticraftMars:item.titanium_pickaxe>);
//Titanium Axe
recipes.remove(<GalacticraftMars:item.titanium_axe>);
//Titanium Hoe
recipes.remove(<GalacticraftMars:item.titanium_hoe>);
//Titanium Shovel
recipes.remove(<GalacticraftMars:item.titanium_shovel>);
//Titanium Sword
recipes.remove(<GalacticraftMars:item.titanium_sword>);
//Titanium Helm
recipes.remove(<GalacticraftMars:item.titanium_helmet>);
//Titanium Chest Plate
recipes.remove(<GalacticraftMars:item.titanium_chestplate>);
//Titanium Leggings
recipes.remove(<GalacticraftMars:item.titanium_leggings>);
//Titanium Boots
recipes.remove(<GalacticraftMars:item.titanium_boots>);
//Desh Block
recipes.remove(<GalacticraftMars:tile.mars:8>);
//Desh Ingot
recipes.remove(<gregtech:gt.metaitem.01:11884>);
//Desh Stick
recipes.remove(<GalacticraftMars:item.null:1>);
//Methan Synthezizerezizer
recipes.remove(<GalacticraftMars:tile.marsMachineT2:4>);
//Water Electrolyzer
recipes.remove(<GalacticraftMars:tile.marsMachineT2:8>);
//Walk Away
recipes.remove(<GalacticraftMars:tile.walkway>);
//Walk Away Aluminium
recipes.removeShaped(<GalacticraftMars:tile.walkwayWire>);
//Walk Away Pipes
recipes.removeShaped(<GalacticraftMars:tile.walkwayOxygenPipe>);
//Thermal Cloth
recipes.remove(<GalacticraftMars:item.itemBasicAsteroids:7>);
//Atmospheric Valve
recipes.remove(<GalacticraftMars:item.atmosphericValve>);
//Heavy Rocket Fines
recipes.removeShaped(<GalacticraftMars:item.itemBasicAsteroids:2>, [
[null, <GalacticraftMars:item.itemBasicAsteroids:6>, null],
[HeavyDutyPlate, <GalacticraftMars:item.itemBasicAsteroids:6>, HeavyDutyPlate],
[HeavyDutyPlate, null, HeavyDutyPlate]]);
//Heavy Rocket Engine
recipes.remove(<GalacticraftMars:item.itemBasicAsteroids:1>);
//Heavy Nose Cone
recipes.remove(<GalacticraftMars:item.heavyNoseCone>);
//Red Core
recipes.remove(<GalacticraftMars:item.itemBasicAsteroids:8>);
//Energy Beam Reflector
recipes.remove(<GalacticraftMars:tile.beamReflector>);
//Energy Beam Receiver
recipes.remove(<GalacticraftMars:tile.beamReceiver>);
//Short range Teleporter
recipes.remove(<GalacticraftMars:tile.telepadShort>);
//Cryogenic Chamber
recipes.remove(<GalacticraftMars:tile.marsMachine:4>);
//Terraformer
recipes.remove(<GalacticraftMars:tile.marsMachine>);
//Launch Controller
recipes.remove(<GalacticraftMars:tile.marsMachine:8>);
//Grappler
recipes.remove(<GalacticraftMars:item.grapple>);
//Hydrogen Pipe
recipes.remove(<GalacticraftMars:tile.hydrogenPipe>);
//Carbon Fragments
recipes.remove(<GalacticraftMars:item.carbonFragments>);
//Thermal Padding Helm
recipes.remove(<GalacticraftMars:item.thermalPadding>);
//Thermal Padding Chestpiece
recipes.remove(<GalacticraftMars:item.thermalPadding:1>);
//Thermal Padding Leggings
recipes.remove(<GalacticraftMars:item.thermalPadding:2>);
//Thermal Padding Boots
recipes.remove(<GalacticraftMars:item.thermalPadding:3>);
//Desh Pickaxe
recipes.remove(<GalacticraftMars:item.deshPick>);
//Desh Axe
recipes.remove(<GalacticraftMars:item.deshAxe>);
//Desh Hoe
recipes.remove(<GalacticraftMars:item.deshHoe>);
//Desh Shovel
recipes.remove(<GalacticraftMars:item.deshSpade>);
//Desh Sword
recipes.remove(<GalacticraftMars:item.deshSword>);
//Fins
recipes.remove(<GalacticraftCore:item.rocketFins>);
recipes.remove(<GalacticraftMars:item.itemBasicAsteroids:2>);
// --- Canvas
recipes.remove(<GalacticraftCore:item.canvas>);
// --- Parachute
recipes.remove(<GalacticraftCore:item.parachute>);


// Desh armor
recipes.remove(<GalacticraftMars:item.deshHelmet>);
recipes.remove(<GalacticraftMars:item.deshChestplate>);
recipes.remove(<GalacticraftMars:item.deshLeggings>);
recipes.remove(<GalacticraftMars:item.deshBoots>);

// --- add Recipes ---

// --- Fins
recipes.addShaped(<GalacticraftCore:item.rocketFins>, [
[<ore:screwStainlessSteel>, <ore:compressedSteel>, <ore:screwStainlessSteel>], 
[<GalacticraftCore:item.heavyPlating>, <ore:compressedSteel>, <GalacticraftCore:item.heavyPlating>], 
[<GalacticraftCore:item.heavyPlating>, <GalaxySpace:item.CompressedSDHD120>, <GalacticraftCore:item.heavyPlating>]]);

recipes.addShaped(<GalacticraftMars:item.itemBasicAsteroids:2>, [
[<ore:screwTungstenSteel>, <GalacticraftMars:item.null:3>, <ore:screwTungstenSteel>], 
[<GalacticraftMars:item.itemBasicAsteroids>, <GalacticraftMars:item.null:3>, <GalacticraftMars:item.itemBasicAsteroids>], 
[<GalacticraftMars:item.itemBasicAsteroids>, <GalacticraftMars:item.null:3>, <GalacticraftMars:item.itemBasicAsteroids>]]);


//Rocket Launch Pad
recipes.addShaped(<GalacticraftCore:tile.landingPad> * 3, [
[AdvAlloy, AdvAlloy, AdvAlloy],
[<GalacticraftCore:item.basicItem:9>, <GalacticraftCore:item.basicItem:9>, <GalacticraftCore:item.basicItem:9>],
[<ore:frameGtStainlessSteel>, <ore:frameGtStainlessSteel>, <ore:frameGtStainlessSteel>]]);

//Buggy Fueling Pad
recipes.addShaped(<GalacticraftCore:tile.landingPad:1> * 3, [
[CompressedSteel, CompressedSteel, CompressedSteel],
[AdvAlloy, AdvAlloy, AdvAlloy],
[<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>]]);

//Oxygen Collector
recipes.addShaped(<GalacticraftCore:tile.oxygenCollector>, [
[CompressedAl, <GalacticraftCore:item.oxygenConcentrator>, CompressedAl],
[AirVent, <GalacticraftCore:item.airFan>, <gregtech:gt.metaitem.01:32602>],
[CompressedSteel, <ore:cableGt02Aluminium>, CompressedSteel]]);

//Oxygen Compressor
recipes.addShaped(<GalacticraftCore:tile.oxygenCompressor>, [
[CompressedAl, <GalacticraftCore:item.oxygenConcentrator>, CompressedAl],
[<gregtech:gt.metaitem.01:32642>, <GalacticraftCore:item.oilCanisterPartial:1001>.noReturn(), <gregtech:gt.metaitem.01:32602>],
[CompressedSteel, CompressedBronze, CompressedSteel]]);

//Oxygen Decompressor
recipes.addShaped(<GalacticraftCore:tile.oxygenCompressor:4>, [
[CompressedAl, <GalacticraftCore:item.oxygenConcentrator>, CompressedAl],
[<gregtech:gt.metaitem.01:32602>, <GalacticraftCore:item.oilCanisterPartial:1001>.noReturn(), <GalacticraftCore:item.airFan>],
[CompressedSteel, CompressedBronze, CompressedSteel]]);

//Oxygen Storage Module
recipes.addShaped(<GalacticraftCore:tile.machine2:8>, [
[CompressedSteel, <GalacticraftCore:item.oxygenTankHeavyFull:2700>, CompressedSteel],
[<GalacticraftCore:item.oxygenTankHeavyFull:2700>, <gregtech:gt.blockcasings2>, <GalacticraftCore:item.oxygenTankHeavyFull:2700>],
[CompressedSteel, <GalacticraftCore:item.oxygenTankHeavyFull:2700>, CompressedSteel]]);

//Oxygen Bubble Distributor
recipes.addShaped(<GalacticraftCore:tile.distributor>, [
[CompressedAl, <GalacticraftCore:item.airFan>, CompressedAl],
[AirVent, <gregtech:gt.metaitem.01:32602>, AirVent],
[CompressedSteel, <GalacticraftCore:item.airFan>, CompressedSteel]]);

//Oxygen Sealer
recipes.addShaped(<GalacticraftCore:tile.sealer>, [
[CompressedAl, AirVent, CompressedAl],
[AirVent, <GalacticraftCore:tile.distributor>, AirVent],
[CompressedSteel, <GalacticraftCore:tile.oxygenDetector>, CompressedSteel]]);

//Oxygen Detector
recipes.addShaped(<GalacticraftCore:tile.oxygenDetector>, [
[CompressedSteel, CompressedSteel, CompressedSteel],
[AirVent, <gregtech:gt.metaitem.01:32692>, AirVent],
[CompressedAl, <gregtech:gt.blockmachines:2000>, CompressedAl]]);

//Fuel Loader
recipes.addShaped(<GalacticraftCore:tile.fuelLoader>, [
[CompressedSteel, BWafer, CompressedSteel],
[<gregtech:gt.metaitem.01:32612>, <gregtech:gt.metaitem.01:32405>, <gregtech:gt.metaitem.01:32602>],
[CompressedAl, <ore:pipeMediumSteel>, CompressedAl]]);

//Cargo Loader
recipes.addShaped(<GalacticraftCore:tile.cargo>, [
[CompressedAl, <minecraft:hopper>, CompressedAl],
[MVConveyor, <gregtech:gt.blockmachines:9232>, MVConveyor],
[CompressedSteel, <ore:pipeMediumBrass>, CompressedSteel]]);

//Cargo Unloader
recipes.addShaped(<GalacticraftCore:tile.cargo:4>, [
[CompressedSteel, <ore:pipeMediumBrass>, CompressedSteel],
[MVConveyor, <gregtech:gt.blockmachines:9232>, MVConveyor],
[CompressedAl, <minecraft:hopper>, CompressedAl]]);

//Tin Decoration Block
recipes.addShaped(TinDecoBlock * 5, [
[HHammer, plateTin, null],
[plateTin, <ore:stone>, plateTin],
[null, plateTin, Wrench]]);

recipes.addShaped(<GalacticraftCore:tile.gcBlockCore:3> * 5, [
[null, plateTin, HHammer],
[plateTin, <ore:stone>, plateTin],
[Wrench, plateTin, null]]);

//Air Lock Frame
recipes.addShaped(<GalacticraftCore:tile.airLockFrame> * 4, [
[MeteorPlate, MeteorPlate, MeteorPlate],
[AirVent, <GalacticraftCore:item.oxygenConcentrator>, AirVent],
[CompressedAl, CompressedAl, CompressedAl]]);

//Air Lock Controller
recipes.addShaped(<GalacticraftCore:tile.airLockFrame:1>, [
[MeteorPlate, MeteorPlate, MeteorPlate],
[AirVent, <GalacticraftCore:tile.airLockFrame>, AirVent],
[BWafer, <ore:wireGt01RedAlloy>, BWafer]]);

//Aluminium Wire
recipes.addShapeless(GCAlWire, [<ore:cableGt01Aluminium>]);

//Heavy Aluminium Wire
recipes.addShaped(GCHeavyAlWire * 3, [
[CompressedAl, CompressedAl, CompressedAl],
[GCAlWire, GCAlWire, GCAlWire],
[CompressedAl, CompressedAl, CompressedAl]]);

//Basic Solar Panel
// recipes.addShaped(<GalacticraftCore:tile.solar>, [
// [CompressedAl, <GalacticraftCore:item.basicItem:1>, CompressedAl],
// [GCAlWire, SteelPole, GCAlWire],
// [CompressedSteel, BWafer, CompressedSteel]]);

//Advanced Solar Panel
// recipes.addShaped(<GalacticraftCore:tile.solar:4>, [
// [CompressedAl, <GalacticraftCore:item.basicItem:1>, CompressedAl],
// [GCHeavyAlWire, SteelPole, GCHeavyAlWire],
// [<gregtech:gt.metaitem.01:32600>, AdvWafer, <gregtech:gt.metaitem.01:32690>]]);

//Full Solar Panel
// recipes.addShaped(<GalacticraftCore:item.basicItem:1>, [
// [SolarPanel, SolarPanel, SolarPanel],
// [GCAlWire, BWafer, GCAlWire],
// [SolarPanel, SolarPanel, SolarPanel]]);

//Energy Storage Module
// recipes.addShaped(<GalacticraftCore:tile.machineTiered>, [
// [CompressedSteel, battery, CompressedSteel],
// [<GalacticraftCore:item.battery:100>, <gregtech:gt.blockcasings2>, <gregtech:gt.metaitem.01:32518>],
// [CompressedSteel, <gregtech:gt.metaitem.01:32518>, CompressedSteel]]);

//Energy Storage Cluster
//recipes.addShaped(<GalacticraftCore:tile.machineTiered:8>, [
//[<GalacticraftCore:tile.machineTiered>, CompressedTi, <GalacticraftCore:tile.machineTiered>],
//[AdvWafer, <gregtech:gt.metaitem.01:32538>, AdvWafer],
//[<GalacticraftCore:tile.machineTiered>, CompressedTi, <GalacticraftCore:tile.machineTiered>]]);

//Spin Truster
recipes.addShaped(<GalacticraftCore:tile.spinThruster>, [
[CompressedTi, CompressedTi, CompressedTi],
[<GalacticraftCore:item.fuelCanisterPartial:1>.noReturn(), AdvWafer, <GalacticraftCore:item.fuelCanisterPartial:1>.noReturn()],
[<GalacticraftCore:item.engine>, HeavyPlating, <GalacticraftCore:item.engine>]]);

//Display Screen
// recipes.addShaped(<GalacticraftCore:tile.viewScreen>, [
// [CompressedSteel,SolarPanel,CompressedSteel],
// [BWafer, <gregtech:gt.metaitem.01:32740>, BWafer],
// [CompressedSteel, CompressedSteel, CompressedSteel]]);

//Telemetry Unit
recipes.addShaped(<GalacticraftCore:tile.telemetry>, [
[<GalacticraftCore:item.basicItem:19>,CompressedTin,<gregtech:gt.metaitem.01:32680>],
[BWafer, CompressedTin, BWafer],
[CompressedTin, CompressedCopper, CompressedTin]]);

//Arc Lamp
recipes.addShaped(<GalacticraftCore:tile.arclamp>, [
	[<ore:plateTungsten>, <ore:plateGlowstone>, <ore:plateTungsten>],
	[<ore:plateGlowstone>, <gregtech:gt.metaitem.01:32683>, <ore:lensDiamond>],
	[<ore:plateTungsten>, <ore:plateGlowstone>, <ore:plateTungsten>]]);

// --- Oxygen Mask
Assembler.addRecipe(<GalacticraftCore:item.oxygenMask>, <IC2:itemArmorHazmatHelmet>, <ore:plateReinforcedGlass> * 16, <liquid:glue> * 144, 400, 120);
// -
Assembler.addRecipe(<GalacticraftCore:item.oxygenMask>, <IC2:itemArmorHazmatHelmet>, <ore:plateReinforcedGlass> * 16, <liquid:molten.rubber> * 72, 400, 120);

// --- Canvas
recipes.addShaped(<GalacticraftCore:item.canvas>,  [
[null, <ore:blockWool>, <ore:stickPlastic>],
[<ore:blockWool>, <ore:stickPlastic>, <ore:blockWool>],
[<ore:stickPlastic>, <ore:blockWool>, null]]);

//Oxygen Gear
recipes.addShaped(<GalacticraftCore:item.oxygenGear>, [
[OxygenPipe,OxygenPipe,OxygenPipe],
[LVPump, <GalacticraftCore:item.oxygenConcentrator>, LVPump],
[OxygenPipe, null, OxygenPipe]]);

//Light Oxygen Tak
recipes.addShaped(<GalacticraftCore:item.oxygenTankLightFull:900>, [
[CompressedAl, OxygenPipe,CompressedAl],
[CompressedAl, <ore:cellEmpty>, CompressedAl],
[CompressedAl, CompressedAl, CompressedAl]]);

recipes.addShaped(<GalacticraftCore:item.oxygenTankLightFull:900>, [
[CompressedAl, OxygenPipe,CompressedAl],
[CompressedAl, <IC2:itemFluidCell>, CompressedAl],
[CompressedAl, CompressedAl, CompressedAl]]);

recipes.addShaped(<GalacticraftCore:item.oxygenTankLightFull:900>, [
[CompressedAl, OxygenPipe,CompressedAl],
[CompressedAl, <GalacticraftCore:item.canister>, CompressedAl],
[CompressedAl, CompressedAl, CompressedAl]]);

recipes.addShaped(<GalacticraftCore:item.oxygenTankLightFull:900>, [
[CompressedAl, OxygenPipe,CompressedAl],
[CompressedAl, <GalacticraftCore:item.canister:1>, CompressedAl],
[CompressedAl, CompressedAl, CompressedAl]]);


//Medium Oxygen Tank
recipes.addShaped(<GalacticraftCore:item.oxygenTankMedFull:1800>, [
[CompressedMeteoricIron, OxygenPipe,CompressedMeteoricIron],
[CompressedMeteoricIron, <gregtech:gt.metaitem.01:32405>, CompressedMeteoricIron],
[CompressedMeteoricIron, CompressedMeteoricIron, CompressedMeteoricIron]]);

//Heavy Oxygen Tank
recipes.addShaped(<GalacticraftCore:item.oxygenTankHeavyFull:2700>, [
[CompressedDesh, OxygenPipe,CompressedDesh],
[CompressedDesh, <gregtech:gt.metaitem.01:32406>, CompressedDesh],
[CompressedDesh, CompressedDesh, CompressedDesh]]);

//Sensor Glasses
recipes.addShaped(<GalacticraftCore:item.sensorGlasses>, [
[MeteorScrew, MeteorScrew,MeteorScrew],
[DeshRing, <ore:boltDesh>, DeshRing],
[SensorLens, null, SensorLens]]);

//Oxygen Vent
recipes.addShaped(AirVent, [
[<impact:impact_item2:51>, CompressedTin, <impact:impact_item2:51>],
[CompressedTin, CompressedSteel, CompressedTin],
[<impact:impact_item2:51>, CompressedTin, <impact:impact_item2:51>]]);

//Oxygen Fan
recipes.addShaped(<GalacticraftCore:item.airFan>, [
[SteelScrew, null, SteelScrew],
[SteelRotor, BWafer, SteelRotor],
[SteelScrew, null, SteelScrew]]);

//Oxygen Concentrator
recipes.addShaped(<GalacticraftCore:item.oxygenConcentrator>, [
[CompressedSteel, AirVent, CompressedSteel],
[CompressedSteel, <GalacticraftCore:item.airFan>, CompressedSteel],
[<GalacticraftCore:item.canister>, LVPump, <GalacticraftCore:item.canister>]]);

//Tier 1 Rocket Engine
var RocketEngine = <GalacticraftCore:item.engine>;
recipes.addShaped(RocketEngine, [
[<ore:plateStainlessSteel>, <gregtech:gt.metaitem.01:32642>, <ore:pipeTinyStainlessSteel>],
[HeavyPlating, <gregtech:gt.blockcasings3:14>, HeavyPlating],
[HeavyPlating, <ore:ringStainlessSteel>, HeavyPlating]]);

//Tier 1 Booster
recipes.addShaped(<GalacticraftCore:item.engine:1>, [
[<GalacticraftCore:item.meteoricIronIngot:1>, <GalacticraftCore:item.meteoricIronIngot:1>, <GalacticraftCore:item.meteoricIronIngot:1>],
[HeavyPlating, <gregtech:gt.metaitem.01:32405>, HeavyPlating],
[HeavyPlating, AirVent, HeavyPlating]]);

//Nose Cone
recipes.addShaped(<GalacticraftCore:item.noseCone>, [
[<ore:craftingToolScrewdriver>, HeavyPlating, <ore:craftingToolHardHammer>],
[<ore:screwStainlessSteel>, <gregtech:gt.metaitem.01:32692>, <ore:screwStainlessSteel>],
[HeavyPlating, <ore:circuitAdvanced>, HeavyPlating]]);

//Oil Extractor
recipes.addShaped(<GalacticraftCore:item.oilExtractor>, [
[<ore:pipeTinySteel>, null, null],
[null, <GalacticraftCore:item.oilCanisterPartial:1001>.noReturn(), CompressedBronze],
[<minecraft:stone_button>, CompressedBronze, CompressedBronze]]);

//Buggy Wheel
recipes.addShaped(<GalacticraftCore:item.buggymat>, [
[CompressedSteel, <ore:plateRubber>, CompressedSteel],
[<ore:plateRubber>, CompressedTi, <ore:plateRubber>],
[CompressedSteel, <ore:plateRubber>, CompressedSteel]]);

//Buggy Seat
recipes.addShaped(<GalacticraftCore:item.buggymat:1>, [
[null, RubberBlock, CompressedSteel],
[RubberBlock, RubberBlock, CompressedSteel],
[CompressedSteel, CompressedSteel, CompressedSteel]]);

//Buggy Storage Box
recipes.addShaped(<GalacticraftCore:item.buggymat:2>, [
[CompressedSteel, RubberBlock, CompressedSteel],
[CompressedSteel, <chestup:Blockchestup:1>, CompressedSteel],
[CompressedSteel, CompressedSteel, CompressedSteel]]);

//Frequencey Module
recipes.addShaped(<GalacticraftCore:item.basicItem:19>, [
[CompressedAl, <gregtech:gt.metaitem.01:32690>, CompressedAl],
[BWafer, <gregtech:gt.metaitem.01:32740>, BWafer],
[CompressedTin, battery, CompressedTin]]);

//Walk way
recipes.addShaped(<GalacticraftMars:tile.walkway> * 2, [
[DeshPlate, DeshPlate, DeshPlate],
[null, <ore:blockDesh>, null],
[DeshPlate, DeshPlate, DeshPlate]]);

// Walk way Aluminum
recipes.addShaped(<GalacticraftMars:tile.walkwayWire> * 2, [
[DeshPlate, DeshPlate, DeshPlate],
[<GalacticraftCore:tile.aluminumWire:1>, <ore:blockDesh>, <GalacticraftCore:tile.aluminumWire:1>],
[DeshPlate, DeshPlate, DeshPlate]]);

// Walk way Oxygen
recipes.addShaped(<GalacticraftMars:tile.walkwayOxygenPipe> * 2, [
[DeshPlate, DeshPlate, DeshPlate],
[<GalacticraftCore:tile.oxygenPipe>, <ore:blockDesh>, <GalacticraftCore:tile.oxygenPipe>],
[DeshPlate, DeshPlate, DeshPlate]]);

//Thermal Cloth
/*recipes.addShaped(<GalacticraftMars:item.itemBasicAsteroids:7> , [
[AlFoil, <minecraft:string>, AlFoil],
[<minecraft:string>, <IC2:itemPartCarbonPlate>, <minecraft:string>],
[AlFoil, <minecraft:string>, AlFoil]]);
*/
Assembler.addRecipe(<GalacticraftMars:item.itemBasicAsteroids:7>, AlFoil * 4, <gregtech:gt.metaitem.01:17472>, <liquid:molten.polytetrafluoroethylene> * 576, 100, 1920);

//Desh Sticks
recipes.addShapeless(<GalacticraftMars:item.null:1>, [<gregtech:gt.metaitem.01:23884>]);

//Desh Rod
recipes.addShapeless(<gregtech:gt.metaitem.01:23884>, [<GalacticraftMars:item.null:1>]);

//Battery
//recipes.addShapeless(<GalacticraftCore:item.battery:*>, [<gregtech:gt.metaitem.01:32500>]);

//Standard Wrenche
recipes.addShapeless(<GalacticraftCore:item.standardWrench>, [<gregtech:gt.metatool.01:16>.withTag({"GT.ToolStats": {PrimaryMaterial: "Steel", MaxDamage: 51200 as long, SecondaryMaterial: "Steel"}})]);

//Heavy Rocket Engine (Tier 2)
recipes.addShaped(<GalacticraftMars:item.itemBasicAsteroids:1> , [
[<GalacticraftMars:item.itemBasicAsteroids>, <ore:pipeTinyTungstenSteel>, <GalacticraftMars:item.itemBasicAsteroids>],
[<GalacticraftMars:item.itemBasicAsteroids>, <gregtech:gt.metaitem.01:32644> ,<GalacticraftMars:item.itemBasicAsteroids>],
[<GalacticraftCore:item.engine:1>, RocketEngine, <GalacticraftCore:item.engine:1>]]);


//Heavy Nose Cone
recipes.addShaped(<GalacticraftMars:item.heavyNoseCone>, [
[<ore:craftingToolScrewdriver>, <GalacticraftCore:item.noseCone>, <ore:craftingToolHardHammer>],
[<ore:screwTitanium>, HeavyDutyPlate, <ore:screwTitanium>],
[HeavyDutyPlate, <ore:plateDoubleRhenium>, HeavyDutyPlate]]);

//Red Core
recipes.addShaped(<GalacticraftMars:item.itemBasicAsteroids:8>, [
[<ore:ringRedAlloy>, CompressedIron, <ore:ringRedAlloy>],
[CompressedIron, <ore:lensDiamond>, CompressedIron],
[<ore:ringRedAlloy>, CompressedIron, <ore:ringRedAlloy>]]);

//Energy Beam Reflector
recipes.addShaped(<GalacticraftMars:tile.beamReflector>, [
[DeshRing, <GalacticraftMars:item.itemBasicAsteroids:8>, DeshRing],
[null, <ore:stickDesh>, null],
[DeshPlate, <ore:blockDesh>, DeshPlate]]);

//Energy Beam Receiver
recipes.addShaped(<GalacticraftMars:tile.beamReceiver>, [
[CompressedTin, DeshRing, CompressedTin],
[DeshRing, <GalacticraftMars:item.itemBasicAsteroids:8>, DeshRing],
[CompressedTin, DeshRing, CompressedTin]]);

//Short range Teleporter
// recipes.addShaped(<GalacticraftMars:tile.telepadShort>, [
// [CompressedTi, DeshPlate, CompressedTi],
// [<GalacticraftMars:item.itemBasicAsteroids:8>, <IC2:blockMachine2>, <GalacticraftMars:item.itemBasicAsteroids:8>],
// [CompressedTi, DeshPlate, CompressedTi]]);

//Cryogenic Chamber
/*recipes.addShaped(<GalacticraftMars:tile.marsMachine:4>, [
[HeavyDutyPlate, <GraviSuite:itemSimpleItem:2>, HeavyDutyPlate],
[<GalacticraftMars:item.null:3>, <CarpentersBlocks:itemCarpentersBed>, <GalacticraftMars:item.null:3>],
[HeavyDutyPlate, <minecraft:clock>, HeavyDutyPlate]]);
*/
recipes.addShaped(<GalacticraftMars:tile.marsMachine:4>, [
[HeavyDutyPlate, <GraviSuite:itemSimpleItem:2>, HeavyDutyPlate],
[<GalacticraftMars:item.null:3>, <minecraft:bed>, <GalacticraftMars:item.null:3>],
[HeavyDutyPlate, <minecraft:clock>, HeavyDutyPlate]]);

/*Terraformer - ExtraCells
recipes.addShaped(<GalacticraftMars:tile.marsMachine>, [
[CompressedTi, <GalacticraftCore:item.oxygenConcentrator>, CompressedTi],
[DeshPlate, <IC2:blockMachine:15>, DeshPlate],
[<gregtech:gt.metaitem.01:32602>, <extracells:certustank>, <gregtech:gt.metaitem.01:32612>]]);*/

//Terraformer - Non ExtraCells
recipes.addShaped(<GalacticraftMars:tile.marsMachine>, [
[CompressedTi, <GalacticraftCore:item.oxygenConcentrator>, CompressedTi],
[DeshPlate, <IC2:blockMachine:15>, DeshPlate],
[<gregtech:gt.metaitem.01:32602>, <gregtech:gt.blockmachines:684>, <gregtech:gt.metaitem.01:32612>]]);

//Launch Controller
recipes.addShaped(<GalacticraftMars:tile.marsMachine:8>, [
[AdvWafer, <GalacticraftCore:item.basicItem:19>, AdvWafer],
[DeshPlate, <gregtech:gt.blockmachines:11>, DeshPlate],
[<ore:cableGt02Aluminium>, DeshPlate, <ore:cableGt02Aluminium>]]);

//Grappler
recipes.addShaped(<GalacticraftMars:item.grapple>, [
[null, null, <ore:toolHeadArrowMeteoricSteel>],
[String, String, String],
[<ore:ringMeteoricSteel>, null, null]]);

// --- Parachute
recipes.addShaped(<GalacticraftCore:item.parachute>, [
[<GalacticraftCore:item.canvas>, <GalacticraftCore:item.canvas>, <GalacticraftCore:item.canvas>],
[<ore:wireFineSteel>, null, <ore:wireFineSteel>],
[<ore:wireFineSteel>, <ore:wireFineSteel>, <ore:wireFineSteel>]]);

val DeshIngot = <ore:ingotDesh>;
val DeshStick = <ore:stickDesh>;
DeshStick.add(<GalacticraftMars:item.null:1>);

//Orion Drive
recipes.remove(orionDrive);

// --- Assembler Recipes ---

//Glowstone Torch
Assembler.addRecipe(<GalacticraftCore:tile.glowstoneTorch>, <minecraft:redstone_torch>, <minecraft:glowstone_dust>, 200, 16);

//Canister
Assembler.addRecipe(<GalacticraftCore:item.oilCanisterPartial:1001>, <GalacticraftCore:item.basicItem:9> * 8, <gregtech:gt.metaitem.01:28305> * 4, 200, 64);

//Hydrogen Pipe
Assembler.addRecipe(<GalacticraftMars:tile.hydrogenPipe>, OxygenPipe, <gregtech:gt.metaitem.01:28035> * 4, 400, 16);

//Thermal Padding Helm
Assembler.addRecipe(<GalacticraftMars:item.thermalPadding>, <GalacticraftMars:item.itemBasicAsteroids:7> * 5, <gregtech:gt.integrated_circuit:5> * 0, 750, 1024);

//Thermal Padding Chestpiece
Assembler.addRecipe(<GalacticraftMars:item.thermalPadding:1>, <GalacticraftMars:item.itemBasicAsteroids:7> * 8, <gregtech:gt.integrated_circuit:8> * 0, 1200, 1024);

//Thermal Padding Leggings
Assembler.addRecipe(<GalacticraftMars:item.thermalPadding:2>, <GalacticraftMars:item.itemBasicAsteroids:7> * 7, <gregtech:gt.integrated_circuit:7> * 0, 1050, 1024);

//Thermal Padding Boots
Assembler.addRecipe(<GalacticraftMars:item.thermalPadding:3>, <GalacticraftMars:item.itemBasicAsteroids:7> * 4, <gregtech:gt.integrated_circuit:4> * 0, 600, 1024);

//Blast Furnace Recipes

//Titan Ingot
BlastFurnace.addRecipe([<gregtech:gt.metaitem.01:11028>], [<GalacticraftMars:item.itemBasicAsteroids:4> * 2], 1500, 120, 1500);

// --- Canner Recipes ---

//Food Cans
Canner.addRecipe(<GalacticraftCore:item.basicItem:15>, <minecraft:apple> * 6, <GalacticraftCore:item.canister>, 800, 1);
Canner.addRecipe(<GalacticraftCore:item.basicItem:16>, <minecraft:carrot> * 8, <GalacticraftCore:item.canister>, 800, 1);
Canner.addRecipe(<GalacticraftCore:item.basicItem:17>,<minecraft:melon> * 8, <GalacticraftCore:item.canister>, 800, 1);
Canner.addRecipe(<GalacticraftCore:item.basicItem:18>, <minecraft:potato> * 16, <GalacticraftCore:item.canister>, 800, 1);

//Extruder Recipes

//Oxygen Pipe
Extruder.addRecipe(OxygenPipe *2 , <IC2:blockAlloyGlass>, <gregtech:gt.metaitem.01:32359> * 0, 120, 128);

//Tin Canister
Extruder.addRecipe(<GalacticraftCore:item.canister>, <GalacticraftCore:item.basicItem:7>, <gregtech:gt.metaitem.01:32354> * 0, 120, 32);

//Copper Canister
Extruder.addRecipe(<GalacticraftCore:item.canister:1>, <GalacticraftCore:item.basicItem:6>, <gregtech:gt.metaitem.01:32354> * 0, 120, 32);

//Steel Pole
Extruder.addRecipe(SteelPole, <GalacticraftCore:item.basicItem:9> * 2, <gregtech:gt.metaitem.01:32352> * 0, 600, 32);

// --- Furnace Recipes ---

//Ilmenite Ore
furnace.remove(<*>, <GalacticraftMars:tile.asteroidsBlock:4>);
//Titan Shards
furnace.remove(<*>, <GalacticraftMars:item.itemBasicAsteroids:4>);
//Desh Ore
furnace.remove(<*>, <GalacticraftMars:tile.mars:2>);
//Desh Shards
//furnace.remove(<*>, <GalacticraftMars:item.null>);

// --- Macerator Recipes ---

//Raw Meteoric Iron

Macerator.addRecipe(<GalacticraftCore:item.meteoricIronRaw> * 2, <GalacticraftCore:tile.fallenMeteor>);

// --- Plate Bender Recipes ---

//Tin Canister
PlateBender.addRecipe(<GalacticraftCore:item.canister> , <GalacticraftCore:item.basicItem:7> * 2, 200, 8);

//Copper Canister
PlateBender.addRecipe(<GalacticraftCore:item.canister:1> , <GalacticraftCore:item.basicItem:6> * 2, 200, 8);

// --- Vacuum Freezer Recipes ---

//Fluid Oxygen
VacuumFreezer.addRecipe(<IC2:itemFluidCell>.withTag({Fluid: {Amount: 1000, FluidName: "liquidoxygen"}}), <gregtech:gt.metaitem.01:30013> * 12, 2400);

//Fluid Nitrogen
VacuumFreezer.addRecipe(<IC2:itemFluidCell>.withTag({Fluid: {Amount: 1000, FluidName: "liquidnitrogen"}}), <gregtech:gt.metaitem.01:30012> * 12, 2400);

//Ilmenite to Ore Dict
oreDict.oreIlmenite.add(<GalacticraftMars:tile.asteroidsBlock:4>);

//Desh to Ore Dict
oreDict.oreDesh.add(<GalacticraftMars:tile.mars:2>);

//Raw Silicon tio Ore Dict
oreDict.dustSilicon.add(<GalacticraftCore:item.basicItem:2>);

//Desh Block to Ore Dict
oreDict.blockDesh.add(<GalacticraftMars:tile.mars:8>);

//Meteoric Iron Block to Ore Dict
oreDict.blockMeteoricIron.add(<GalacticraftCore:tile.gcBlockCore:12>);


// --- Fluid Canner Recipes ---

recipes.remove(<GalacticraftCore:item.oxygenTankHeavyFull>);
recipes.remove(<GalacticraftCore:item.oxygenTankMedFull>);
recipes.remove(<GalacticraftCore:item.oxygenTankLightFull>);

//Heavy Oxygen Tank
FluidCanner.addRecipe(<GalacticraftCore:item.oxygenTankHeavyFull>, <GalacticraftCore:item.oxygenTankHeavyFull:2700>, null, <liquid:oxygen> * 60000);
//Medium Oxygen Tank
FluidCanner.addRecipe(<GalacticraftCore:item.oxygenTankMedFull>, <GalacticraftCore:item.oxygenTankMedFull:1800>, null, <liquid:oxygen> * 40000);
//Light Oxygen Tank
FluidCanner.addRecipe(<GalacticraftCore:item.oxygenTankLightFull>, <GalacticraftCore:item.oxygenTankLightFull:900>, null, <liquid:oxygen> * 20000);

//Fuel Cannister
FluidCanner.addRecipe(<GalacticraftCore:item.fuelCanisterPartial:1>, <GalacticraftCore:item.oilCanisterPartial:1001>, null, <liquid:rocket_fuel> * 1000);

<GalacticraftCore:item.fuelCanisterPartial:1>.addTooltip(format.white("You can use only ") + format.gold("Rocket Fuel"));
<GalacticraftCore:tile.fuelLoader>.addTooltip(format.white("You can use only ") + format.gold("Rocket Fuel"));

// slabs
var meta = [0, 1, 2, 3, 4, 5] as int[];
var slabs = [
	<GalacticraftCore:slabGCHalf>,
	<GalacticraftCore:slabGCHalf:1>,
	<GalacticraftCore:slabGCHalf:2>,
	<GalacticraftCore:slabGCHalf:3>,
	<GalacticraftCore:slabGCHalf:4>,
	<GalacticraftCore:slabGCHalf:5>
] as minetweaker.item.IItemStack[];
var blocks = [
	<GalacticraftCore:tile.gcBlockCore:4>,
	<GalacticraftCore:tile.gcBlockCore:3>,
	<GalacticraftCore:tile.moonBlock:4>,
	<GalacticraftCore:tile.moonBlock:14>,
	<GalacticraftMars:tile.mars:4>,
	<GalacticraftMars:tile.mars:7>
] as minetweaker.item.IItemStack[];

for i in meta {
	var slab = slabs[i];
	var block = blocks[i];
	recipes.remove(slab);
	mods.gregtech.CuttingSaw.addRecipe([slab * 2], block, <liquid:water> * 4, 50, 8);
	mods.gregtech.CuttingSaw.addRecipe([slab * 2], block, <liquid:ic2distilledwater> * 3, 50, 8);
	mods.gregtech.CuttingSaw.addRecipe([slab * 2], block, <liquid:lubricant> * 1, 25, 8);
	recipes.addShaped(slab * 2, [[<ore:craftingToolSaw>, block]]);
}
