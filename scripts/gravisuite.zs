import minetweaker.game.IGame;
import mods.gregtech.Assembler;

# Aliases
var advancedElectricJetpack = <GraviSuite:advJetpack:27>.withTag({charge: 0});
var advancedElectricJetpack2 = <GraviSuite:advJetpack:*>;
var advancedLappack = <GraviSuite:advLappack:*>;
var advancedNanoChestPlate = <GraviSuite:advNanoChestPlate:27>.withTag({charge: 0});
var advancedNanoChestPlate2 = <GraviSuite:advNanoChestPlate:*>;
var cablePlatinum = <gregtech:gt.blockmachines:1646>;
var carbonPlate = <IC2:itemPartCarbonPlate>;
var circuitAdvanced = <ore:circuitAdvanced>;
var electricJetpack = <IC2:itemArmorJetpackElectric:*>;
var engineBooster = <GraviSuite:itemSimpleItem:6>;
var ingotGold = <minecraft:gold_ingot>;
var nanoBodyArmor = <IC2:itemArmorNanoChestplate:*>;
var superconductor = <GraviSuite:itemSimpleItem:1>;
var superconductorCover = <GraviSuite:itemSimpleItem>;
var coolingCore = <GraviSuite:itemSimpleItem:2>;
var cell60k = <IC2:reactorCoolantSix:1>;
var advHeatExchanger = <IC2:reactorHeatSwitchDiamond:1>;
var heatReactorPlating = <IC2:reactorPlatingHeat>;
var plateAlloyIridium = <ore:plateAlloyIridium>;
var TransformerZPM = <gregtech:gt.blockmachines:27>;
var GraviChest = <GraviSuite:graviChestPlate:27>.withTag({charge: 0});
var GraviChest2 = <GraviSuite:graviChestPlate:*>;
var QuantumChest = <IC2:itemArmorQuantumChestplate:*>;
var GravitationEngine = <GraviSuite:itemSimpleItem:3>;
var UltLappack = <GraviSuite:ultimateLappack:*>;
var SuperconductorGT = <ore:wireGt01Superconductor>;
var FieldGenLV = <gregtech:gt.metaitem.01:32671>;
var emitterIV = <gregtech:gt.metaitem.01:32684>;
var LapotronicCrystal = <IC2:itemBatLamaCrystal:*>;
var LapotronicOrb = <gregtech:gt.metaitem.01:32597>;
var AdvAlloy = <IC2:itemPartAlloy>;
var plateRIridium = <IC2:itemPartIridium>;
var advDDrill = <GraviSuite:advDDrill>;
var advChainsaw = <GraviSuite:advChainsaw>;
var DrillHV = <gregtech:gt.metatool.01:105>;

var ChainsawHV = <gregtech:gt.metatool.01:115>;
var diamondGear = <gregtech:gt.metaitem.02:31500>;
var sdiamondGear = <gregtech:gt.metaitem.02:20500>;
var diamondBolt = <gregtech:gt.metaitem.01:26500>;
var OCUpgrade = <IC2:upgradeModule>;


// --- Super Conductor
recipes.remove(<GraviSuite:itemSimpleItem:1>);
recipes.addShaped(<GraviSuite:itemSimpleItem:1>, [
[<GraviSuite:itemSimpleItem>, <GraviSuite:itemSimpleItem>, <GraviSuite:itemSimpleItem>],
[<gregtech:gt.blockmachines:2404>, <ore:plateRhodium-PlatedPalladium>, <gregtech:gt.blockmachines:2404>],
[<GraviSuite:itemSimpleItem>, <GraviSuite:itemSimpleItem>, <GraviSuite:itemSimpleItem>]]);

// --- Super Conductor Cover
recipes.remove(<GraviSuite:itemSimpleItem>);
recipes.addShaped(<GraviSuite:itemSimpleItem>, [
[<IC2:itemPartAlloy>, <IC2:itemPartIridium>, <IC2:itemPartAlloy>],
[<gregtech:gt.blockmachines:2380>, <gregtech:gt.blockmachines:2380>, <gregtech:gt.blockmachines:2380>],
[<IC2:itemPartAlloy>, <IC2:itemPartIridium>, <IC2:itemPartAlloy>]]);



recipes.remove(advancedLappack);
recipes.addShaped(<GraviSuite:advLappack:27>, [
[<IC2:itemBatCrystal:*>,<IC2:itemPartCarbonPlate>,<IC2:itemBatCrystal:*>],
[<IC2:itemBatCrystal:*>,<IC2:itemArmorEnergypack:*>,<IC2:itemBatCrystal:*>],
[<IC2:itemBatCrystal:*>,<ore:circuitData>,<IC2:itemBatCrystal:*>]]);

recipes.remove(advancedElectricJetpack2);
recipes.addShaped(advancedElectricJetpack, [
		[carbonPlate, electricJetpack, carbonPlate],
		[engineBooster, advancedLappack, engineBooster],
		[<ore:wireGt04Platinum>, circuitAdvanced, <ore:wireGt04Platinum>]]);

recipes.remove(<GraviSuite:ultimateLappack:*>);
recipes.addShaped(<GraviSuite:ultimateLappack:27>, [
[<ore:itemCasingTungstenSteel>,<IC2:itemPartIridium>,<ore:itemCasingTungstenSteel>],
[<IC2:itemBatLamaCrystal:*>,<GraviSuite:advLappack:*>,<IC2:itemBatLamaCrystal:*>],
[<ore:circuitElite>,<GraviSuite:itemSimpleItem:1>,<ore:circuitElite>]]);
		
recipes.remove(advancedNanoChestPlate2);
recipes.addShaped(advancedNanoChestPlate, [
		[carbonPlate, advancedElectricJetpack2, carbonPlate],
		[carbonPlate, nanoBodyArmor, carbonPlate],
		[<ore:wireGt04Platinum>, <ore:circuitElite>, <ore:wireGt04Platinum>]]);
        
recipes.remove(coolingCore);
recipes.addShaped(coolingCore, [
        [cell60k, advHeatExchanger, cell60k],
        [heatReactorPlating, plateAlloyIridium, heatReactorPlating],
        [cell60k, advHeatExchanger, cell60k]]);
        
recipes.remove(engineBooster);
recipes.addShaped(engineBooster, [  
        [<minecraft:glowstone_dust>, <IC2:itemPartAlloy>, <minecraft:glowstone_dust>],
        [<ore:circuitAdvanced>, <IC2:upgradeModule>, <ore:circuitAdvanced>],
        [<IC2:itemPartAlloy>, <IC2:reactorVentDiamond:*>, <IC2:itemPartAlloy>]]);

recipes.remove(GravitationEngine);
recipes.addShaped(GravitationEngine, [
		[emitterIV, superconductor, emitterIV],
		[coolingCore, LapotronicOrb, coolingCore],
		[emitterIV, superconductor, emitterIV]]);

//recipes.remove(GraviChest2);
/*recipes.addShaped(GraviChest, [
		[superconductor, QuantumChest, superconductor],
		[GravitationEngine, FieldGenLV, GravitationEngine],
		[superconductor, UltLappack, superconductor]]);*/

/*recipes.addShaped(<IC2:itemArmorQuantumChestplate>, [
  [AdvAlloy, <GraviSuite:advNanoChestPlate:26>, AdvAlloy],
  [plateRIridium, LapotronicCrystal, plateRIridium],
  [plateRIridium, null, plateRIridium]]);*/

// --- Localization Fixes ---
game.setLocalization("itemSuperConductorCover.name", "Superconductor Cover");
game.setLocalization("itemSuperConductor.name", "Superconductor");
game.setLocalization("itemCoolingCore.name", "Cooling Core");
game.setLocalization("itemGravitationEngine.name", "Gravitation Engine");
game.setLocalization("itemMagnetron.name", "Magnetron");
game.setLocalization("itemVajraCore.name", "Vajra Core");
game.setLocalization("itemEngineBoost.name", "Engine Booster");
game.setLocalization("item.sonicLauncher.name", "Sonic Launcher");
game.setLocalization("RelocatorPortal.name", "Relocator Portal");


// Adv Mining Drill
var diamondDrillTip = <gregtech:gt.metaitem.02:8500>;
game.setLocalization("gt.metaitem.02.8500.name", "Diamond Drill Tip");
recipes.remove(advDDrill);

recipes.addShaped(diamondDrillTip, [
	[<ore:plateDiamond>, <ore:plateSteel>, <ore:plateDiamond>],
	[<ore:plateDiamond>, <ore:plateSteel>, <ore:plateDiamond>],
	[<ore:plateSteel>, <ore:craftingToolHardHammer>, <ore:plateSteel>]]);

recipes.addShaped(advDDrill, [
	[<ore:screwHSSG>, diamondDrillTip, <ore:craftingToolScrewdriver>],
	[<ore:gearGtSmallHSSG>, <gregtech:gt.metaitem.01:32603>, <ore:gearGtSmallHSSG>],
	[<ore:plateHSSG>, <customthings:item:133>, <ore:plateHSSG>]]);

// Adv Chainsaw
var diamondChainsawTip = <gregtech:gt.metaitem.02:9500>;
game.setLocalization("gt.metaitem.02.9500.name", "Diamond Chainsaw Tip");

recipes.addShaped(diamondChainsawTip, [
	[<ore:plateSteel>, <ore:ringSteel>, <ore:plateSteel>],
	[<ore:plateDiamond>, <ore:craftingToolHardHammer>, <ore:plateDiamond>],
	[<ore:plateSteel>, <ore:ringSteel>, <ore:plateSteel>]]);

recipes.remove(advChainsaw);

recipes.addShaped(advChainsaw, [
	[<ore:screwHSSG>, diamondChainsawTip, <ore:craftingToolScrewdriver>],
	[<ore:gearGtSmallHSSG>, <gregtech:gt.metaitem.01:32603>, <ore:gearGtSmallHSSG>],
	[<ore:plateHSSG>, <IC2:itemBatChargeLamaCrystal:*>, <ore:plateHSSG>]]);

recipes.remove(<GraviSuite:relocator>);
recipes.addShaped(<GraviSuite:relocator>, [
	[<gregtech:gt.metaitem.01:32689>, <ore:platePhoenixite>, <gregtech:gt.metaitem.01:32699>],
	[<ore:circuitPiko>, <SGCraft:stargateBase>, <ore:circuitPiko>],
	[<ore:platePhoenixite>, <spartakcore:item.QuantumCrystal>, <ore:platePhoenixite>]]);

// GraviTool
recipes.remove(<GraviSuite:graviTool>);
recipes.addShaped(<GraviSuite:graviTool>, [
	[<ore:plateAlloyCarbon>, <IC2:itemToolHoe:*>, <ore:plateAlloyCarbon>],
	[<ore:plateAlloyAdvanced>, <ore:batteryElite>, <ore:plateAlloyAdvanced>],
	[<IC2:itemToolWrenchElectric:*>, <ore:circuitAdvanced>, <IC2:itemTreetapElectric:*>]]);

// Magnetron
recipes.remove(<GraviSuite:itemSimpleItem:4>);
recipes.addShaped(<GraviSuite:itemSimpleItem:4>, [
[<ore:plateDenseNeodymiumMagnetic>, <gregtech:gt.metaitem.03:32215>, <ore:plateDenseNeodymiumMagnetic>], 
[<ore:plateDenseCopper>, <GraviSuite:itemSimpleItem:1>, <ore:plateDenseCopper>], 
[<ore:plateDenseNeodymiumMagnetic>, <gregtech:gt.metaitem.03:32215>, <ore:plateDenseNeodymiumMagnetic>]]);

// Vajra core
recipes.remove(<GraviSuite:itemSimpleItem:5>);
recipes.addShaped(<GraviSuite:itemSimpleItem:5>, [
[<GraviSuite:itemSimpleItem:1>, <ore:craftingToolWrench>, <GraviSuite:itemSimpleItem:1>], 
[<IC2:itemPartIridium>, <GraviSuite:itemSimpleItem:4>, <IC2:itemPartIridium>], 
[<GraviSuite:itemSimpleItem:1>, <gregtech:gt.blockmachines:25>, <GraviSuite:itemSimpleItem:1>]]);

// Vajra
recipes.remove(<GraviSuite:vajra:*>);
recipes.addShaped(<GraviSuite:vajra:27>, [
[<customthings:item:154>, <GraviSuite:itemSimpleItem:4>, <ore:lensReinforcedGlass>], 
[<ore:circuitElite>, <GraviSuite:itemSimpleItem:5>, <ore:circuitElite>], 
[<ore:stickLongTriniumNaquadahCarbonite>, <spartakcore:item.QuantumCrystal>, <ore:stickLongTriniumNaquadahCarbonite>]]);

// —- Gravitational Engine 2
recipes.remove(<GraviSuite:itemSimpleItem:7>);
recipes.addShaped(<GraviSuite:itemSimpleItem:7>, [
[<gregtech:gt.metaitem.01:32686>, <gregtech:gt.blockmachines:2442>, <gregtech:gt.metaitem.01:32686>],
[<GraviSuite:itemSimpleItem:3>, <gregtech:gt.metaitem.01:32676>, <GraviSuite:itemSimpleItem:3>],
[<gregtech:gt.metaitem.01:32686>, <gregtech:gt.blockmachines:2442>, <gregtech:gt.metaitem.01:32686>]]);

// —- K2P4 ChestPlate
recipes.remove(<GraviSuite:kpChestPlate:*>);
mods.gregtech.AssemblyLine.addRecipe(<GraviSuite:graviChestPlate:*>, 356000, [<GraviSuite:graviChestPlate:*>,<gregtech:gt.blockmachines:12157>, <GraviSuite:epicLappack:*>, <customthings:item:142>*2, <GraviSuite:itemSimpleItem:7>*2,<gregtech:gt.metaitem.03:32091>*4,<gregtech:gt.metaitem.01:22490>*2,<gregtech:gt.metaitem.01:32599>,<gregtech:gt.metaitem.01:32676>*2,<gregtech:gt.metaitem.01:32657>*2,<gregtech:gt.blockmachines:2442>*16,<miscutils:itemScrewArceusAlloy2B>*16], [<liquid:molten.solderingalloy> * 4608, <liquid:molten.americium>*1440,<liquid:molten.blacktitanium>*1440], <GraviSuite:kpChestPlate:27>, 2300, 122880);

// --- GraviSuite
mods.gregtech.AssemblyLine.addRecipe(<IC2:itemArmorQuantumChestplate:*>, 296000, [<IC2:itemArmorQuantumChestplate:*>,<GraviSuite:advNanoChestPlate:*>,<gregtech:gt.blockmachines:12156>,<GraviSuite:ultimateLappack:*>,<GraviSuite:itemSimpleItem:1>*6,<GraviSuite:itemSimpleItem:2>*2,<GraviSuite:itemSimpleItem:3>*2,<gregtech:gt.metaitem.03:32088>*2,<gregtech:gt.metaitem.01:22328>*2,<AFSU:ALC:*>,<gregtech:gt.metaitem.01:32674>*2,<gregtech:gt.metaitem.01:32656>*2,<gregtech:gt.blockmachines:2422>*8,<miscutils:itemScrewZeron100>*16], [<liquid:molten.solderingalloy> * 2304, <liquid:molten.tritanium>*1440, <liquid:molten.lafiumcompound>*1440], <GraviSuite:graviChestPlate:27>, 2000, 30720);

// --- Cooling Core
recipes.remove(<GraviSuite:itemSimpleItem:2>);
recipes.addShaped(<GraviSuite:itemSimpleItem:2>, [
[<IC2:itemPartIridium>, <IC2:reactorHeatSwitchDiamond:1>, <IC2:itemPartIridium>],
[<IC2:reactorPlatingHeat>, <gregtech:gt.360k_Helium_Coolantcell>, <IC2:reactorPlatingHeat>],
[<ore:plateDoubleIncoloyMA956>, <IC2:reactorHeatSwitchDiamond:1>, <ore:plateDoubleIncoloyMA956>]]);
recipes.addShaped(<GraviSuite:itemSimpleItem:2>, [
[<ore:plateDoubleIncoloyMA956>, <IC2:reactorHeatSwitchDiamond:1>, <ore:plateDoubleIncoloyMA956>],
[<IC2:reactorPlatingHeat>, <gregtech:gt.360k_Helium_Coolantcell>, <IC2:reactorPlatingHeat>],
[<IC2:itemPartIridium>, <IC2:reactorHeatSwitchDiamond:1>, <IC2:itemPartIridium>]]);

// --- Engine Booster
recipes.remove(<GraviSuite:itemSimpleItem:6>);
recipes.addShaped(<GraviSuite:itemSimpleItem:6>, [
[<ore:plateStainlessSteel>, <ore:circuitAdvanced>, <ore:plateStainlessSteel>],
[<ore:plateStainlessSteel>, <IC2:upgradeModule>, <ore:plateStainlessSteel>],
[<ore:screwStainlessSteel>, <IC2:reactorVentDiamond:1>, <ore:screwStainlessSteel>]]);

// --- Epic Lappack
recipes.addShaped(<GraviSuite:epicLappack:27>, [
[<ore:itemCasingHSSG>, <ore:circuitSuperconductor>, <ore:itemCasingHSSG>],
[<ore:itemCasingHSSG>, <GraviSuite:ultimateLappack:*>, <ore:itemCasingHSSG>],
[<ore:wireGt08SuperconductorUV>, <gregtech:gt.metaitem.01:32599>, <ore:wireGt08SuperconductorUV>]]);