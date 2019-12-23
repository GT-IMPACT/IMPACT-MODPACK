import mods.ic2.Compressor;
import mods.gregtech.AlloySmelter;
import mods.gregtech.ArcFurnace;
import mods.gregtech.Assembler;
import mods.gregtech.BlastFurnace;
import mods.gregtech.ChemicalReactor;
import mods.gregtech.Electrolyzer;
import mods.gregtech.Extruder;
import mods.gregtech.ImplosionCompressor;
import mods.gregtech.Mixer;
import mods.gregtech.PlasmaArcFurnace;
import mods.gregtech.VacuumFreezer;

// --- Medium Fuel Canister
recipes.addShaped(<customthings:item:16>, [
[<ore:screwMaragingSteel250>, <ore:craftingToolScrewdriver>, <ore:screwMaragingSteel250>],
[<customthings:item:31>, <gregtech:gt.metaitem.01:32409>, <customthings:item:2>],
[<ore:screwMaragingSteel250>, <ore:craftingToolHardHammer>, <ore:screwMaragingSteel250>]]);

// --- Large Fuel Canister
recipes.addShaped(<customthings:item:12>, [
[<ore:screwZeron100>, <ore:craftingToolScrewdriver>, <ore:screwZeron100>],
[<customthings:item:101>, <customthings:item:16>, <customthings:item:100>],
[<ore:screwZeron100>, <ore:craftingToolHardHammer>, <ore:screwZeron100>]]);

// --- Extra Large Fuel Canister
recipes.addShaped(<customthings:item:3>, [
[<ore:screwInfuscolium>, <ore:craftingToolScrewdriver>, <ore:screwInfuscolium>],
[<customthings:item:76>, <customthings:item:12>, <ore:plateDoubleNeutronium>],
[<ore:screwInfuscolium>, <ore:craftingToolHardHammer>, <ore:screwInfuscolium>]]);

// --- Heavy Duty Nose Cone Tier 4
recipes.addShaped(<customthings:item:77>, [
[<ore:craftingToolScrewdriver>, <GalacticraftMars:item.heavyNoseCone>, <ore:craftingToolHardHammer>],
[<ore:screwZeron100>, <customthings:item:66>, <ore:screwZeron100>],
[<customthings:item:66>, <GalaxySpace:item.HeavyDutyPlate4>, <customthings:item:66>]]);

// --- Heavy Duty Nose Cone Tier 5
recipes.addShaped(<customthings:item:95>, [
[<ore:craftingToolScrewdriver>, <customthings:item:77>, <ore:craftingToolHardHammer>],
[<ore:screwCinobiteA243>, <customthings:item:11>, <ore:screwCinobiteA243>],
[<customthings:item:11>, <GalaxySpace:item.HeavyDutyPlate5>, <customthings:item:11>]]);

// --- Heavy Duty Nose Cone Tier 6
recipes.addShaped(<customthings:item:96>, [
[<ore:craftingToolScrewdriver>, <customthings:item:95>, <ore:craftingToolHardHammer>],
[<ore:screwAmericium>, <customthings:item:101>, <ore:screwAmericium>],
[<customthings:item:101>, <GalaxySpace:item.HeavyDutyPlate6>, <customthings:item:101>]]);

// --- Heavy Duty Nose Cone Tier 7
recipes.addShaped(<customthings:item:97>, [
[<ore:craftingToolScrewdriver>, <customthings:item:96>, <ore:craftingToolHardHammer>],
[<ore:screwNeutronium>, <customthings:item:76>, <ore:screwNeutronium>],
[<customthings:item:76>, <GalaxySpace:item.HeavyDutyPlate7>, <customthings:item:76>]]);

// --- Heavy Duty Nose Cone Tier 8
recipes.addShaped(<customthings:item:98>, [
[<ore:craftingToolScrewdriver>, <customthings:item:97>, <ore:craftingToolHardHammer>],
[<ore:screwPhoenixite>, <customthings:item:99>, <ore:screwPhoenixite>],
[<customthings:item:99>, <customthings:item:102>, <customthings:item:99>]]);

// --- Heavy Duty Rocket Fines Tier 4
recipes.addShaped(<customthings:item:79>, [
[<ore:craftingToolHardHammer>, <GalaxySpace:item.HeavyDutyPlate4>, <ore:craftingToolFile>],
[<GalacticraftMars:item.itemBasicAsteroids>, <GalaxySpace:item.HeavyDutyPlate4>, <GalacticraftMars:item.itemBasicAsteroids>],
[<GalacticraftMars:item.itemBasicAsteroids>, <customthings:item:66>, <GalacticraftMars:item.itemBasicAsteroids>]]);

// --- Heavy Duty Rocket Fines Tier 5
recipes.addShaped(<customthings:item:83>, [
[<ore:craftingToolHardHammer>, <GalaxySpace:item.HeavyDutyPlate5>, <ore:craftingToolFile>],
[<GalaxySpace:item.HeavyDutyPlate4>, <GalaxySpace:item.HeavyDutyPlate5>, <GalaxySpace:item.HeavyDutyPlate4>],
[<GalaxySpace:item.HeavyDutyPlate4>, <customthings:item:11>, <GalaxySpace:item.HeavyDutyPlate4>]]);

// --- Heavy Duty Rocket Fines Tier 6
recipes.addShaped(<customthings:item:84>, [
[<ore:craftingToolHardHammer>, <GalaxySpace:item.HeavyDutyPlate6>, <ore:craftingToolFile>],
[<GalaxySpace:item.HeavyDutyPlate5>, <GalaxySpace:item.HeavyDutyPlate6>, <GalaxySpace:item.HeavyDutyPlate5>],
[<GalaxySpace:item.HeavyDutyPlate5>, <customthings:item:101>, <GalaxySpace:item.HeavyDutyPlate5>]]);

// --- Heavy Duty Rocket Fines Tier 7
recipes.addShaped(<customthings:item:85>, [
[<ore:craftingToolHardHammer>, <GalaxySpace:item.HeavyDutyPlate7>, <ore:craftingToolFile>],
[<GalaxySpace:item.HeavyDutyPlate6>, <GalaxySpace:item.HeavyDutyPlate7>, <GalaxySpace:item.HeavyDutyPlate6>],
[<GalaxySpace:item.HeavyDutyPlate6>, <customthings:item:76>, <GalaxySpace:item.HeavyDutyPlate6>]]);

// --- Heavy Duty Rocket Fines Tier 8
recipes.addShaped(<customthings:item:86>, [
[<ore:craftingToolHardHammer>, <customthings:item:102>, <ore:craftingToolFile>],
[<GalaxySpace:item.HeavyDutyPlate7>, <customthings:item:102>, <GalaxySpace:item.HeavyDutyPlate7>],
[<GalaxySpace:item.HeavyDutyPlate7>, <customthings:item:99>, <GalaxySpace:item.HeavyDutyPlate7>]]);

// --- Heavy Duty Rocket Engine Tier 4
recipes.addShaped(<customthings:item:78>, [
[<customthings:item:80>, <GalaxySpace:item.HeavyDutyPlate4>, <customthings:item:80>],
[<GalaxySpace:item.HeavyDutyPlate4>, <GalaxySpace:item.HeavyDutyPlate4>, <GalaxySpace:item.HeavyDutyPlate4>],
[<GalacticraftMars:item.itemBasicAsteroids:1>, <GalaxySpace:item.HeavyDutyPlate4>, <GalacticraftMars:item.itemBasicAsteroids:1>]]);

// --- Heavy Duty Rocket Engine Tier 5
recipes.addShaped(<customthings:item:91>, [
[<customthings:item:87>, <GalaxySpace:item.HeavyDutyPlate5>, <customthings:item:87>],
[<GalaxySpace:item.HeavyDutyPlate5>, <GalaxySpace:item.HeavyDutyPlate5>, <GalaxySpace:item.HeavyDutyPlate5>],
[<customthings:item:78>, <GalaxySpace:item.HeavyDutyPlate5>, <customthings:item:78>]]);

// --- Heavy Duty Rocket Engine Tier 6
recipes.addShaped(<customthings:item:92>, [
[<customthings:item:88>, <GalaxySpace:item.HeavyDutyPlate6>, <customthings:item:88>],
[<GalaxySpace:item.HeavyDutyPlate6>, <GalaxySpace:item.HeavyDutyPlate6>, <GalaxySpace:item.HeavyDutyPlate6>],
[<customthings:item:91>, <GalaxySpace:item.HeavyDutyPlate6>, <customthings:item:91>]]);

// --- Heavy Duty Rocket Engine Tier 7
recipes.addShaped(<customthings:item:93>, [
[<customthings:item:89>, <GalaxySpace:item.HeavyDutyPlate7>, <customthings:item:89>],
[<GalaxySpace:item.HeavyDutyPlate7>, <GalaxySpace:item.HeavyDutyPlate7>, <GalaxySpace:item.HeavyDutyPlate7>],
[<customthings:item:92>, <GalaxySpace:item.HeavyDutyPlate7>, <customthings:item:92>]]);

// --- Heavy Duty Rocket Engine Tier 8
recipes.addShaped(<customthings:item:94>, [
[<customthings:item:90>, <customthings:item:102>, <customthings:item:90>],
[<customthings:item:102>, <customthings:item:102>, <customthings:item:102>],
[<customthings:item:93>, <customthings:item:102>, <customthings:item:93>]]);

// --- Booster Tier 4
recipes.addShaped(<customthings:item:80>, [
[<ore:plateDoubleRhenium>,<ore:plateDoubleRhenium>,<ore:plateDoubleRhenium>],
[<GalaxySpace:item.HeavyDutyPlate4>, <GalacticraftCore:item.engine:1>, <GalaxySpace:item.HeavyDutyPlate4>],
[<GalaxySpace:item.HeavyDutyPlate4>, <customthings:item:66>, <GalaxySpace:item.HeavyDutyPlate4>]]);

// --- Booster Tier 5
recipes.addShaped(<customthings:item:87>, [
[<ore:plateDoubleCinobiteA243>,<ore:plateDoubleCinobiteA243>,<ore:plateDoubleCinobiteA243>],
[<GalaxySpace:item.HeavyDutyPlate5>, <customthings:item:80>, <GalaxySpace:item.HeavyDutyPlate5>],
[<GalaxySpace:item.HeavyDutyPlate5>, <customthings:item:11>, <GalaxySpace:item.HeavyDutyPlate5>]]);

// --- Booster Tier 6
recipes.addShaped(<customthings:item:88>, [
[<GalaxySpace:item.CompressedPlates:7>,<GalaxySpace:item.CompressedPlates:7>,<GalaxySpace:item.CompressedPlates:7>],
[<GalaxySpace:item.HeavyDutyPlate6>, <customthings:item:87>, <GalaxySpace:item.HeavyDutyPlate6>],
[<GalaxySpace:item.HeavyDutyPlate6>, <customthings:item:101>, <GalaxySpace:item.HeavyDutyPlate6>]]);

// --- Booster Tier 7
recipes.addShaped(<customthings:item:89>, [
[<ore:plateNeutronium>,<ore:plateNeutronium>,<ore:plateNeutronium>],
[<GalaxySpace:item.HeavyDutyPlate7>, <customthings:item:88>, <GalaxySpace:item.HeavyDutyPlate7>],
[<GalaxySpace:item.HeavyDutyPlate7>, <customthings:item:76>, <GalaxySpace:item.HeavyDutyPlate7>]]);

// --- Booster Tier 8
recipes.addShaped(<customthings:item:90>, [
[<ore:platePhoenixite>,<ore:platePhoenixite>,<ore:platePhoenixite>],
[<customthings:item:102>, <customthings:item:89>, <customthings:item:102>],
[<customthings:item:102>, <customthings:item:99>, <customthings:item:102>]]);

// --- Advanced Board
ChemicalReactor.addRecipe(<customthings:item>, null, <gregtech:gt.metaitem.03:32007>, <ore:foilAluminium> * 4, <liquid:sulfuricacid> * 500, 1000, 30);

// --- Nano Board
ChemicalReactor.addRecipe(<customthings:item:18>, null, <gregtech:gt.metaitem.01:32720>, <ore:foilOsmium> * 8, <liquid:sulfuricacid> * 750, 1000, 480);

// --- Quantum Board
ChemicalReactor.addRecipe(<customthings:item:20>, null, <gregtech:gt.metaitem.03:32006>, <ore:foilNaquadah> * 16, <liquid:sulfuricacid> * 1000, 1000, 7680);

// --- Advanced Processor Board
ChemicalReactor.addRecipe(<customthings:item:1>, null, <customthings:item>, <ore:foilSilver> * 6, <liquid:sodiumpersulfate> * 500, 800, 120);
ChemicalReactor.addRecipe(<customthings:item:1>, null, <customthings:item>, <ore:foilSilver> * 6, <liquid:ironiiichloride> * 250, 400, 1920);

// --- Nano Processor Board
ChemicalReactor.addRecipe(<customthings:item:19>, null, <customthings:item:18>, <ore:foilNiobiumTitanium> * 16, <liquid:sodiumpersulfate> * 800, 900, 1920);
ChemicalReactor.addRecipe(<customthings:item:19>, null, <customthings:item:18>, <ore:foilNiobiumTitanium> * 16, <liquid:ironiiichloride> * 400, 450, 30720);

// --- Quantum Processor Board
ChemicalReactor.addRecipe(<customthings:item:21>, null, <customthings:item:20>, <ore:foilTritanium> * 32, <liquid:sodiumpersulfate> * 1600, 1200, 30720);
ChemicalReactor.addRecipe(<customthings:item:21>, null, <customthings:item:20>, <ore:foilTritanium> * 32, <liquid:ironiiichloride> * 800, 600, 491520);

// --- Ingots
AlloySmelter.addRecipe(<customthings:item:38>, <customthings:item:37>, <gregtech:gt.metaitem.01:32306> * 0, 80, 30);

Assembler.addRecipe(<customthings:item:4>, [<GalacticraftMars:item.itemBasicAsteroids>,<ore:plateTripleHSSG>*2,<ore:plateDoubleHastelloyC276>*3, <ore:plateDoubleZeron100>*3], <liquid:molten.osmium> * 288, 1200, 30720);
Assembler.addRecipe(<customthings:item:5>, [<GalaxySpace:item.HeavyDutyPlate4>,<customthings:item:11>,<customthings:item:100>*2, <ore:plateDoubleArceusAlloy2B>*3], <liquid:molten.europium> * 288, 1600, 122880);
Assembler.addRecipe(<customthings:item:6>, [<GalaxySpace:item.HeavyDutyPlate5>,<customthings:item:14>*2,<customthings:item:101>*2, <ore:plateDoubleTitansteel>*3], <liquid:molten.americium> * 288, 2000, 500000);
Assembler.addRecipe(<customthings:item:7>, [<GalaxySpace:item.HeavyDutyPlate6>,<customthings:item:76>*2,<ore:plateDoubleTritanium>*2, <ore:plateDoublePikyonium64B>*3], <liquid:molten.infuscolium> * 288, 2400, 2000000);
Assembler.addRecipe(<customthings:item:8>, [<GalaxySpace:item.HeavyDutyPlate7>,<customthings:item:99>*2,<ore:plateDoubleNeutronium>*2, <ore:plateDoubleQuantum>*3], <liquid:molten.phoenixite> * 288, 2800, 8000000);

VacuumFreezer.addRecipe(<customthings:item:67>, <ore:ingotLedox>, 1000);
VacuumFreezer.addRecipe(<customthings:item:35>, <customthings:item:38>, 1000);


// --- Plates
Assembler.addRecipe(<customthings:item:10>, [<customthings:item:36>,<customthings:item:69>], <liquid:ic2coolant> * 4000, 1000, 480);
Assembler.addRecipe(<customthings:item:13>, [<GalaxySpace:item.CompressedPlates:3>,<GalaxySpace:item.CompressedPlates:6>,<GalaxySpace:item.CompressedPlates:8>], <liquid:molten.duranium> * 288, 600, 1920);
Assembler.addRecipe(<customthings:item:14>, [<customthings:item:13>,<GalaxySpace:item.CompressedPlates:7>,<customthings:item:82>], <liquid:molten.tritanium> * 288, 1200, 7680);
Assembler.addRecipe(<GalaxySpace:item.CompressedPlates:2>, [<GalacticraftCore:item.basicItem:8>,<GalaxySpace:item.CompressedPlates:8>,<GalaxySpace:item.CompressedPlates:6>], null, 400, 4096);

Extruder.addRecipe(<customthings:item:68>, <customthings:item:67>, <gregtech:gt.metaitem.01:32350> * 0, 120, 128);
Extruder.addRecipe(<customthings:item:39>, <customthings:item:35>, <gregtech:gt.metaitem.01:32350> * 0, 120, 128);

ImplosionCompressor.addRecipe([<customthings:item:2>, <gregtech:gt.metaitem.01:816>*2], <GalacticraftMars:item.null:5> * 2, 4);
ImplosionCompressor.addRecipe([<customthings:item:17>, <gregtech:gt.metaitem.01:816>*2], <GalacticraftCore:item.meteoricIronIngot:1> * 2, 4);
ImplosionCompressor.addRecipe([<customthings:item:31>, <gregtech:gt.metaitem.01:816>*2], <GalacticraftMars:item.itemBasicAsteroids:6> * 2, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.HeavyDutyPlate4>, <gregtech:gt.metaitem.01:1083>*2], <customthings:item:4>, 16);
ImplosionCompressor.addRecipe([<customthings:item:66>, <gregtech:gt.metaitem.01:816>*2], <customthings:item:65> * 2, 4);
ImplosionCompressor.addRecipe([<customthings:item:65>, <gregtech:gt.metaitem.01:816>*4], <IC2:itemPartIridium>*3, 16);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:9>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleTungsten>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedDualBronze>, <gregtech:gt.metaitem.01:816>*2], <GalacticraftCore:item.basicItem:10>*2, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedDualAluminium>, <gregtech:gt.metaitem.01:816>*2], <GalacticraftCore:item.basicItem:8>*2, 4);
ImplosionCompressor.addRecipe([<customthings:item:82>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTriplePalladium>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedSDHD120>, <gregtech:gt.metaitem.01:306>*2], <customthings:item:15>, 6);
ImplosionCompressor.addRecipe([<customthings:item:101>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleDraconium>, 4);
ImplosionCompressor.addRecipe([<customthings:item:100>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleNaquadah>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.HeavyDutyPlate5>, <gregtech:gt.metaitem.01:1070>*2], <customthings:item:5>, 24);
ImplosionCompressor.addRecipe([<customthings:item:11>, <gregtech:gt.metaitem.01:816>*2], <customthings:item:10>*2, 4);
ImplosionCompressor.addRecipe([<customthings:item:69>, <gregtech:gt.metaitem.01:816>*2], <customthings:item:68>*3, 4);
ImplosionCompressor.addRecipe([<customthings:item:36>, <gregtech:gt.metaitem.01:816>*2], <customthings:item:39>*3, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:6>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleNickel>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:3>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleLead>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:7>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleOriharukon>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.HeavyDutyPlate6>, <gregtech:gt.metaitem.01:1103>*2], <customthings:item:6>, 32);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:8>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTriplePlatinum>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.HeavyDutyPlate7>, <gregtech:gt.metaitem.01:1103>*2], <customthings:item:7>, 48);
ImplosionCompressor.addRecipe([<customthings:item:76>, <gregtech:gt.metaitem.01:816>*2], <customthings:item:75>*2, 8);
ImplosionCompressor.addRecipe([<customthings:item:75>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleQuantium>, 4);
ImplosionCompressor.addRecipe([<customthings:item:102>, <gregtech:gt.metaitem.01:1420>*2], <customthings:item:8>, 64);
ImplosionCompressor.addRecipe([<customthings:item:99>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleBlackPlutonium>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:4>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleMagnesium>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:1>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleCobalt>, 4);

// --- Rockets
mods.gregtech.AssemblyLine.addRecipe(<spartakcore:item.SchematicsTier4>, 144000, [<customthings:item:77>, <GalacticraftMars:item.itemBasicAsteroids> * 4, <GalaxySpace:item.HeavyDutyPlate4> * 14, <customthings:item:79>*6, <customthings:item:80>*4, <customthings:item:16>*4, <customthings:item:78>*2], [<liquid:molten.solderingalloy> * 576], <GalaxySpace:item.Tier4Rocket>, 3000, 16384);
mods.gregtech.AssemblyLine.addRecipe(<spartakcore:item.SchematicsTier5>, 288000, [<customthings:item:95>, <GalaxySpace:item.HeavyDutyPlate4> * 6, <GalaxySpace:item.HeavyDutyPlate5> * 16, <customthings:item:83>*6, <customthings:item:87>*4, <customthings:item:16>*2, <customthings:item:12>*2, <customthings:item:91>*4], [<liquid:molten.solderingalloy> * 1152], <GalaxySpace:item.Tier5Rocket>, 4000, 65536);
mods.gregtech.AssemblyLine.addRecipe(<spartakcore:item.SchematicsTier6>, 432000, [<customthings:item:96>, <GalaxySpace:item.HeavyDutyPlate5> * 8, <GalaxySpace:item.HeavyDutyPlate6> * 18, <customthings:item:84>*8, <customthings:item:88>*6, <customthings:item:12>*4, <customthings:item:92>*6], [<liquid:molten.solderingalloy> * 2304], <GalaxySpace:item.Tier6Rocket>, 5000, 262144);
mods.gregtech.AssemblyLine.addRecipe(<spartakcore:item.SchematicsTier7>, 576000, [<customthings:item:97>, <GalaxySpace:item.HeavyDutyPlate6> * 10, <GalaxySpace:item.HeavyDutyPlate7> * 20, <customthings:item:85>*10, <customthings:item:89>*8, <customthings:item:12>*2, <customthings:item:3>*2, <customthings:item:93>*8], [<liquid:molten.solderingalloy> * 4608], <GalaxySpace:item.Tier7Rocket>, 6000, 1000000);
mods.gregtech.AssemblyLine.addRecipe(<spartakcore:item.SchematicsTier8>, 1152000, [<customthings:item:98>, <GalaxySpace:item.HeavyDutyPlate7> * 12, <customthings:item:102> * 24, <customthings:item:86>*12, <customthings:item:90>*10, <customthings:item:3>*4, <customthings:item:94>*10], [<liquid:molten.solderingalloy> * 9216], <GalaxySpace:item.Tier8Rocket>, 7000, 4000000);

//Precision Laser
//OutputStack, InputLens, InputStack, Time in Ticks, EnergyUsage
mods.gregtech.PrecisionLaser.addRecipe(<customthings:item:9>, <gregtech:gt.metaitem.03:32042>, <gregtech:gt.metaitem.01:24405> * 0, 1200, 1920);

//Arc Furnace
//OutputArray, InputStack, InputFluid, OutputArrayChances, Time in Ticks, EnergyUsage
ArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32462> * 31, <customthings:item:15>*7], <GalacticraftCore:item.spaceship>, <liquid:oxygen> * 1000, [10000, 10000], 1200, 128);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32462> * 31, <customthings:item:15>*7], <liquid:nitrogen> * 10, <GalacticraftCore:item.spaceship>, <liquid:plasma.nitrogen> * 10, [10000, 10000], 65, 128);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32462> * 31, <customthings:item:15>*7], <liquid:argon> * 3, <GalacticraftCore:item.spaceship>, <liquid:plasma.argon> * 3, [10000, 10000], 65, 128);

ArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32463>*10, <gregtech:gt.metaitem.01:32462> * 38, <customthings:item:15>*4], <GalacticraftMars:item.spaceshipTier2>, <liquid:oxygen> * 1200, [10000, 10000, 10000], 1400, 512);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32463>*10, <gregtech:gt.metaitem.01:32462> * 38, <customthings:item:15>*4], <liquid:nitrogen> * 12, <GalacticraftMars:item.spaceshipTier2>, <liquid:plasma.nitrogen> * 12, [10000, 10000, 10000], 68, 512);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32463>*10, <gregtech:gt.metaitem.01:32462> * 38, <customthings:item:15>*4], <liquid:argon> * 4, <GalacticraftMars:item.spaceshipTier2>, <liquid:plasma.argon> * 4, [10000, 10000, 10000], 68, 512);

ArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32464>*36, <gregtech:gt.metaitem.01:32463> * 16, <gregtech:gt.metaitem.01:32462>*16], <GalacticraftMars:item.itemTier3Rocket>, <liquid:oxygen> * 1400, [10000, 10000, 10000], 1600, 2048);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32464>*36, <gregtech:gt.metaitem.01:32463> * 16, <gregtech:gt.metaitem.01:32462>*16], <liquid:nitrogen> * 14, <GalacticraftMars:item.itemTier3Rocket>, <liquid:plasma.nitrogen> * 14, [10000, 10000, 10000], 71, 2048);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32464>*36, <gregtech:gt.metaitem.01:32463> * 16, <gregtech:gt.metaitem.01:32462>*16], <liquid:argon> * 5, <GalacticraftMars:item.itemTier3Rocket>, <liquid:plasma.argon> * 5, [10000, 10000, 10000], 71, 2048);

ArcFurnace.addRecipe([<customthings:item:4>*64, <gregtech:gt.metaitem.01:32464>*28, <gregtech:gt.metaitem.01:32480>*64, <gregtech:gt.metaitem.01:32480>*38], <GalaxySpace:item.Tier4Rocket>, <liquid:oxygen> * 1600, [10000, 10000, 10000, 10000], 1800, 8192);
PlasmaArcFurnace.addRecipe([<customthings:item:4>*64, <gregtech:gt.metaitem.01:32464>*28, <gregtech:gt.metaitem.01:32480>*64, <gregtech:gt.metaitem.01:32480>*38], <liquid:nitrogen> * 16, <GalaxySpace:item.Tier4Rocket>, <liquid:plasma.nitrogen> * 16, [10000, 10000, 10000, 10000], 74, 8192);
PlasmaArcFurnace.addRecipe([<customthings:item:4>*64, <gregtech:gt.metaitem.01:32464>*28, <gregtech:gt.metaitem.01:32480>*64, <gregtech:gt.metaitem.01:32480>*38], <liquid:argon> * 6, <GalaxySpace:item.Tier4Rocket>, <liquid:plasma.argon> * 6, [10000, 10000, 10000, 10000], 74, 8192);

ArcFurnace.addRecipe([<customthings:item:5>*64, <customthings:item:5>*33, <customthings:item:4>*30, <gregtech:gt.metaitem.01:11417>*64], <GalaxySpace:item.Tier5Rocket>, <liquid:oxygen> * 1800, [10000, 10000, 10000, 10000], 2000, 32768);
PlasmaArcFurnace.addRecipe([<customthings:item:5>*64, <customthings:item:5>*33, <customthings:item:4>*30, <gregtech:gt.metaitem.01:11417>*64], <liquid:nitrogen> * 18, <GalaxySpace:item.Tier5Rocket>, <liquid:plasma.nitrogen> * 18, [10000, 10000, 10000, 10000], 77, 32768);
PlasmaArcFurnace.addRecipe([<customthings:item:5>*64, <customthings:item:5>*33, <customthings:item:4>*30, <gregtech:gt.metaitem.01:11417>*64], <liquid:argon> * 7, <GalaxySpace:item.Tier5Rocket>, <liquid:plasma.argon> * 7, [10000, 10000, 10000, 10000], 77, 32768);

ArcFurnace.addRecipe([<customthings:item:6>*64, <customthings:item:6>*64, <customthings:item:5>*56, <gregtech:gt.metaitem.01:14975>*21], <GalaxySpace:item.Tier6Rocket>, <liquid:oxygen> * 2000, [10000, 10000, 10000, 10000], 2200, 131072);
PlasmaArcFurnace.addRecipe([<customthings:item:6>*64, <customthings:item:6>*64, <customthings:item:5>*56, <gregtech:gt.metaitem.01:14975>*21], <liquid:nitrogen> * 20, <GalaxySpace:item.Tier6Rocket>, <liquid:plasma.nitrogen> * 20, [10000, 10000, 10000, 10000], 80, 131072);
PlasmaArcFurnace.addRecipe([<customthings:item:6>*64, <customthings:item:6>*64, <customthings:item:5>*56, <gregtech:gt.metaitem.01:14975>*21], <liquid:argon> * 8, <GalaxySpace:item.Tier6Rocket>, <liquid:plasma.argon> * 8, [10000, 10000, 10000, 10000], 80, 131072);

ArcFurnace.addRecipe([<customthings:item:7>*64, <customthings:item:7>*64, <customthings:item:7>*49, <customthings:item:6>*50], <GalaxySpace:item.Tier7Rocket>, <liquid:oxygen> * 2200, [10000, 10000, 10000, 10000], 2400, 524288);
PlasmaArcFurnace.addRecipe([<customthings:item:7>*64, <customthings:item:7>*64, <customthings:item:7>*49, <customthings:item:6>*50], <liquid:nitrogen> * 22, <GalaxySpace:item.Tier7Rocket>, <liquid:plasma.nitrogen> * 22, [10000, 10000, 10000, 10000], 83, 524288);
PlasmaArcFurnace.addRecipe([<customthings:item:7>*64, <customthings:item:7>*64, <customthings:item:7>*49, <customthings:item:6>*50], <liquid:argon> * 9, <GalaxySpace:item.Tier7Rocket>, <liquid:plasma.argon> * 9, [10000, 10000, 10000, 10000], 83, 524288);

ArcFurnace.addRecipe([<customthings:item:8>*64, <customthings:item:8>*64, <customthings:item:8>*64, <customthings:item:7>*60], <GalaxySpace:item.Tier8Rocket>, <liquid:oxygen> * 2400, [10000, 10000, 10000, 10000], 2600, 2097152);
PlasmaArcFurnace.addRecipe([<customthings:item:8>*64, <customthings:item:8>*64, <customthings:item:8>*64, <customthings:item:7>*60], <liquid:nitrogen> * 24, <GalaxySpace:item.Tier8Rocket>, <liquid:plasma.nitrogen> * 24, [10000, 10000, 10000, 10000], 86, 2097152);
PlasmaArcFurnace.addRecipe([<customthings:item:8>*64, <customthings:item:8>*64, <customthings:item:8>*64, <customthings:item:7>*60], <liquid:argon> * 10, <GalaxySpace:item.Tier8Rocket>, <liquid:plasma.argon> * 10, [10000, 10000, 10000, 10000], 86, 2097152);

//Mixer
Mixer.addRecipe(<customthings:item:120>*16, null, [<ore:dustNeutronium>*16], <liquid:plasma.helium> * 2304, 3600, 122880);
Mixer.addRecipe(null, <liquid:biomediumraw>*4000, [<ore:dustMysteriousCrystal>*16, <ore:dustCosmicNeutronium>*4, <customthings:item:32>, <gregtech:gt.metaitem.01:401>*0], <liquid:bacteria> * 4000, 300, 500000);
Mixer.addRecipe(null, <liquid:biomediumraw>*1000, [<ore:dustMysteriousCrystal>*4, <ore:dustCosmicNeutronium>, <customthings:item:141>, <gregtech:gt.metaitem.01:401>*0], <liquid:bacterialsludge> * 1000, 100, 500000);

ChemicalReactor.addRecipe(<gregtech:gt.metaitem.03:32122>*16, null, <gregtech:gt.metaitem.03:32121>*16, <customthings:item:32>, <liquid:molten.neutronium> * 144, 3000, 1887437);
ChemicalReactor.addRecipe(<gregtech:gt.metaitem.03:32122>*4, null, <gregtech:gt.metaitem.03:32121>*4, <customthings:item:141>, <liquid:molten.infuscolium> * 144, 2000, 1887437);

// === ASP
recipes.addShaped(<customthings:item:113>, [
[<ore:screwInconel792>,<GalacticraftCore:item.basicItem:8>,<ore:screwInconel792>],
[<GalacticraftCore:item.basicItem:8>, <AdvancedSolarPanel:asp_crafting_items:8>, <GalacticraftCore:item.basicItem:8>],
[<ore:screwInconel792>, <GalacticraftCore:item.basicItem:8>,<ore:screwInconel792>]]);
recipes.addShaped(<customthings:item:114>, [
[<ore:screwHastelloyN>,<GalacticraftMars:item.itemBasicAsteroids:6>,<ore:screwHastelloyN>],
[<GalacticraftMars:item.itemBasicAsteroids:6>, <customthings:item:113>, <GalacticraftMars:item.itemBasicAsteroids:6>],
[<ore:screwHastelloyN>, <GalacticraftMars:item.itemBasicAsteroids:6>,<ore:screwHastelloyN>]]);
recipes.addShaped(<customthings:item:115>, [
[<ore:screwZeron100>,<GalacticraftCore:item.meteoricIronIngot:1>,<ore:screwZeron100>],
[<GalacticraftCore:item.meteoricIronIngot:1>, <customthings:item:114>, <GalacticraftCore:item.meteoricIronIngot:1>],
[<ore:screwZeron100>, <GalacticraftCore:item.meteoricIronIngot:1>,<ore:screwZeron100>]]);
recipes.addShaped(<customthings:item:116>, [
[<ore:screwArceusAlloy2B>,<GalacticraftMars:item.null:5>,<ore:screwArceusAlloy2B>],
[<GalacticraftMars:item.null:5>, <customthings:item:115>, <GalacticraftMars:item.null:5>],
[<ore:screwArceusAlloy2B>, <GalacticraftMars:item.null:5>,<ore:screwArceusAlloy2B>]]);
recipes.addShaped(<customthings:item:117>, [
[<ore:screwTitansteel>,<customthings:item:101>,<ore:screwTitansteel>],
[<customthings:item:101>, <customthings:item:116>, <customthings:item:101>],
[<ore:screwTitansteel>, <customthings:item:101>,<ore:screwTitansteel>]]);
recipes.addShaped(<customthings:item:118>, [
[<ore:screwPikyonium64B>,<customthings:item:75>,<ore:screwPikyonium64B>],
[<customthings:item:75>, <customthings:item:117>, <customthings:item:75>],
[<ore:screwPikyonium64B>, <customthings:item:75>,<ore:screwPikyonium64B>]]);
recipes.addShaped(<customthings:item:119>, [
[<ore:screwQuantum>,<ore:plateTriplePhoenixite>,<ore:screwQuantum>],
[<customthings:item:99>, <customthings:item:118>, <customthings:item:99>],
[<ore:screwQuantum>, <ore:plateTriplePhoenixite>,<ore:screwQuantum>]]);

//Blast Furnace
BlastFurnace.addRecipe([<gregtech:gt.metaitem.01:12129>], <liquid:argon> * 1000, [<customthings:item:120>, <gregtech:gt.integrated_circuit:11>*0], 5000,  500000, 9000);

//Industrial Frame
recipes.addShaped(<customthings:item:127>, [
[<ore:plateIncoloyMA956>,<ore:plateIncoloyMA956>,<ore:plateIncoloyMA956>],
[<ore:stickLongIncoloyDS>, <ore:frameGtTantalloy61>, <ore:stickLongIncoloyDS>],
[<ore:stickLongIncoloyDS>, <ore:stickLongIncoloyDS>,<ore:stickLongIncoloyDS>]]);

// --- MORE COAL
Compressor.addRecipe(<customthings:block0>, <gregtech:gt.blockgem3:4> * 9);
Compressor.addRecipe(<customthings:block0:1>, <customthings:block0> * 9);
Compressor.addRecipe(<customthings:block0:2>, <customthings:block0:1> * 9);
Compressor.addRecipe(<customthings:block0:3>, <customthings:block0:2> * 9);
Compressor.addRecipe(<customthings:block0:4>, <customthings:block0:3> * 9);

Compressor.addRecipe(<customthings:block0:5>, <minecraft:coal_block> * 9);
Compressor.addRecipe(<customthings:block0:6>, <customthings:block0:5> * 9);
Compressor.addRecipe(<customthings:block0:7>, <customthings:block0:6> * 9);
Compressor.addRecipe(<customthings:block0:8>, <customthings:block0:7> * 9);
Compressor.addRecipe(<customthings:block0:9>, <customthings:block0:8> * 9);

Compressor.addRecipe(<customthings:block0:10>, <Railcraft:cube> * 9);
Compressor.addRecipe(<customthings:block0:11>, <customthings:block0:10> * 9);
Compressor.addRecipe(<customthings:block0:12>, <customthings:block0:11> * 9);
Compressor.addRecipe(<customthings:block0:13>, <customthings:block0:12> * 9);
Compressor.addRecipe(<customthings:block0:14>, <customthings:block0:13> * 9);

furnace.setFuel(<customthings:block0>, 160000);
furnace.setFuel(<customthings:block0:1>, 1600000);
furnace.setFuel(<customthings:block0:2>, 16000000);
furnace.setFuel(<customthings:block0:3>, 160000000);
furnace.setFuel(<customthings:block0:4>, 1600000000);

furnace.setFuel(<customthings:block0:5>, 160000);
furnace.setFuel(<customthings:block0:6>, 1600000);
furnace.setFuel(<customthings:block0:7>, 16000000);
furnace.setFuel(<customthings:block0:8>, 160000000);
furnace.setFuel(<customthings:block0:9>, 1600000000);

furnace.setFuel(<customthings:block0:10>, 320000);
furnace.setFuel(<customthings:block0:11>, 3200000);
furnace.setFuel(<customthings:block0:12>, 32000000);
furnace.setFuel(<customthings:block0:13>, 320000000);
furnace.setFuel(<customthings:block0:14>, 3200000000);

//OutputArray, OutputFluid, InputStack, InputCell, InputFluid, OutputArrayChances, Time in Ticks, EnergyUsage
Electrolyzer.addRecipe([<gregtech:gt.metaitem.01:2327>, <gregtech:gt.metaitem.01:2326> * 3, <gregtech:gt.metaitem.01:2324> * 13,<gregtech:gt.metaitem.01:2085>*16,<gregtech:gt.metaitem.01:2028>*19], <liquid:radon>*4000,  <gregtech:gt.metaitem.01:2071>*56, null, null, [10000, 10000, 10000, 10000, 10000], 1000, 30720);
Electrolyzer.addRecipe([<gregtech:gt.metaitem.01:2083>*4, <gregtech:gt.metaitem.01:2084> * 4, <gregtech:gt.metaitem.01:2047> * 7,<gregtech:gt.metaitem.01:2034>*13,<gregtech:gt.metaitem.01:2019>*17], <liquid:argon>*8000,  <gregtech:gt.metaitem.01:2066>*53, null, null, [10000, 10000, 10000, 10000, 10000], 600, 1024);
