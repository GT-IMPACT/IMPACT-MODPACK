#=====#
# IC2 #
#=====#

#===============================================#
#Imports
import minetweaker.item.IItemStack;
import mods.gregtech.AlloySmelter;
import mods.gregtech.ArcFurnace;
import mods.gregtech.Assembler;
import mods.gregtech.Autoclave;
import mods.gregtech.Canner;
import mods.gregtech.Centrifuge;
import mods.gregtech.ChemicalBath;
import mods.gregtech.ChemicalReactor;
import mods.gregtech.CuttingSaw;
import mods.gregtech.Electrolyzer;
import mods.gregtech.Extruder;
import mods.gregtech.ForgeHammer;
import mods.gregtech.FormingPress;
import mods.gregtech.Mixer;
import mods.gregtech.PlasmaArcFurnace;
import mods.gregtech.PlateBender;
import mods.gregtech.WireAssembler;
import mods.ic2.Compressor;
import mods.ic2.SemiFluidGenerator;
import mods.nei.NEI;
import mods.ic2.Macerator;

print("Initializing 'IC2.zs'...");

#===============================================#
#Variables
var EmptyCell = <IC2:itemCellEmpty>;

var DrillLV            = <gregtech:gt.metatool.01:101>;
var WrenchLV           = <gregtech:gt.metatool.01:120>;
var dustThorium        = <gregtech:gt.metaitem.01:2096>;
var DiamondDust        = <gregtech:gt.metaitem.01:2500>;
var nuggetIron         = <gregtech:gt.metaitem.01:9032>;
var nuggetWIron        = <gregtech:gt.metaitem.01:9304>;
var ingotWIron         = <gregtech:gt.metaitem.01:11304>;
var QuadrupleGoldPlate = <gregtech:gt.metaitem.01:20086>;
var DenseCopperPlate   = <gregtech:gt.metaitem.01:22035>;
var specificDenseLeadPlate   = <gregtech:gt.metaitem.01:22089>;
var specificDenseBronsePlate = <gregtech:gt.metaitem.01:22300>;
var MoldIngot          = <gregtech:gt.metaitem.01:32306>;
var LVMotor            = <gregtech:gt.metaitem.01:32600>;
var MVMotor            = <gregtech:gt.metaitem.01:32601>;
var HVMotor            = <gregtech:gt.metaitem.01:32602>;
var EVMotor            = <gregtech:gt.metaitem.01:32603>;
var IVMotor            = <gregtech:gt.metaitem.01:32604>;
var pumpLV             = <gregtech:gt.metaitem.01:32610>;
var pumpMV             = <gregtech:gt.metaitem.01:32611>;
var pumpHV             = <gregtech:gt.metaitem.01:32612>;
var pumpEV             = <gregtech:gt.metaitem.01:32613>;
var pumpIV             = <gregtech:gt.metaitem.01:32614>;
var moduleConveyorLV   = <gregtech:gt.metaitem.01:32630>;
var moduleConveyorMV   = <gregtech:gt.metaitem.01:32631>;
var moduleConveyorHV   = <gregtech:gt.metaitem.01:32632>;
var moduleConveyorEV   = <gregtech:gt.metaitem.01:32633>;
var moduleConveyorIV   = <gregtech:gt.metaitem.01:32634>;
var moduleConveyorUV   = <gregtech:gt.metaitem.01:32637>;
var pistonElectricLV   = <gregtech:gt.metaitem.01:32640>;
var pistonElectricHV   = <gregtech:gt.metaitem.01:32642>;
var pistonElectricEV   = <gregtech:gt.metaitem.01:32643>;
var pistonElectricIV   = <gregtech:gt.metaitem.01:32644>;
var robotArmLV         = <gregtech:gt.metaitem.01:32650>;
var robotArmHV         = <gregtech:gt.metaitem.01:32652>;
var robotArmEV         = <gregtech:gt.metaitem.01:32653>;
var robotArmIV         = <gregtech:gt.metaitem.01:32654>;
var FieldGeneratorHV   = <gregtech:gt.metaitem.01:32672>;
var FieldGeneratorEV   = <gregtech:gt.metaitem.01:32673>;
var emitterMV          = <gregtech:gt.metaitem.01:32681>;
var emitterHV          = <gregtech:gt.metaitem.01:32682>;
var emitterEV          = <gregtech:gt.metaitem.01:32683>;
var emitterIV          = <gregtech:gt.metaitem.01:32684>;
var sensorLV           = <gregtech:gt.metaitem.01:32690>;
var sensorHV           = <gregtech:gt.metaitem.01:32692>;
var sensorIV           = <gregtech:gt.metaitem.01:32694>;
var fuelRodThorium     = <gregtech:gt.Thoriumcell>;

var HullLV                = <gregtech:gt.blockmachines:11>;
var HullMV                = <gregtech:gt.blockmachines:12>;
var HullHV                = <gregtech:gt.blockmachines:13>;
var HullEV                = <gregtech:gt.blockmachines:14>;
var cableCopperAnnealed1x = <gregtech:gt.blockmachines:1386>;
var cableHVGold           = <gregtech:gt.blockmachines:1426>;
var steelFluidPipe        = <gregtech:gt.blockmachines:5132>;
var chestBuffer           = <gregtech:gt.blockmachines:9231>;

var tinIngot            = <gregtech:gt.metaitem.01:11057>;
var aluminiumIngot      = <gregtech:gt.metaitem.01:11019>;
var bronzeIngot         = <gregtech:gt.metaitem.01:11300>;
var electrumIngot       = <gregtech:gt.metaitem.01:11303>;
var wroughtIronIngot    = <gregtech:gt.metaitem.01:11304>;
var steelIngot          = <gregtech:gt.metaitem.01:11305>;
var ststeelIngot        = <gregtech:gt.metaitem.01:11306>;
var batteryAlloyIngot   = <gregtech:gt.metaitem.01:11315>;
var annealedCopperIngot = <gregtech:gt.metaitem.01:11345>;
var gtIntCircuit01 	= <gregtech:gt.integrated_circuit:1>;
var gtIntCircuit00 	= <gregtech:gt.integrated_circuit:0>;

var NucReactor        = <IC2:blockGenerator:5>;
var RTG               = <IC2:blockGenerator:6>;
var TerraFormer       = <IC2:blockMachine:15>;
var MiningPipe        = <IC2:blockMiningPipe>;
var energyCrystal     = <IC2:itemBatCrystal:*>;
var LapotronicCrystal = <IC2:itemBatLamaCrystal:26>;
var BioChaff          = <IC2:itemBiochaff>;
var itemCasingBronze  = <ore:itemCasingBronze>;
var itemCasingGold    = <ore:itemCasingGold>;
var fuelRodEmpty      = <IC2:itemFuelRod>;
var rotorIron         = <IC2:itemironrotor>;
var MOX               = <IC2:itemMOX>;
var specificAdvancedAlloyPlate = <IC2:itemPartAlloy>; 
var SmallPowerUnit    = <IC2:itemRecipePart:3>;
var rotorBladeWood    = <IC2:itemRecipePart:7>;
var rotorBladeIron    = <IC2:itemRecipePart:8>;
var rotorBladeCarbon  = <IC2:itemRecipePart:9>;
var rotorBladeSteel   = <IC2:itemRecipePart:10>;
var shaftIron         = <IC2:itemRecipePart:11>;
var shaftSteel        = <IC2:itemRecipePart:12>;
var coil              = <IC2:itemRecipePart>;
var ODScanner         = <IC2:itemScanner:*>;
var OVScanner         = <IC2:itemScannerAdv>;
var rotorSteel        = <IC2:itemsteelrotor>;
var TFBP              = <IC2:itemTFBP>;
var ElectricHoe       = <IC2:itemToolHoe>;
var ElectricWrench    = <IC2:itemToolWrenchElectric>;
var ElectricTreetap   = <IC2:itemTreetapElectric>;
var uraniumEnriched   = <IC2:itemUran>;
var rotorCarbon       = <IC2:itemwcarbonrotor>;
var weedingtrowel     = <IC2:itemWeedingTrowel>;
var rotorWood         = <IC2:itemwoodrotor>;
var fuelRodMOX        = <IC2:reactorMOXSimple:1>;
var fuelRodUranium    = <IC2:reactorUraniumSimple:1>;

val ReactorCondensator      = <IC2:reactorCondensator>;
val ReactorHeatSwitch       = <IC2:reactorHeatSwitch>;
val ReactorHeatSwitchCore   = <IC2:reactorHeatSwitchCore>;
val ReactorHeatSwitchSpread = <IC2:reactorHeatSwitchSpread>;
val ReactorPlate            = <IC2:reactorPlating>;
val ReactorHeatPlate        = <IC2:reactorPlatingHeat>;
val ReactorExplosivePlate   = <IC2:reactorPlatingExplosive>;
val ReactorReflector        = <IC2:reactorReflector>;
val ReactorThickReflector   = <IC2:reactorReflectorThick>;
val ReactorHeatVent         = <IC2:reactorVent:1>;
val ReactorHeatVentCore     = <IC2:reactorVentCore:1>;
val ReactorHeatVentGold     = <IC2:reactorVentGold:1>;
val ReactorHeatVentDiamond  = <IC2:reactorVentDiamond:1>;
val ReactorHeatVentSpread   = <IC2:reactorVentSpread>;

#===============================================#

# Recipe Fixes
recipes.remove(<IC2:itemToolDrill:*>);
recipes.remove(<IC2:itemToolDDrill:*>);
recipes.remove(<IC2:itemToolIridiumDrill:*>);
recipes.remove(<IC2:itemToolChainsaw:*>);

// --- StarGate & more (1.0.1.4)
# Recipe Fixes
recipes.remove(<SGCraft:stargateRing>);
recipes.remove(<SGCraft:stargateRing:1>);
recipes.remove(<SGCraft:stargateBase>);
recipes.remove(<SGCraft:stargateController>);
recipes.remove(<SGCraft:ic2PowerUnit>);
recipes.remove(<SGCraft:rfPowerUnit>);
recipes.remove(<SGCraft:ocInterface>);
recipes.remove(<SGCraft:sgIrisBlade>);
recipes.remove(<SGCraft:ic2Capacitor>);
recipes.remove(<SGCraft:sgChevronUpgrade>);
recipes.remove(<SGCraft:sgIrisUpgrade>);


recipes.addShaped(<IC2:blockMachine:1>, [
	[<ore:plateIron>, <ore:plateIron>,<ore:plateIron>],
	[<ore:plateIron>, <ore:craftingToolHardHammer>, <ore:plateIron>],
	[<ore:plateIron>, <minecraft:furnace>, <ore:plateIron>]
]);

# Recipe Tweaks
// ic2 lapis
<ore:dustTinyLapis>.remove(<IC2:itemDustSmall:9>);
<ore:dustLapis>.remove(<IC2:itemDust:12>);
<ore:plateLapis>.remove(<IC2:itemPlates:8>);
<ore:plateDenseLapis>.remove(<IC2:itemDensePlates:8>);

// Obsidian
<ore:blockObsidian>.remove(<minecraft:obsidian>);
<ore:dustObsidian>.remove(<IC2:itemDust:11>);
<ore:dustObsidian>.remove(<EnderIO:itemPowderIngot:7>);


recipes.addShapeless(<IC2:itemBatChargeCrystal>, [<IC2:itemBatChargeCrystal:*>]);
recipes.addShapeless(<IC2:itemBatChargeLamaCrystal>, [<IC2:itemBatChargeLamaCrystal:*>]);


//RSH Condensator
recipes.remove(<IC2:reactorCondensator:1>);
recipes.addShaped(<IC2:reactorCondensator:1>, [
	[<ore:plateRedAlloy>, ReactorHeatSwitchCore, <ore:plateRedAlloy>],
	[<ore:plateRedAlloy>, ReactorHeatVentCore, <ore:plateRedAlloy>],
	[<ore:plateRedAlloy>, ReactorHeatSwitchCore, <ore:plateRedAlloy>]]);
recipes.addShapeless(<IC2:reactorCondensator:1>, [<IC2:reactorCondensator:9998>, <ore:plateRedAlloy>, <ore:plateRedAlloy>, <ore:plateRedAlloy>]);

//LZH Condensator
recipes.remove(<IC2:reactorCondensatorLap:1>);
recipes.addShaped(<IC2:reactorCondensatorLap:1>, [
	[<ore:plateLapis>, ReactorHeatVentGold, <ore:plateLapis>],
	[<IC2:reactorCondensator:1>, <ore:plateLapis>, <IC2:reactorCondensator:1>],
	[<ore:plateLapis>, ReactorHeatSwitchSpread, <ore:plateLapis>]]);
recipes.addShapeless(<IC2:reactorCondensatorLap:1>, [<IC2:reactorCondensatorLap:9998>, <ore:plateLapis>, <ore:plateLapis>, <ore:plateLapis>]);

// ic2 Mfe Upgrade

recipes.remove(<IC2:itemupgradekit>);
    
//Electric tool
recipes.remove(ElectricWrench);
recipes.addShapeless(ElectricWrench, [<gregtech:gt.metatool.01:16>.noReturn(), SmallPowerUnit]);
//recipes.addShapeless(ElectricWrench, [<BuildCraft|Core:wrenchItem>, SmallPowerUnit]);

recipes.addShapeless(<IC2:blockMachine>, [<gregtech:gt.blockcasings>]);

//Bollting machine
recipes.addShaped(<IC2:blockMachine2:10>, [
	[<ore:cellEmpty>, pumpLV, <ore:cellEmpty>],
	[<ore:cellEmpty>, <gregtech:gt.blockmachines:231>, <ore:cellEmpty>],
	[<ore:cellEmpty>, pumpLV, <ore:cellEmpty>]]);

ArcFurnace.addRecipe([steelIngot * 8, annealedCopperIngot * 6, bronzeIngot * 9, tinIngot * 31], <IC2:blockMachine2:10>, <liquid:oxygen> * 8208, [10000, 10000, 10000, 10000], 2280, 96);

//Raintank
ArcFurnace.addRecipe([wroughtIronIngot * 13], <Forestry:factory2:1>, <liquid:oxygen> * 1872, [10000], 520, 96);

//Lead
recipes.addShaped(<minecraft:lead>, [
    [<minecraft:string>, <minecraft:string>, null], 
    [<minecraft:string>, <IC2:itemHarz>, null],
    [null, null, <minecraft:string>]]);

//IC Uran block
recipes.remove(<IC2:blockMetal:3>);
Compressor.addRecipe(<IC2:blockMetal:3>, <IC2:itemUran238> * 9);

//IC Iridium Fix
furnace.remove(<gregtech:gt.metaitem.01:11084>, <IC2:itemOreIridium>);
recipes.removeShapeless(<IC2:itemOreIridium> * 9, [<gregtech:gt.metaitem.01:11084>]);
recipes.removeShapeless(<gregtech:gt.metaitem.01:2084> * 9, [<gregtech:gt.metaitem.01:11084>]);

game.setLocalization("ic2.itemCellBiomass", "Industrial Biomass Cell");
game.setLocalization("ic2.fluidBiomass", "Industrial Biomass");

// Construction Foam
Mixer.addRecipe(null, <liquid:ic2constructionfoam> * 8000, [<gregtech:gt.metaitem.01:2896>], <liquid:molten.concrete> * 576, 20, 16);

// IC2 Motor
recipes.remove(<IC2:itemRecipePart:1>);
recipes.addShapeless(<IC2:itemRecipePart:1>, [<gregtech:gt.metaitem.01:32600>]);

// return only from full empty hydrant cell
recipes.addShapeless(<IC2:itemCellEmpty>, [<IC2:itemCellHydrant:10000>]);

// --- Night Vision
recipes.remove(<IC2:itemNightvisionGoggles:*>);
recipes.addShaped(<IC2:itemNightvisionGoggles:26>, [
[<IC2:reactorHeatSwitchDiamond:1>, <ore:screwStainlessSteel>, <IC2:reactorHeatSwitchDiamond:1>],
[<ore:ringStainlessSteel>, <ore:boltStainlessSteel>, <ore:ringStainlessSteel>],
[<GalacticraftCore:item.sensorLens>, <ore:craftingToolScrewdriver>, <GalacticraftCore:item.sensorLens>]]);

#==================================================================#
#Nuclear Reactor
NucReactor.addTooltip(format.gray("Coefficient: ") + format.red("x6"));

<IC2:blockGenerator:9>.addTooltip(format.gray("Coefficient: ") + format.red("x5"));

<IC2:blockGenerator:4>.addTooltip(format.gray("Coefficient: ") + format.red("x10"));

#==================================================================#
// --- Shit 1.0.1.4 !!!
// --- Extruder Recipes ---

// --- Wind Rod
Extruder.addRecipe(<IC2:itemRecipePart:11>, <ore:blockIron>, <gregtech:gt.metaitem.01:32377> * 0, 2000, 120);
Extruder.addRecipe(<IC2:itemRecipePart:12>, <ore:blockSteel>, <gregtech:gt.metaitem.01:32377> * 0, 2000, 480);

print("Initialized 'IC2.zs'");
