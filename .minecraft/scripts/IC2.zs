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
recipes.remove(<IC2:blockKineticGenerator:*>);
recipes.remove(<IC2:blockHeatGenerator:*>);
recipes.remove(<IC2:blockGenerator:*>);
recipes.remove(<IC2:blockMachine:*>);
recipes.remove(<IC2:blockMachine2:*>);
recipes.remove(<IC2:blockMachine3:*>);
recipes.remove(<IC2:blockPersonal:*>);
recipes.remove(<IC2:blockITNT>);
recipes.remove(<IC2:blockElectric:*>);
recipes.remove(<IC2:itemFuelPlantBall>); // plantball fix
recipes.remove(<IC2:itemFluidCell>);
recipes.remove(<IC2:itemPartCarbonMesh>);
recipes.remove(<IC2:itemScrapbox>);
recipes.remove(<IC2:itemToolDrill:*>);
recipes.remove(<IC2:itemToolDDrill:*>);
recipes.remove(<IC2:itemToolIridiumDrill:*>);
recipes.remove(<IC2:itemToolChainsaw:*>);
recipes.remove(<IC2:itemToolWrench>);
recipes.remove(<IC2:blockPersonal>);
recipes.remove(OVScanner);

// --- StarGate (1.0.1.4)
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
recipes.remove(<IC2:blockKineticGenerator>);

recipes.remove(rotorBladeWood);
recipes.addShaped(rotorBladeWood, [
	[<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],
	[<ore:plateWood>, <ore:ringWood>, <ore:plateWood>],
	[<ore:plateWood>, <ore:plateWood>, <ore:plateWood>]]);
recipes.remove(rotorWood);
recipes.addShaped(rotorWood, [
	[<ore:stickIron>, rotorBladeWood, <ore:craftingToolHardHammer>],
	[rotorBladeWood, <ore:ringIron>, rotorBladeWood],
	[<ore:craftingToolScrewdriver>, rotorBladeWood, <ore:screwIron>]]);
recipes.remove(rotorBladeIron);
recipes.addShaped(rotorBladeIron, [
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
	[<ore:plateIron>, <ore:ringSteel>, <ore:plateIron>],
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
recipes.remove(rotorIron);
recipes.addShaped(rotorIron, [
	[shaftIron, rotorBladeIron, <ore:craftingToolHardHammer>],
	[rotorBladeIron, <ore:ringSteel>, rotorBladeIron],
	[<ore:craftingToolWrench>, rotorBladeIron, shaftIron]]);
recipes.remove(rotorBladeSteel);
recipes.addShaped(rotorBladeSteel, [
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
	[<ore:plateSteel>, <ore:ringTungstenSteel>, <ore:plateSteel>],
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
recipes.remove(rotorSteel);
recipes.addShaped(rotorSteel, [
	[shaftSteel, rotorBladeSteel, <ore:craftingToolHardHammer>],
	[rotorBladeSteel, <ore:ringTungstenSteel>, rotorBladeSteel],
	[<ore:craftingToolWrench>, rotorBladeSteel, shaftSteel]]);
recipes.remove(rotorBladeCarbon);
recipes.addShaped(rotorBladeCarbon, [
	[<ore:plateAlloyCarbon>, <ore:plateAlloyCarbon>, <ore:plateAlloyCarbon>],
	[<ore:plateAlloyCarbon>, <ore:ringIridium>, <ore:plateAlloyCarbon>],
	[<ore:plateAlloyCarbon>, <ore:plateAlloyCarbon>, <ore:plateAlloyCarbon>]]);
recipes.remove(rotorCarbon);
recipes.addShaped(rotorCarbon, [
	[<ore:screwIridium>, rotorBladeCarbon, <ore:craftingToolHardHammer>],
	[rotorBladeCarbon, rotorSteel, rotorBladeCarbon],
	[<ore:craftingToolWrench>, rotorBladeCarbon, <ore:screwIridium>]]);
	
recipes.remove(weedingtrowel);
recipes.addShaped(weedingtrowel, [
	[<ore:stickIron>, <ore:craftingToolHardHammer>, <ore:stickIron>],
	[null, <ore:stickIron>, null],
	[<ore:plateRubber>, <ore:stickIron>, <ore:plateRubber>]]);
	
recipes.remove(fuelRodThorium);
Canner.addRecipe(fuelRodThorium, dustThorium * 3, fuelRodEmpty, 200, 2);

// ic2 lapis
<ore:dustTinyLapis>.remove(<IC2:itemDustSmall:9>);
<ore:dustLapis>.remove(<IC2:itemDust:12>);
<ore:plateLapis>.remove(<IC2:itemPlates:8>);
<ore:plateDenseLapis>.remove(<IC2:itemDensePlates:8>);

// Obsidian
<ore:blockObsidian>.remove(<minecraft:obsidian>);
<ore:dustObsidian>.remove(<IC2:itemDust:11>);
<ore:dustObsidian>.remove(<EnderIO:itemPowderIngot:7>);

recipes.addShaped(<IC2:itemToolDrill>, [
	[<ore:craftingToolWrench>, null, null],
	[null, DrillLV, null],
	[null, null, <ore:craftingToolScrewdriver>]]);

//Bat Box+
recipes.addShaped(<IC2:blockElectric>, [
	[<ore:craftingWireTin>, <ore:plateSteel>, <ore:craftingWireTin>],
	[<ore:batteryBasic>, HullLV, <ore:batteryBasic>],
	[<ore:circuitBasic>, <ore:batteryBasic> , <ore:circuitBasic>]]);

//CESU
recipes.addShaped(<IC2:blockElectric:7>, [
	[<ore:craftingWireCopper>, <ore:plateBronze>, <ore:craftingWireCopper>],
	[<ore:batteryAdvanced>, HullMV, <ore:batteryAdvanced>],
	[<ore:circuitGood>, <ore:batteryAdvanced>, <ore:circuitGood>]]);

recipes.addShaped(<IC2:blockElectric:7>, [
	[<ore:craftingWireCopper>, <ore:plateBronze>, <ore:craftingWireCopper>],
	[<ore:batteryAdvanced>, <IC2:blockElectric>, <ore:batteryAdvanced>],
	[<ore:circuitGood>, <ore:batteryAdvanced>, <ore:circuitGood>]]);

recipes.addShaped(<IC2:blockElectric:7>, [
	[<ore:craftingWireCopper>, <ore:plateBronze>, <ore:craftingWireCopper>],
	[<ore:batteryAdvanced>, <IC2:blockChargepad>, <ore:batteryAdvanced>],
	[<ore:circuitGood>, <ore:batteryAdvanced>, <ore:circuitGood>]]);

//MFE
recipes.addShaped(<IC2:blockElectric:1>, [
	[<ore:cableGt01Silver>, <gregtech:gt.metaitem.03:32208>, <ore:cableGt01Silver>],
	[<gregtech:gt.metaitem.03:32208>, HullHV, <gregtech:gt.metaitem.03:32208>],
	[<ore:circuitAdvanced>, <gregtech:gt.metaitem.03:32208>, <ore:circuitAdvanced>]]);

recipes.addShaped(<IC2:blockElectric:1>, [
	[<ore:cableGt01Silver>, <gregtech:gt.metaitem.03:32208>, <ore:cableGt01Silver>],
	[<gregtech:gt.metaitem.03:32208>, <IC2:blockElectric:7>, <gregtech:gt.metaitem.03:32208>],
	[<ore:circuitAdvanced>, <gregtech:gt.metaitem.03:32208>, <ore:circuitAdvanced>]]);

recipes.addShaped(<IC2:blockElectric:1>, [
	[<ore:cableGt01Silver>, <gregtech:gt.metaitem.03:32208>, <ore:cableGt01Silver>],
	[<gregtech:gt.metaitem.03:32208>, <IC2:blockChargepad:1>, <gregtech:gt.metaitem.03:32208>],
	[<ore:circuitAdvanced>, <gregtech:gt.metaitem.03:32208>, <ore:circuitAdvanced>]]);

//MFSU
recipes.addShaped(<IC2:blockElectric:2>, [
	[<ore:cableGt01TungstenSteel>, <gregtech:gt.metaitem.03:32209>, <ore:cableGt01TungstenSteel>],
	[<gregtech:gt.metaitem.03:32209>, HullEV, <gregtech:gt.metaitem.03:32209>],
	[<ore:circuitData>, <gregtech:gt.metaitem.03:32209>, <ore:circuitData>]]);
    
recipes.addShaped(<IC2:blockElectric:2>, [
	[<ore:cableGt01TungstenSteel>, <gregtech:gt.metaitem.03:32209>, <ore:cableGt01TungstenSteel>],
	[<gregtech:gt.metaitem.03:32209>, <IC2:blockElectric:1>, <gregtech:gt.metaitem.03:32209>],
	[<ore:circuitData>, <gregtech:gt.metaitem.03:32209>, <ore:circuitData>]]);

recipes.addShaped(<IC2:blockElectric:2>, [
	[<ore:cableGt01TungstenSteel>, <gregtech:gt.metaitem.03:32209>, <ore:cableGt01TungstenSteel>],
	[<gregtech:gt.metaitem.03:32209>, <IC2:blockChargepad:2>, <gregtech:gt.metaitem.03:32209>],
	[<ore:circuitData>, <gregtech:gt.metaitem.03:32209>, <ore:circuitData>]]);

//Mining Pipe
recipes.remove(MiningPipe);
recipes.addShaped(MiningPipe, [[<ore:craftingToolHardHammer>, <ore:pipeSmallSteel>, <ore:craftingToolFile>]]);
Macerator.addRecipe(<gregtech:gt.metaitem.01:1305> * 2, MiningPipe);

//LV Transformer
recipes.addShapeless(<IC2:blockElectric:3>, [<gregtech:gt.blockmachines:21>]);
recipes.addShapeless(<gregtech:gt.blockmachines:21>, [<IC2:blockElectric:3>]);

//MV Transformer
recipes.addShapeless(<IC2:blockElectric:4>, [<gregtech:gt.blockmachines:22>]);
recipes.addShapeless(<gregtech:gt.blockmachines:22>, [<IC2:blockElectric:4>]);

//HV Transformer
recipes.addShapeless(<IC2:blockElectric:5>, [<gregtech:gt.blockmachines:23>]);
recipes.addShapeless(<gregtech:gt.blockmachines:23>, [<IC2:blockElectric:5>]);

//EV Transformer
recipes.addShapeless(<IC2:blockElectric:6>, [<gregtech:gt.blockmachines:24>]);
recipes.addShapeless(<gregtech:gt.blockmachines:24>, [<IC2:blockElectric:6>]);

//RTG
//recipes.remove(RTG);
recipes.addShaped(RTG, [
	[<ore:plateQuadrupleLead>, <ore:plateQuadrupleLead>, <ore:plateQuadrupleLead>],
	[<ore:plateQuadrupleLead>, HullLV, <ore:plateQuadrupleLead>],
	[<ore:circuitBasic>, <ore:calclavia:ADVANCED_BATTERY>, <ore:circuitBasic>]]);


//Nuke
recipes.remove(<IC2:blockNuke>);
recipes.addShaped(<IC2:blockNuke>, [
	[<IC2:reactorReflectorThick:1>, <ore:circuitAdvanced>, <IC2:reactorReflectorThick:1>],
	[<IC2:reactorReflectorThick:1>, <gregtech:gt.blockcasings:4>, <IC2:reactorReflectorThick:1>],
	[<IC2:reactorReflectorThick:1>, <ore:circuitAdvanced>, <IC2:reactorReflectorThick:1>]]);

//Hazmat Helmet
recipes.remove(<IC2:itemArmorHazmatHelmet>);
recipes.addShaped(<IC2:itemArmorHazmatHelmet>,[
	[null, <ore:dyeOrange>, null],
	[<ore:plateRubber>, <ore:blockGlass>, <ore:plateRubber>],
	[<ore:plateRubber>, <minecraft:iron_bars> , <ore:plateRubber>]]);
recipes.addShaped(<IC2:itemArmorHazmatHelmet>,[
[<ore:plateRubber>,<IC2:itemArmorHazmatHelmet:*>,<ore:plateRubber>],
[<ore:plateRubber>,<ore:craftingToolSoftHammer>,<ore:plateRubber>]]);

//Hazmat Chestplate
recipes.remove(<IC2:itemArmorHazmatChestplate>);
recipes.addShaped(<IC2:itemArmorHazmatChestplate>,[
	[<ore:plateRubber>, <ore:dyeOrange>, <ore:plateRubber>],
	[<ore:plateRubber>, <ore:plateRubber>, <ore:plateRubber>],
	[<ore:plateRubber>, <ore:plateRubber> , <ore:plateRubber>]]);
recipes.addShaped(<IC2:itemArmorHazmatChestplate>,[
[<ore:plateRubber>,<IC2:itemArmorHazmatChestplate:*>,<ore:plateRubber>],
[<ore:plateRubber>,<ore:craftingToolSoftHammer>,<ore:plateRubber>],
[<ore:plateRubber>,null,<ore:plateRubber>]]);

//Hazmat Leggings
recipes.remove(<IC2:itemArmorHazmatLeggings>);
recipes.addShaped(<IC2:itemArmorHazmatLeggings>,[
	[<ore:plateRubber>, <ore:plateRubber>, <ore:plateRubber>],
	[<ore:plateRubber>, <ore:dyeOrange>, <ore:plateRubber>],
	[<ore:plateRubber>, null , <ore:plateRubber>]]);
recipes.addShaped(<IC2:itemArmorHazmatLeggings>,[
[<ore:plateRubber>,<IC2:itemArmorHazmatLeggings:*>,<ore:plateRubber>],
[<ore:plateRubber>,<ore:craftingToolSoftHammer>,<ore:plateRubber>],
[<ore:plateRubber>,null,<ore:plateRubber>]]);

//Rubber Boots
recipes.remove(<IC2:itemArmorRubBoots>);
recipes.addShaped(<IC2:itemArmorRubBoots>,[
	[<ore:plateRubber>, null, <ore:plateRubber>],
	[<ore:plateRubber>, null, <ore:plateRubber>],
	[<ore:plateRubber>, <ore:blockWool> , <ore:plateRubber>]]);
recipes.addShaped(<IC2:itemArmorRubBoots>,[
[<ore:plateRubber>,<IC2:itemArmorRubBoots:*>,<ore:plateRubber>],
[<ore:plateRubber>,<ore:craftingToolSoftHammer>,<ore:plateRubber>],
[<ore:plateRubber>,null,<ore:plateRubber>]]);

//Bat Pack
recipes.remove(<IC2:itemArmorBatpack>);

//OD Scanner
recipes.remove(<IC2:itemScanner>);
/*recipes.addShaped(<IC2:itemScanner>,[
	[<IC2:itemCasing:3>, <ore:dustGlowstone>, <IC2:itemCasing:3>],
	[<ore:circuitGood>, <ore:batteryAdvanced>, <ore:circuitGood>],
	[<ore:craftingWireCopper>, <ore:craftingWireCopper> , <ore:craftingWireCopper>]]);*/

//Mining Laser
recipes.remove(<IC2:itemToolMiningLaser>);

recipes.addShapeless(<IC2:itemBatChargeCrystal>, [<IC2:itemBatChargeCrystal:*>]);
recipes.addShapeless(<IC2:itemBatChargeLamaCrystal>, [<IC2:itemBatChargeLamaCrystal:*>]);

var ExquisiteGems = [<ore:gemExquisiteDiamond>, <ore:gemExquisiteRuby>, 
	<ore:gemExquisiteJasper>, <ore:gemExquisiteGarnetRed>] as minetweaker.item.IIngredient[];

for g1, ExquisiteGem in ExquisiteGems {
	recipes.addShaped(<IC2:itemToolMiningLaser>,[
		[<ore:plateTitanium>, <ore:plateGallium>, <ore:plateTitanium>],
		[ExquisiteGem, <gregtech:gt.metaitem.01:32683>, <ore:circuitElite>],
		[<ore:screwTitanium>, <IC2:itemBatChargeLamaCrystal:*> , <ore:craftingToolScrewdriver>]]);
}

//CF Sprayer
recipes.remove(<IC2:itemFoamSprayer>);
recipes.addShaped(<IC2:itemFoamSprayer>, [
	[<ore:itemCasingSteel>, null, null],
	[null, <ore:itemCasingSteel>, <gregtech:gt.metaitem.01:32610>],
	[null, EmptyCell, <ore:itemCasingSteel>]]);

recipes.remove(<IC2:itemToolbox>);


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

// Miner
/*recipes.addShaped(<IC2:blockMachine:7>, [
	[null, <minecraft:chest>, null],
	[<ore:circuitBasic>, HullLV, <ore:circuitBasic>],
	[MiningPipe, <ore:calclavia:ADVANCED_BATTERY>, MiningPipe]]);*/

ArcFurnace.addRecipe([steelIngot * 14, annealedCopperIngot * 4, batteryAlloyIngot, tinIngot], <IC2:blockMachine:7>, <liquid:oxygen> * 2880, [10000, 10000, 10000, 10000], 800, 96);

//Advanced Miner
/*recipes.addShaped(<IC2:blockMachine2:11>, [
	[pistonElectricHV, HullHV, moduleConveyorHV],
	[<ore:circuitAdvanced>, MiningPipe, <ore:circuitAdvanced>],
	[<ore:cableGt01Silver>, <IC2:itemToolDrill:*>, <ore:cableGt01Silver>]]);*/
//[<ore:cableGt01Silver>, <ore:toolHeadDrillStainlessSteel>, <ore:cableGt01Silver>]]);

ArcFurnace.addRecipe([steelIngot * 9, annealedCopperIngot * 24, ststeelIngot * 20, <minecraft:gold_ingot> * 7], <IC2:blockMachine2:11>, <liquid:oxygen> * 5904, [10000, 10000, 10000, 10000], 1640, 96);

// Magnetizer
var steelSpringMagn = <gregtech:gt.metaitem.02:24355>;
recipes.addShaped(<IC2:blockMachine:9>, [
	[steelSpringMagn, <IC2:blockFenceIron>, steelSpringMagn],
	[<ore:calclavia:ADVANCED_BATTERY>, HullLV, <ore:calclavia:ADVANCED_BATTERY>],
	[steelSpringMagn, <IC2:blockFenceIron>, steelSpringMagn]]);

ArcFurnace.addRecipe([steelIngot * 12, wroughtIronIngot, batteryAlloyIngot * 2, tinIngot * 2], <IC2:blockMachine:9>, <liquid:oxygen> * 2448, [10000, 10000, 10000, 10000], 680, 96);

// Tesla Coil
var aluminiumSpring = <gregtech:gt.metaitem.02:24019>;
recipes.addShaped(<IC2:blockMachine2:1>, [
	[emitterMV, aluminiumSpring, emitterMV],
	[aluminiumSpring, HullMV, aluminiumSpring],
	[emitterMV, aluminiumSpring, emitterMV]]);

ArcFurnace.addRecipe([aluminiumIngot * 12, annealedCopperIngot * 5, electrumIngot * 8], <IC2:blockMachine2:1>, <liquid:oxygen> * 3600, [10000, 10000, 10000], 1000, 96);

// Fluid Regulator
recipes.addShaped(<IC2:blockMachine2:14>, [
	[<ore:circuitGood>, pumpMV, <ore:circuitGood>],
	[steelFluidPipe, HullMV, steelFluidPipe],
	[<ore:circuitGood>, EmptyCell, <ore:circuitGood>]]);

ArcFurnace.addRecipe([aluminiumIngot * 9, annealedCopperIngot * 13, steelIngot * 9, tinIngot * 2], <IC2:blockMachine2:14>, <liquid:oxygen> * 4752, [10000, 10000, 10000, 10000], 1320, 96);

// Fluid Distributor
recipes.addShaped(<IC2:blockMachine3:4>, [
	[<ore:circuitBasic>, pumpLV, <ore:circuitBasic>],
	[pumpLV, HullLV, pumpLV],
	[EmptyCell, EmptyCell, EmptyCell]]);

ArcFurnace.addRecipe([steelIngot * 8, annealedCopperIngot * 10, bronzeIngot * 9, tinIngot * 25], <IC2:blockMachine3:4>, <liquid:oxygen> * 7488, [10000, 10000, 10000, 10000], 2080, 96);

//Electric Sorting Machine
var regulator = <gregtech:gt.blockmachines:9271>;
recipes.addShapeless(<IC2:blockMachine3:5>, [regulator]);
recipes.addShapeless(regulator, [<IC2:blockMachine3:5>]);

//Item Buffer
recipes.addShapeless(<IC2:blockMachine3:6>, [chestBuffer]);
recipes.addShapeless(chestBuffer, [<IC2:blockMachine3:6>]);

// Crop-Matron
recipes.addShaped(<IC2:blockMachine2:2>, [
	[robotArmLV, <ore:circuitBasic>, robotArmLV],
	[pumpLV, HullLV, moduleConveyorLV],
	[<minecraft:chest>, <ore:circuitBasic>, EmptyCell]]);

ArcFurnace.addRecipe([steelIngot * 20, annealedCopperIngot * 22, wroughtIronIngot * 14, tinIngot * 22], <IC2:blockMachine2:2>, <liquid:oxygen> * 11232, [10000, 10000, 10000, 10000], 3120, 96);

// Crop Harvester
recipes.addShaped(<IC2:blockMachine3:7>, [
	[robotArmLV, <ore:circuitBasic>, robotArmLV],
	[pistonElectricLV, HullLV, sensorLV],
	[<ore:cableGt01Tin>, moduleConveyorLV, <ore:cableGt01Tin>]]);

ArcFurnace.addRecipe([steelIngot * 29, annealedCopperIngot * 20, wroughtIronIngot * 13, tinIngot * 17], <IC2:blockMachine3:7>, <liquid:oxygen> * 11376, [10000, 10000, 10000, 10000], 3160, 96);

//Electric Boat
recipes.remove(<IC2:itemBoat:3>);
recipes.addShaped(<IC2:itemBoat:3>, [
	[<ore:craftingWireCopper>, MVMotor, <ore:rotorSteel>],
	[<ore:plateAluminium>, null, <ore:plateAluminium>],
	[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);

ArcFurnace.addRecipe([steelIngot * 4, annealedCopperIngot * 5, aluminiumIngot * 5], <IC2:itemBoat:3>, <liquid:oxygen> * 1584, [10000, 10000, 10000], 440, 96);

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

// Painter
recipes.remove(<IC2:itemToolPainter>);
recipes.addShaped(<IC2:itemToolPainter>, [
    [<ore:craftingToolSoftHammer>, <ore:blockWool>, <ore:blockWool>], 
    [null, <ore:stickIron>, <ore:blockWool>],
    [<ore:stickIron>, null, <ore:craftingToolScrewdriver>]]);

game.setLocalization("ic2.itemCellBiomass", "Industrial Biomass Cell");
game.setLocalization("ic2.fluidBiomass", "Industrial Biomass");

// Construction Foam
Mixer.addRecipe(null, <liquid:ic2constructionfoam> * 8000, [<gregtech:gt.metaitem.01:2896>], <liquid:molten.concrete> * 576, 20, 16);

// Iron Scaffold
recipes.remove(<IC2:blockIronScaffold>);
recipes.addShapeless(<IC2:blockIronScaffold>, [<ore:frameGtSteel>]);

// IC2 Motor
recipes.remove(<IC2:itemRecipePart:1>);
recipes.addShapeless(<IC2:itemRecipePart:1>, [<gregtech:gt.metaitem.01:32600>]);

// return only from full empty hydrant cell
recipes.addShapeless(<IC2:itemCellEmpty>, [<IC2:itemCellHydrant:10000>]);

// IC Personal Safe
recipes.addShaped(<IC2:blockPersonal>, [
    [<ore:plateDoubleVanadiumSteel>, <gregtech:gt.metaitem.01:32735>, <ore:plateDoubleVanadiumSteel>],
    [<ore:circuitAdvanced>, <gregtech:gt.blockcasings:2>, <ore:circuitAdvanced>],
    [<ore:plateDoubleVanadiumSteel>, <ore:craftingToolScrewdriver>, <ore:plateDoubleVanadiumSteel>]]);

// --- Windmeter
recipes.remove(<IC2:windmeter:*>);
recipes.addShaped(<IC2:windmeter:26>, [
[<ore:screwStainlessSteel>, <ore:rotorAluminium>, <ore:craftingToolScrewdriver>],
[<ore:gearGtSmallStainlessSteel>, <IC2:itemRecipePart:3>, <ore:gearGtSmallStainlessSteel>],
[<ore:plateStainlessSteel>, <ore:batteryBasic>, <ore:plateStainlessSteel>]]);

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
