import minetweaker.item.IItemStack;
import mods.gregtech.Mixer;
import mods.gregtech.AlloySmelter;
import mods.gregtech.ArcFurnace;
import mods.gregtech.Assembler;
import mods.gregtech.Canner;
import mods.gregtech.Centrifuge;
import mods.gregtech.ChemicalBath;
import mods.gregtech.ChemicalReactor;
import mods.gregtech.Electrolyzer;
import mods.gregtech.FormingPress;
import mods.gregtech.PlasmaArcFurnace;
import mods.gregtech.CuttingSaw;
import mods.ic2.Compressor;
import mods.ic2.SemiFluidGenerator;
import mods.nei.NEI;
import mods.ic2.Macerator;
import mods.gregtech.Autoclave;
import mods.gregtech.PlateBender;

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
var pumpLV             = <gregtech:gt.metaitem.01:32610>;
var pumpMV             = <gregtech:gt.metaitem.01:32611>;
var moduleConveyorLV   = <gregtech:gt.metaitem.01:32630>;
var moduleConveyorHV   = <gregtech:gt.metaitem.01:32632>;
var pistonElectricLV   = <gregtech:gt.metaitem.01:32640>;
var pistonElectricHV   = <gregtech:gt.metaitem.01:32642>;
var robotArmLV         = <gregtech:gt.metaitem.01:32650>;
var robotArmHV         = <gregtech:gt.metaitem.01:32652>;
var robotArmEV         = <gregtech:gt.metaitem.01:32653>;
var FieldGeneratorHV   = <gregtech:gt.metaitem.01:32672>;
var FieldGeneratorEV   = <gregtech:gt.metaitem.01:32673>;
var emitterMV          = <gregtech:gt.metaitem.01:32681>;
var emitterHV          = <gregtech:gt.metaitem.01:32682>;
var emitterEV          = <gregtech:gt.metaitem.01:32683>;
var sensorLV           = <gregtech:gt.metaitem.01:32690>;
var sensorHV           = <gregtech:gt.metaitem.01:32692>;
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
recipes.remove(MOX);
recipes.remove(uraniumEnriched);
recipes.remove(<IC2:blockPersonal>);

recipes.remove(OVScanner);
/*recipes.addShaped(OVScanner, [
	[itemCasingGold, energyCrystal, itemCasingGold],
	[<ore:dustGlowstone>, <ore:circuitAdvanced>, <ore:dustGlowstone>],
	[<ore:cableGt01Gold>, ODScanner, <ore:cableGt01Gold>]]);*/

recipes.addShaped(<IC2:blockMachine:1>, [
	[<ore:plateIron>, <ore:plateIron>,<ore:plateIron>],
	[<ore:plateIron>, <ore:craftingToolHardHammer>, <ore:plateIron>],
	[<ore:plateIron>, <minecraft:furnace>, <ore:plateIron>]
]);

# Recipe Tweaks
recipes.remove(<IC2:itemAdvBat>);
recipes.addShaped(<IC2:itemAdvBat>, [
	[cableCopperAnnealed1x, itemCasingBronze, cableCopperAnnealed1x],
	[itemCasingBronze, <ore:dustSulfur>, itemCasingBronze],
	[itemCasingBronze, <ore:dustLead>, itemCasingBronze]]);
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
	
Canner.addRecipe(fuelRodUranium, uraniumEnriched, fuelRodEmpty, 200, 2);
Canner.addRecipe(fuelRodMOX, MOX, fuelRodEmpty, 200, 2);
recipes.remove(fuelRodThorium);
Canner.addRecipe(fuelRodThorium, dustThorium * 3, fuelRodEmpty, 200, 2);

//Diamond dust-gem fix
recipes.removeShapeless(DiamondDust * 9, [<minecraft:diamond_block>]);
recipes.removeShapeless(<minecraft:diamond> * 9, [<minecraft:diamond_block>]);

//Lignite dust fix
recipes.removeShapeless(<gregtech:gt.metaitem.01:2538> * 9, [<gregtech:gt.blockgem2:1>]);

//Charcoal dust fix
recipes.removeShapeless(<gregtech:gt.metaitem.01:2536> * 9, [<gregtech:gt.blockgem3:4>]);

// ic2 lapis
<ore:dustTinyLapis>.remove(<IC2:itemDustSmall:9>);
<ore:dustLapis>.remove(<IC2:itemDust:12>);
<ore:plateLapis>.remove(<IC2:itemPlates:8>);
<ore:plateDenseLapis>.remove(<IC2:itemDensePlates:8>);

// Obsidian
<ore:blockObsidian>.remove(<minecraft:obsidian>);
<ore:dustObsidian>.remove(<IC2:itemDust:11>);
<ore:dustObsidian>.remove(<EnderIO:itemPowderIngot:7>);

AlloySmelter.addRecipe(ingotWIron, nuggetWIron * 9, MoldIngot * 0, 200, 2);
AlloySmelter.addRecipe(<minecraft:iron_ingot>, nuggetIron * 9, MoldIngot * 0, 201, 2);

AlloySmelter.addRecipe(MOX, <ore:ingotUranium>.firstItem * 6, <ore:ingotPlutonium>.firstItem * 3, 100, 48);
AlloySmelter.addRecipe(uraniumEnriched, <ore:ingotUranium>.firstItem * 6, <ore:nuggetUranium235>.firstItem * 3, 100, 48);

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
	[<ore:cableGt01Silver>, <ore:batteryElite>, <ore:cableGt01Silver>],
	[<ore:batteryElite>, HullHV, <ore:batteryElite>],
	[<ore:circuitAdvanced>, <ore:batteryElite>, <ore:circuitAdvanced>]]);

recipes.addShaped(<IC2:blockElectric:1>, [
	[<ore:cableGt01Silver>, <ore:batteryElite>, <ore:cableGt01Silver>],
	[<ore:batteryElite>, <IC2:blockElectric:7>, <ore:batteryElite>],
	[<ore:circuitAdvanced>, <ore:batteryElite>, <ore:circuitAdvanced>]]);

recipes.addShaped(<IC2:blockElectric:1>, [
	[<ore:cableGt01Silver>, <ore:batteryElite>, <ore:cableGt01Silver>],
	[<ore:batteryElite>, <IC2:blockChargepad:1>, <ore:batteryElite>],
	[<ore:circuitAdvanced>, <ore:batteryElite>, <ore:circuitAdvanced>]]);

//MFSU
recipes.addShaped(<IC2:blockElectric:2>, [
	[<ore:cableGt01TungstenSteel>, <ore:batteryMaster>, <ore:cableGt01TungstenSteel>],
	[<ore:batteryMaster>, HullEV, <ore:batteryMaster>],
	[<ore:circuitData>, <ore:batteryMaster>, <ore:circuitData>]]);
    
recipes.addShaped(<IC2:blockElectric:2>, [
	[<ore:cableGt01TungstenSteel>, <ore:batteryMaster>, <ore:cableGt01TungstenSteel>],
	[<ore:batteryMaster>, <IC2:blockElectric:1>, <ore:batteryMaster>],
	[<ore:circuitData>, <ore:batteryMaster>, <ore:circuitData>]]);

recipes.addShaped(<IC2:blockElectric:2>, [
	[<ore:cableGt01TungstenSteel>, <ore:batteryMaster>, <ore:cableGt01TungstenSteel>],
	[<ore:batteryMaster>, <IC2:blockChargepad:2>, <ore:batteryMaster>],
	[<ore:circuitData>, <ore:batteryMaster>, <ore:circuitData>]]);

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

//Nuclear Reactor
//recipes.remove(NucReactor);
recipes.addShaped(NucReactor, [
	[<ore:circuitData>, robotArmEV ,<ore:circuitData>],
	[<IC2:blockReactorChamber>, HullEV, <IC2:blockReactorChamber>],
	[<IC2:reactorReflectorThick:1>, <IC2:blockReactorChamber>, <IC2:reactorReflectorThick:1>]]);

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
recipes.addShaped(<IC2:itemArmorBatpack>, [
	[<ore:batteryBasic>, <ore:circuitBasic>, <ore:batteryBasic>],
	[<ore:batteryBasic>, <ore:plateAluminium>, <ore:batteryBasic>],
	[<ore:batteryBasic>, <ore:craftingWireTin>, <ore:batteryBasic>]]);

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

//Reactor Plating
recipes.remove(ReactorPlate);
FormingPress.addRecipe(ReactorPlate, <ore:plateAlloyAdvanced>, <ore:plateLead>, 200, 480);

//Reactor Heat Plating
recipes.remove(ReactorHeatPlate);
FormingPress.addRecipe(ReactorHeatPlate, <ore:plateDenseCopper>, ReactorPlate, 220, 480);

//Reactor Explosive Plating
recipes.remove(ReactorExplosivePlate);
FormingPress.addRecipe(ReactorExplosivePlate, specificAdvancedAlloyPlate * 8, ReactorPlate, 220, 480);

//Heat Exchanger
recipes.remove(<IC2:reactorHeatSwitch:1>);
Assembler.addRecipe(<IC2:reactorHeatSwitch:1>, [gtIntCircuit01 * 0, <ore:circuitBasic>, <ore:plateCopper> * 5, <ore:plateTin> * 3], null, 200, 60);

//Reactor Heat Exchanger
recipes.remove(<IC2:reactorHeatSwitchCore:1>);
Assembler.addRecipe(<IC2:reactorHeatSwitchCore:1>, [gtIntCircuit01 * 0, <IC2:reactorHeatSwitch:1>, <ore:plateCopper> * 8], null, 200, 60);

//Component Heat Exchanger
recipes.remove(<IC2:reactorHeatSwitchSpread:1>);
Assembler.addRecipe(<IC2:reactorHeatSwitchSpread:1>, [gtIntCircuit01 * 0, <IC2:reactorHeatSwitch:1>, <ore:plateGold> * 4], null, 200, 60);

//Advanced Heat Exchanger
recipes.remove(<IC2:reactorHeatSwitchDiamond:1>);
Assembler.addRecipe(<IC2:reactorHeatSwitchDiamond:1>, [<IC2:reactorHeatSwitch:1>, <ore:circuitBasic> * 3, <ore:plateLapis> * 4, <ore:plateCopper> * 6, <ore:plateTin> * 3], null, 200, 240);

//Heat Vent
recipes.remove(ReactorHeatVent);
Assembler.addRecipe(ReactorHeatVent, [gtIntCircuit01 * 0, LVMotor, <minecraft:iron_bars> * 4, <ore:foilIron>*16, <ore:foilAluminium> * 16], null, 200, 60);

//Reactor Heat Vent
recipes.remove(ReactorHeatVentCore);
Assembler.addRecipe(ReactorHeatVentCore, [gtIntCircuit01 * 0, ReactorHeatVent, <ore:plateCopper> * 8], null, 200, 60);

//Overclocked Heat Vent
recipes.remove(ReactorHeatVentGold);
Assembler.addRecipe(ReactorHeatVentGold, [gtIntCircuit01 * 0, ReactorHeatVentCore, <ore:plateGold> * 4], null, 200, 60);

//Advanced Heat Vent
recipes.remove(<IC2:reactorVentDiamond:1>);
Assembler.addRecipe(<IC2:reactorVentDiamond:1>, [ReactorHeatVent, <ore:gemDiamond>, <minecraft:iron_bars> * 10, LVMotor, <ore:foilAluminium> * 16], null, 200, 240);

//Component Heat Vent
recipes.remove(ReactorHeatVentSpread);
Assembler.addRecipe(ReactorHeatVentSpread, [gtIntCircuit01 * 0, ReactorHeatVent, <minecraft:iron_bars> * 4, <ore:plateTin> * 4], null, 200, 60);

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
    
//Superconductor Buff
/*var celNitrogen = <gregtech:gt.metaitem.01:30012>;
var celHelium = <gregtech:gt.metaitem.01:30004>;
var VaG2wire = <gregtech:gt.blockmachines:1741>;
var NTi2wire = <gregtech:gt.blockmachines:1721>;
var YtBa2wire = <gregtech:gt.blockmachines:1761>;
var Naq2wire = <gregtech:gt.blockmachines:1781>;
var STungPipe = <gregtech:gt.blockmachines:5161>;
var SupercondWire = <gregtech:gt.blockmachines:2020>;

var myFluidCells = [celHelium, celHelium, celNitrogen, celNitrogen] as IItemStack[];
var myWires = [VaG2wire, NTi2wire, YtBa2wire, Naq2wire] as IItemStack[];

for i, Cell in myFluidCells {
	var Wire = myWires[i];
	recipes.addShaped(SupercondWire * 6, [
		[celNitrogen, pumpMV, STungPipe],
		[Wire, Wire, Wire],
		[Cell, pumpMV, STungPipe]]);
}*/

//Electric tool
recipes.remove(SmallPowerUnit);
recipes.addShaped(SmallPowerUnit, [
	[<ore:craftingToolFile>, <ore:craftingWireCopper>, <ore:itemCasingSteel>],
	[<ore:batteryBasic>, <ore:circuitBasic>, LVMotor],
	[<ore:craftingToolHardHammer>, <ore:craftingWireCopper>, <ore:itemCasingSteel>]]);

recipes.remove(ElectricTreetap);
recipes.addShaped(ElectricTreetap, [
	[null, <ore:gearGtSmallStainlessSteel>, null],
	[<ore:stickStainlessSteel>, SmallPowerUnit, <ore:plateStainlessSteel>],
	[<ore:stickStainlessSteel>, null, null]]);

recipes.remove(ElectricHoe);
recipes.addShaped(ElectricHoe, [
	[<ore:rotorStainlessSteel>, <ore:stickStainlessSteel>, null],
	[null, SmallPowerUnit, null],
	[null, <ore:plateStainlessSteel>, null]]);

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

<ore:batteryElite>.addTooltip("Reusable battery");
<ore:batteryElite>.addTooltip(format.aqua("Voltage: 512"));
<ore:batteryMaster>.addTooltip("Reusable battery");
<ore:batteryMaster>.addTooltip(format.aqua("Voltage: 2048"));

// radiation attention! - for tiny/small dusts, dusts, ingots, plates
var radioativeMaterialsAsOre = [
	<ore:dustPlutonium>,  <ore:dustUranium235>,  <ore:dustPlutonium241>,  <ore:dustNaquadahEnriched>,  <ore:dustNaquadria>,
	<ore:ingotPlutonium>, <ore:ingotUranium235>, <ore:ingotPlutonium241>, <ore:ingotNaquadahEnriched>, <ore:ingotNaquadria>,
	<ore:platePlutonium>, <ore:plateUranium235>, <ore:platePlutonium241>, <ore:plateNaquadahEnriched>, <ore:plateNaquadria>,
	<ore:dustTinyPlutonium>, <ore:dustTinyUranium235>, <ore:dustTinyPlutonium241>, <ore:dustTinyNaquadahEnriched>, 
	<ore:dustTinyNaquadria>, <ore:dustSmallPlutonium>, <ore:dustSmallUranium235>, <ore:dustSmallPlutonium241>, 
	<ore:dustSmallNaquadahEnriched>, <ore:dustSmallNaquadria>, <ore:crushedNaquadahEnriched>, <ore:crushedPurifiedNaquadahEnriched>,
	<ore:crushedCentrifugedNaquadahEnriched>, <ore:dustPureNaquadahEnriched>, <ore:dustImpureNaquadahEnriched>,
	<ore:nuggetNaquadahEnriched>, <ore:plateDoubleNaquadahEnriched>, <ore:blockNaquadahEnriched>,
	<ore:oreRedgraniteNaquadahEnriched>, <ore:oreBlackgraniteNaquadahEnriched>, <ore:oreNaquadahEnriched>, 
	<ore:oreBasaltNaquadahEnriched>, <ore:oreMarbleNaquadahEnriched>, <ore:oreEndstoneNaquadahEnriched>, 
	<ore:oreNetherrackNaquadahEnriched>,
] as minetweaker.oredict.IOreDictEntry[];

for i, item in radioativeMaterialsAsOre{
	item.addTooltip("Danger: " + format.red("Radioactive"));
}

var radioativeMaterialsAsItem = [
	<IC2:itemPlutonium>, <IC2:itemPlutoniumSmall>, <IC2:itemRTGPellet>, 
	<IC2:itemUran>, <IC2:itemUran235>, <IC2:itemUran235small>, <IC2:itemUran238>, <IC2:itemMOX>,
	<IC2:reactorMOXSimpledepleted>, <IC2:reactorMOXDualdepleted>, <IC2:reactorMOXQuaddepleted>,
	<IC2:reactorUraniumSimpledepleted>, <IC2:reactorUraniumDualdepleted>, <IC2:reactorUraniumQuaddepleted>,
	<gregtech:gt.ThoriumcellDep>, <gregtech:gt.Double_ThoriumcellDep>, <gregtech:gt.Quad_ThoriumcellDep>,
	<gregtech:gt.reactorUraniumSimple>, <gregtech:gt.reactorUraniumDual>, <gregtech:gt.reactorUraniumQuad>,
	<gregtech:gt.reactorMOXSimple>, <gregtech:gt.reactorMOXDual>, <gregtech:gt.reactorMOXQuad>,
	<gregtech:gt.Naquadahcell>, <gregtech:gt.Double_Naquadahcell>, <gregtech:gt.Quad_Naquadahcell>,
	<gregtech:gt.NaquadahcellDep>, <gregtech:gt.Double_NaquadahcellDep>, <gregtech:gt.Quad_NaquadahcellDep>
] as minetweaker.item.IItemStack[];

for i, item in radioativeMaterialsAsItem{
	item.addTooltip("Danger: " + format.red("Radioactive"));
}

// Painter
recipes.remove(<IC2:itemToolPainter>);
recipes.addShaped(<IC2:itemToolPainter>, [
    [<ore:craftingToolSoftHammer>, <ore:blockWool>, <ore:blockWool>], 
    [null, <ore:stickIron>, <ore:blockWool>],
    [<ore:stickIron>, null, <ore:craftingToolScrewdriver>]]);

// gt light concrete from distilled water
Mixer.addRecipe(null, <liquid:molten.concrete> * 576, [<gregtech:gt.metaitem.01:2805>, <gregtech:gt.metaitem.01:2299> * 3], <liquid:ic2distilledwater> * 500, 20, 16);

// Saplings to BioChaff
//recipes.addShapeless(<minecraft:tallgrass>, [<ore:treeSapling>]);

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

// Stick Fix
recipes.removeShaped(<minecraft:stick>);
recipes.addShaped(<minecraft:stick>, [[<ore:craftingToolSaw>], [<minecraft:tallgrass>]]);
recipes.addShaped(<minecraft:stick>, [[<ore:craftingToolSaw>], [<minecraft:deadbush>]]);
recipes.addShaped(<minecraft:stick>, [[<ore:craftingToolSaw>], [<ore:treeSapling>]]);
recipes.addShaped(<minecraft:stick> * 2, [[<ore:craftingToolSaw>], [<ore:stickLongWood>]]);
recipes.addShaped(<minecraft:stick> * 2, [[<ore:plankWood>], [<ore:plankWood>]]);
recipes.addShaped(<minecraft:stick> * 4, [[<ore:craftingToolSaw>], [<ore:plankWood>], [<ore:plankWood>]]);

// Clay ball
Autoclave.addRecipe(<minecraft:clay_ball>, <gregtech:gt.metaitem.01:2805>, <liquid:water> * 250, 10000, 20, 2);

//Field Generators
var FieldGenerators = [<gregtech:gt.metaitem.01:32670>, <gregtech:gt.metaitem.01:32671>, <gregtech:gt.metaitem.01:32672>,
	<gregtech:gt.metaitem.01:32673>, <gregtech:gt.metaitem.01:32674>, <gregtech:gt.metaitem.01:32675>,
	<gregtech:gt.metaitem.01:32676>, <gregtech:gt.metaitem.01:32677>] as IItemStack[];

for i, FieldGenerator in FieldGenerators {
	recipes.remove(FieldGenerator);
}

Assembler.addRecipe(<gregtech:gt.metaitem.01:32670>, [<ore:dustEnderPearl>, <gregtech:gt.metaitem.03:32078> * 4, <ore:wireGt01Osmium> * 4], null, 1600, 30);


// return only from full empty hydrant cell
recipes.addShapeless(<IC2:itemCellEmpty>, [<IC2:itemCellHydrant:10000>]);

// Osmiridium Dust Fix
recipes.removeShapeless(<gregtech:gt.metaitem.01:2317>);
//recipes.addShapeless(<gregtech:gt.metaitem.01:2317> * 3, [<ore:dustIridium>, <ore:dustIridium>, <ore:dustIridium>, <ore:dustOsmium>]);

// IC Personal Safe
recipes.addShaped(<IC2:blockPersonal>, [
    [<ore:plateDoubleVanadiumSteel>, <gregtech:gt.metaitem.01:32735>, <ore:plateDoubleVanadiumSteel>],
    [<ore:circuitAdvanced>, <gregtech:gt.blockcasings:2>, <ore:circuitAdvanced>],
    [<ore:plateDoubleVanadiumSteel>, <ore:craftingToolScrewdriver>, <ore:plateDoubleVanadiumSteel>]]);

//add Gregtech dye recipes
var GTDyeBlack         = <gregtech:gt.metaitem.02:32414>;
var GTDyeRed           = <gregtech:gt.metaitem.02:32415>;
var GTDyeGreen         = <gregtech:gt.metaitem.02:32416>;
var GTDyeBrown         = <gregtech:gt.metaitem.02:32417>;
var GTDyeBlue          = <gregtech:gt.metaitem.02:32418>;
var GTDyePurple        = <gregtech:gt.metaitem.02:32419>;
var GTDyeCyan          = <gregtech:gt.metaitem.02:32420>;
var GTDyeLGray         = <gregtech:gt.metaitem.02:32421>;
var GTDyeGray          = <gregtech:gt.metaitem.02:32422>;
var GTDyePink          = <gregtech:gt.metaitem.02:32423>;
var GTDyeLime          = <gregtech:gt.metaitem.02:32424>;
var GTDyeYellow        = <gregtech:gt.metaitem.02:32425>;
var GTDyeLBlue         = <gregtech:gt.metaitem.02:32426>;
var GTDyeMagenta       = <gregtech:gt.metaitem.02:32427>;
var GTDyeOrange        = <gregtech:gt.metaitem.02:32428>;
var GTDyeWhite         = <gregtech:gt.metaitem.02:32429>;


recipes.addShapeless(GTDyeBlack,     [<ore:dyeBlack>         ]);
recipes.addShapeless(GTDyeRed,       [<ore:dyeRed>           ]);
recipes.addShapeless(GTDyeGreen,     [<ore:dyeGreen>         ]);
recipes.addShapeless(GTDyeBrown,     [<ore:dyeBrown>         ]);
recipes.addShapeless(GTDyeBlue,      [<ore:dyeBlue>          ]);
recipes.addShapeless(GTDyePurple,    [<ore:dyePurple>        ]);
recipes.addShapeless(GTDyeCyan,      [<ore:dyeCyan>          ]);
recipes.addShapeless(GTDyeLGray,     [<ore:dyeLightGray>     ]);
recipes.addShapeless(GTDyeGray,      [<ore:dyeGray>          ]);
recipes.addShapeless(GTDyePink,      [<ore:dyePink>          ]);
recipes.addShapeless(GTDyeLime,      [<ore:dyeLime>          ]);
recipes.addShapeless(GTDyeYellow,    [<ore:dyeYellow>        ]);
recipes.addShapeless(GTDyeLBlue,     [<ore:dyeLightBlue>     ]);
recipes.addShapeless(GTDyeMagenta,   [<ore:dyeMagenta>       ]);
recipes.addShapeless(GTDyeOrange,    [<ore:dyeOrange>        ]);
recipes.addShapeless(GTDyeWhite,     [<ore:dyeWhite>         ]);




Assembler.addRecipe(<IC2:blockKineticGenerator>, [<ore:plateDoubleMaragingSteel300>*8, <ore:itemCasingStainlessSteel>*8, <IC2:itemRecipePart:12> * 4, <ore:gearGtSmallTitanium>*2, <gregtech:gt.metaitem.01:32602> * 2, <ore:circuitData>*2, <ore:cableGt01Platinum>*2, <gregtech:gt.blockcasings2:3>], <liquid:molten.solderingalloy> * 1152, 200, 1920);
Assembler.addRecipe(<IC2:blockGenerator:9>, [<ore:plateDoubleMaragingSteel300>*8, <ore:rotorMaragingSteel300>*4, <IC2:itemRecipePart:12> * 2, <ore:gearTitanium>*2, <gregtech:gt.metaitem.01:32602> * 2, <ore:circuitData>*2, <ore:cableGt01Platinum>*2, <gregtech:gt.blockcasings2:11>, <gregtech:gt.metaitem.01:32538>], <liquid:molten.solderingalloy> * 1152, 200, 1920);

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

// NanoSet
recipes.remove(<IC2:itemArmorNanoHelmet:*>);
recipes.remove(<IC2:itemArmorNanoChestplate:*>);
recipes.remove(<IC2:itemArmorNanoLegs:*>);
recipes.remove(<IC2:itemArmorNanoBoots:*>);

Assembler.addRecipe(<IC2:itemArmorNanoHelmet:27>, <customthings:item:132>, <customthings:item:133>, 400, 120);
Assembler.addRecipe(<IC2:itemArmorNanoChestplate:27>, <customthings:item:129>, <customthings:item:133>, 400, 120);
Assembler.addRecipe(<IC2:itemArmorNanoLegs:27>, <customthings:item:131>, <customthings:item:133>, 400, 120);
Assembler.addRecipe(<IC2:itemArmorNanoBoots:27>, <customthings:item:128>, <customthings:item:133>, 400, 120);

/* --- Quantum Armor
mods.gregtech.AssemblyLine.addRecipe(<customthings:item:139>, 196000, [<customthings:item:137>, <gregtech:gt.metaitem.01:32706>*4, <gregtech:gt.blockmachines:1662>*4, <miscutils:itemPlateDoubleNitinol60>*5, <customthings:item:134>, <gregtech:gt.metaitem.01:32694>, <gregtech:gt.metaitem.01:32673>, <miscutils:itemScrewStellite>*8], [<liquid:molten.solderingalloy> * 2304, <liquid:molten.hastelloyc276>*1440, <liquid:molten.glowstone> * 288, <liquid:molten.thallium> * 576], <IC2:itemArmorQuantumHelmet:27>, 2000, 7680);
mods.gregtech.AssemblyLine.addRecipe(<customthings:item:136>, 196000, [<customthings:item:138>, <gregtech:gt.metaitem.01:32706>*4, <gregtech:gt.blockmachines:1662>*6, <miscutils:itemPlateDoubleNitinol60>*8, <customthings:item:134>, <gregtech:gt.metaitem.01:32673>*2, <gregtech:gt.metaitem.01:32654>*2, <miscutils:itemScrewStellite>*16], [<liquid:molten.solderingalloy> * 2304, <liquid:molten.hastelloyc276>*1440, <liquid:molten.glowstone> * 288], <IC2:itemArmorQuantumChestplate:27>, 2000, 7680);
mods.gregtech.AssemblyLine.addRecipe(<customthings:item:138>, 196000, [<IC2:itemArmorNanoLegs:*>, <gregtech:gt.metaitem.01:32706>*2, <gregtech:gt.blockmachines:1662>*6, <miscutils:itemPlateDoubleNitinol60>*7, <customthings:item:134>, <gregtech:gt.metaitem.01:32673>*2, <gregtech:gt.metaitem.01:32604>*4, <miscutils:itemScrewStellite>*12], [<liquid:molten.solderingalloy> * 2304, <liquid:molten.hastelloyc276>*1440, <liquid:molten.glowstone> * 288], <IC2:itemArmorQuantumLegs:27>, 2000, 7680);
mods.gregtech.AssemblyLine.addRecipe(<customthings:item:135>, 196000, [<IC2:itemArmorNanoBoots:*>, <gregtech:gt.metaitem.01:32706>*2, <gregtech:gt.blockmachines:1662>*4, <miscutils:itemPlateDoubleNitinol60>*4, <customthings:item:134>, <gregtech:gt.metaitem.01:32673>, <gregtech:gt.metaitem.01:32644>*2, <miscutils:itemScrewStellite>*8], [<liquid:molten.solderingalloy> * 2304, <liquid:molten.hastelloyc276>*1440, <liquid:molten.glowstone> * 288], <IC2:itemArmorQuantumBoots:27>, 2000, 7680);
*/

// --- Mithril
Electrolyzer.addRecipe([<gregtech:gt.metaitem.01:2516>*2, <gregtech:gt.metaitem.01:2085>*2, <gregtech:gt.metaitem.01:2340>], null,  <ore:dustMithril>*5, null, null, [10000, 10000, 10000], 600, 480);
ChemicalBath.addRecipe([<gregtech:gt.metaitem.01:8516>, <gregtech:gt.metaitem.01:2387>, <gregtech:gt.metaitem.01:2414>], <ore:gemMithril>*2, <liquid:sulfuricacid> * 1000, [10000, 8000, 7500], 400, 120);

// --- Mytryl
Centrifuge.addRecipe([<gregtech:gt.metaitem.01:2089>*3, <gregtech:gt.metaitem.01:2085>*2, <gregtech:gt.metaitem.01:2956>], null, <ore:dustMytryl>*6, null, null, [10000, 10000, 10000], 400, 1920);

// --- Tartarite
Centrifuge.addRecipe([<gregtech:gt.metaitem.01:2837>*3, <gregtech:gt.metaitem.01:2022>*2, <gregtech:gt.metaitem.01:2032>*2, <gregtech:gt.metaitem.01:2200>, <gregtech:gt.metaitem.01:2084>], <liquid:sulfuricacid>*2000, <ore:dustTartarite>*9, null, <liquid:water>*2000, [10000, 10000, 10000, 10000, 10000], 600, 7680);
ChemicalReactor.addRecipe(<gregtech:gt.metaitem.01:201>*6, null, <ore:dustTartariteSolution>, <gregtech:gt.neutronreflector> * 0, <liquid:radon> * 1000, 3000, 480);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:12324>, <gregtech:gt.metaitem.01:12975>, <gregtech:gt.metaitem.01:12084>], <liquid:helium> * 24, <ore:dustEnrichedTartarite>*3, <liquid:plasma.helium> * 24, [10000, 10000, 10000], 77, 32768);