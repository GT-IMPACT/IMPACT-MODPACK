import mods.nei.NEI;
import minetweaker.oredict.IOreDictEntry;
import minetweaker.item.IItemStack;
import mods.ic2.Compressor;
import mods.gregtech.AlloySmelter;
import mods.gregtech.Assembler;
import mods.gregtech.BlastFurnace;
import mods.gregtech.ChemicalBath;
import mods.gregtech.Centrifuge;
import mods.gregtech.FluidExtractor;
import mods.gregtech.ForgeHammer;
import mods.gregtech.FormingPress;
import mods.gregtech.PrecisionLaser;
import mods.gregtech.Pulverizer;


var CokeOvenBrick = <customthings:item:103>;
var UnfiredClayBrick = <customthings:item:104>;
var UnfiredCokeOvenBrick = <customthings:item:105>;
var UnfiredSearedBrick = <customthings:item:106>;

// --- Wooden Brick Form
recipes.addShapeless(<customthings:item:107>, [<ore:craftingToolKnife>, <TConstruct:blankPattern>]);
val WoodenBrickForm = <customthings:item:107>.transformReplace(<customthings:item:107>);

// --- Bricks
recipes.addShaped(UnfiredClayBrick*8, [
[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
[<minecraft:clay_ball>, WoodenBrickForm, <minecraft:clay_ball>],
[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]]);

recipes.addShaped(UnfiredSearedBrick*8, [
[<TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>],
[<TConstruct:CraftedSoil:1>, WoodenBrickForm, <TConstruct:CraftedSoil:1>],
[<TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>]]);

recipes.addShaped(UnfiredCokeOvenBrick*3, [
[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
[<ore:sand>, WoodenBrickForm, <ore:sand>],
[<ore:sand>, <ore:sand>, <ore:sand>]]);

furnace.remove(<minecraft:brick>);
furnace.remove(<TConstruct:materials:2>);
furnace.addRecipe(CokeOvenBrick, UnfiredCokeOvenBrick);
furnace.addRecipe(<minecraft:brick>, UnfiredClayBrick);
furnace.addRecipe(<TConstruct:materials:2>, UnfiredSearedBrick);
AlloySmelter.addRecipe(<minecraft:brick>, <minecraft:clay_ball>, <gregtech:gt.metaitem.01:32306> * 0, 200, 16);

recipes.remove(<gregtech:gt.metaitem.01:32300>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:gt.metaitem.01:32300>, <liquid:steel.molten> * 576, null, false, 80);
Assembler.addRecipe(<gregtech:gt.metaitem.01:32300>, <ore:plateSteel>*4, <gregtech:gt.integrated_circuit:4>*0, null, 40, 8);

//Concrete Bucket
recipes.addShaped(<customthings:item:108>, [
[<ore:dustCalcite>,<minecraft:bucket>,<ore:dustStone>],
[<ore:dustCalcite>,<minecraft:water_bucket>.transformReplace(<minecraft:bucket>),<ore:dustClay>],
[null,<ore:sand>,null]]);
recipes.addShaped(<customthings:item:108>, [
[<ore:dustCalcite>,<minecraft:bucket>,<ore:dustStone>],
[<ore:dustCalcite>,<IguanaTweaksTConstruct:clayBucketWater>.transformReplace(<IguanaTweaksTConstruct:clayBucketFired>),<ore:dustClay>],
[null,<ore:sand>,null]]);

//Firebrick
recipes.remove(<gregtech:gt.blockcasings4:15>);
recipes.addShaped(<gregtech:gt.blockcasings4:15>*2, [
[<gregtech:gt.metaitem.01:32111>,<ore:dustGypsum>,<gregtech:gt.metaitem.01:32111>],
[<gregtech:gt.metaitem.01:32111>,<customthings:item:108>.transformReplace(<minecraft:bucket>),<gregtech:gt.metaitem.01:32111>],
[<gregtech:gt.metaitem.01:32111>,<ore:dustGypsum>,<gregtech:gt.metaitem.01:32111>]]);

//Advanced Coke Oven
BlastFurnace.addRecipe([<customthings:item:125>], <liquid:oxygen> * 1000, [<minecraft:netherbrick>, <gregtech:gt.integrated_circuit:11>*0], 600, 120, 1200);
BlastFurnace.addRecipe([<customthings:item:122>*2], <liquid:oxygen> * 1000, [<customthings:item:126>, <customthings:item:103>], 1200, 120, 1200);
ChemicalBath.addRecipe([<customthings:item:126>], <customthings:item:125>, <liquid:ic2coolant> * 1000, [10000], 200, 30);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1805>, <gregtech:gt.metaitem.01:1805>, <gregtech:gt.metaitem.01:1837>, <gregtech:gt.metaitem.01:1625>], null, <customthings:item:124>, null, null, [10000, 9000, 7500, 6500], 400, 30);
Centrifuge.addRecipe([<customthings:item:124>, <gregtech:gt.metaitem.01:1807>*2, <gregtech:gt.metaitem.01:1837>, <gregtech:gt.metaitem.01:625>], null, <customthings:item:123>, null, null, [10000, 9000, 7500, 6500], 400, 120);

Pulverizer.addRecipe([<customthings:item:124>,<customthings:item:124>,<customthings:item:124>,<customthings:item:124>], <customthings:item:103>, [10000, 2500, 750, 500], 200, 30);
Pulverizer.addRecipe([<customthings:item:123>,<customthings:item:123>,<customthings:item:123>,<customthings:item:123>], <customthings:item:122>, [10000, 2500, 750, 500], 200, 120);

// --- Nano Suite
Assembler.addRecipe(<customthings:item:130>, <IC2:itemPartCarbonPlate>*5, <gregtech:gt.integrated_circuit:5>*0, 500, 120);
Assembler.addRecipe(<customthings:item:129>, <IC2:itemPartCarbonPlate>*8, <gregtech:gt.integrated_circuit:8>*0, 800, 120);
Assembler.addRecipe(<customthings:item:131>, <IC2:itemPartCarbonPlate>*7, <gregtech:gt.integrated_circuit:7>*0, 700, 120);
Assembler.addRecipe(<customthings:item:128>, <IC2:itemPartCarbonPlate>*4, <gregtech:gt.integrated_circuit:4>*0, 400, 120);

Assembler.addRecipe(<customthings:item:132>, <customthings:item:130>, <IC2:itemNightvisionGoggles:*>, 600, 256);

/*/ --- Quantum Suite
Assembler.addRecipe(<customthings:item:139>, <customthings:item:65>*5, <gregtech:gt.integrated_circuit:5>*0, 500, 1920);
Assembler.addRecipe(<customthings:item:136>, <customthings:item:65>*8, <gregtech:gt.integrated_circuit:8>*0, 800, 1920);
Assembler.addRecipe(<customthings:item:138>, <customthings:item:65>*7, <gregtech:gt.integrated_circuit:7>*0, 700, 1920);
Assembler.addRecipe(<customthings:item:135>, <customthings:item:65>*4, <gregtech:gt.integrated_circuit:4>*0, 400, 1920);
Assembler.addRecipe(<customthings:item:137>, [<customthings:item:139>, <IC2:itemArmorNanoHelmet:*>, <ore:lensReinforcedGlass>*8], <liquid:molten.thallium> * 576, 800, 4096);
*/
// --- Nano Crystal
PrecisionLaser.addRecipe(<customthings:item:133>, <IC2:itemBatCrystal:*>, <ore:craftingLensGreen> * 0, 600, 480);

// --- Quantum Crystal
PrecisionLaser.addRecipe(<customthings:item:134>, <IC2:itemBatLamaCrystal:*>, <ore:craftingLensGreen> * 0, 800, 7680);

// --- Nano Jetpack
//Assembler.addRecipe(<customthings:item:140>, <IC2:itemArmorNanoChestplate:*>, <IC2:itemArmorJetpackElectric:*>, 600, 480);

// --- Advanced Cooling Core
recipes.addShaped(<customthings:item:142>, [
[<customthings:item:100>,<ore:rotorPikyonium64B>,<customthings:item:100>],
[<gregtech:gt.neutronreflector>,<gregtech:gt.540k_Ledox_Coolantcell>,<gregtech:gt.neutronreflector>],
[<ore:plateDoubleTriniumNaquadahCarbonite>, <ore:rotorPikyonium64B>, <ore:plateDoubleTriniumNaquadahCarbonite>]]);
recipes.addShaped(<customthings:item:142>, [
[<ore:plateDoubleTriniumNaquadahCarbonite>, <ore:rotorPikyonium64B>, <ore:plateDoubleTriniumNaquadahCarbonite>],
[<gregtech:gt.neutronreflector>,<gregtech:gt.540k_Ledox_Coolantcell>,<gregtech:gt.neutronreflector>],
[<customthings:item:100>,<ore:rotorPikyonium64B>,<customthings:item:100>]]);

// --- Chips
FormingPress.addRecipe(<customthings:item:144>, <gregtech:gt.metaitem.01:32714>, <customthings:item:166>, 300, 1920);
FormingPress.addRecipe(<customthings:item:143>, <customthings:item:153>, <customthings:item:166>, 300, 480);
FormingPress.addRecipe(<customthings:item:145>, <customthings:item:154>, <customthings:item:167>, 300, 1024);
FormingPress.addRecipe(<customthings:item:147>, <customthings:item:156>, <customthings:item:167>, 300, 4096);
FormingPress.addRecipe(<customthings:item:157>, <customthings:item:155>, <customthings:item:168>, 300, 480);
FormingPress.addRecipe(<customthings:item:146>, <gregtech:gt.metaitem.01:32714>, <customthings:item:167>, 300, 4096);
FormingPress.addRecipe(<customthings:item:159>, <gregtech:gt.metaitem.01:32714>, <customthings:item:168>, 300, 480);
FormingPress.addRecipe(<customthings:item:162>, <gregtech:gt.metaitem.01:32713>, <customthings:item:170>, 300, 7680);
FormingPress.addRecipe(<customthings:item:163>, <gregtech:gt.metaitem.01:32714>, <customthings:item:170>, 300, 4096);
FormingPress.addRecipe(<customthings:item:164>, <gregtech:gt.metaitem.01:32713>, <customthings:item:166>, 300, 7680);

PrecisionLaser.addRecipe(<customthings:item:153>, <ore:plateDiamond>*4, <ore:craftingLensWhite> * 0, 400, 1920);
PrecisionLaser.addRecipe(<customthings:item:154>, <IC2:itemBatCrystal:*>, <ore:craftingLensRed> * 0, 600, 4096);
PrecisionLaser.addRecipe(<customthings:item:156>, <ore:gemExquisiteGarnetYellow>, <ore:craftingLensYellow> * 0, 1200, 30720);
PrecisionLaser.addRecipe(<customthings:item:155>, <ore:plateGold>*4, <ore:craftingLensYellow> * 0, 300, 480);

Assembler.addRecipe(<customthings:item:158>, <appliedenergistics2:item.ItemMultiMaterial:22>, <customthings:item:157>, 100, 480);
Assembler.addRecipe(<customthings:item:151>, <appliedenergistics2:item.ItemMultiMaterial:24>, <customthings:item:143>, 100, 1920);
Assembler.addRecipe(<customthings:item:152>, <appliedenergistics2:item.ItemMultiMaterial:24>, <customthings:item:145>, 100, 4096);
Assembler.addRecipe(<customthings:item:150>, <appliedenergistics2:item.ItemMultiMaterial:24>, <customthings:item:147>, 100, 30720);
Assembler.addRecipe(<customthings:item:148>, <appliedenergistics2:item.ItemMultiMaterial:24>, <customthings:item:144>, 100, 1920);
Assembler.addRecipe(<customthings:item:149>, <appliedenergistics2:item.ItemMultiMaterial:24>, <customthings:item:146>, 100, 4096);
Assembler.addRecipe(<customthings:item:160>, <appliedenergistics2:item.ItemMultiMaterial:24>, <customthings:item:159>, 100, 480);
Assembler.addRecipe(<customthings:item:161>, <appliedenergistics2:item.ItemMultiMaterial:24>, <customthings:item:163>, 100, 4096);

PrecisionLaser.addRecipe(<customthings:item:172>, <ore:plateRedstone>, <ore:craftingLensRed> * 0, 50, 120);
FormingPress.addRecipe(<customthings:item:170>*2, <customthings:item:172>, <minecraft:ender_pearl>, 200, 120);
FormingPress.addRecipe(<customthings:item:171>, <customthings:item:172>, <ore:plateNetherQuartz>, 300, 120);
FormingPress.addRecipe(<customthings:item:169>, <customthings:item:172>, <ore:plateIron>, 100, 120);
FormingPress.addRecipe(<customthings:item:168>, <customthings:item:172>, <ore:plateGold>, 200, 120);
FormingPress.addRecipe(<customthings:item:166>, <customthings:item:172>, <ore:plateDiamond>, 100, 480);
FormingPress.addRecipe(<customthings:item:167>, <customthings:item:172>, <ore:plateEmerald> , 150, 480);

// --- Clear Glass
Pulverizer.addRecipe([<customthings:item:165>], <TConstruct:GlassBlock>, [10000], 100, 8);
ForgeHammer.addRecipe(<customthings:item:165>, <TConstruct:GlassBlock>, 40, 16);
FluidExtractor.addRecipe(null, <customthings:item:165> , <liquid:molten.glass> * 144, 10000, 50, 31);
Compressor.addRecipe(<gregtech:gt.metaitem.01:2890>, <customthings:item:165>);

// --- Neutron Reflector
recipes.remove(<IC2:reactorReflectorThick:1>);
recipes.remove(<gregtech:gt.neutronreflector>);
recipes.addShaped(<customthings:item:176>, [
[<IC2:reactorReflector:1>,<IC2:reactorReflector:1>,<IC2:reactorReflector:1>],
[<IC2:reactorReflector:1>,<ore:craftingToolWrench>,<IC2:reactorReflector:1>]]);
Assembler.addRecipe(<IC2:reactorReflectorThick:1>, [<customthings:item:176>, <ore:plateDoubleBeryllium>*2, <ore:plateHafnium>], null, 600, 64);
Assembler.addRecipe(<IC2:reactorReflectorThick:1>, [<customthings:item:176>, <ore:plateDoubleTungstenCarbide>, <ore:plateHafnium>], null, 600, 64);
recipes.addShaped(<customthings:item:175>, [
[<IC2:reactorReflectorThick:1>,<IC2:reactorReflectorThick:1>,<IC2:reactorReflectorThick:1>],
[<IC2:reactorReflectorThick:1>,<ore:craftingToolWrench>,<IC2:reactorReflectorThick:1>],
[<IC2:reactorReflectorThick:1>,<IC2:reactorReflectorThick:1>,<IC2:reactorReflectorThick:1>]]);
Assembler.addRecipe(<gregtech:gt.neutronreflector>, <customthings:item:175>, <IC2:itemPartIridium>, 1200, 256);


//Space
//00 Earth
ChemicalBath.addRecipe([<customthings:item:184>], <ore:dustStone>*64, <liquid:glue> * 1000, [10000], 200, 8);
Assembler.addRecipe(<customthings:item:204>, [<customthings:item:184>*64], <liquid:molten.palladium> * 288, 1200, 64);

//01 Moon
ChemicalBath.addRecipe([<customthings:item:192>], <ore:dustMoon>*64, <liquid:molten.plastic> * 144, [10000], 200, 20);
Assembler.addRecipe(<customthings:item:205>, [<customthings:item:192>*64], <liquid:molten.palladium> * 288, 1200, 256);

//02 Марс, Деймос, Фобос
ChemicalBath.addRecipe([<customthings:item:201>], <ore:dustMars>*64, <liquid:molten.polyvinylchloride> * 144, [10000], 200, 50);
ChemicalBath.addRecipe([<customthings:item:183>], <customthings:item:43>*64, <liquid:molten.polyvinylchloride> * 144, [10000], 200, 50);
ChemicalBath.addRecipe([<customthings:item:194>], <customthings:item:55>*64, <liquid:molten.polyvinylchloride> * 144, [10000], 200, 50);
Assembler.addRecipe(<customthings:item:206>, [<customthings:item:201>*64,<customthings:item:183>*64,<customthings:item:194>*64], <liquid:molten.palladium> * 288, 1200, 1024);

//03 Церера, Европа, Ганимед
ChemicalBath.addRecipe([<customthings:item:182>], <customthings:item:42>*64, <liquid:molten.polystyrene> * 144, [10000], 200, 125);
ChemicalBath.addRecipe([<customthings:item:177>], <customthings:item:47>*64, <liquid:molten.polystyrene> * 144, [10000], 200, 125);
ChemicalBath.addRecipe([<customthings:item:186>], <customthings:item:48>*64, <liquid:molten.polystyrene> * 144, [10000], 200, 125);
ChemicalBath.addRecipe([<customthings:item:180>], <customthings:item:81>*64, <liquid:molten.polystyrene> * 144, [10000], 200, 125);
ChemicalBath.addRecipe([<customthings:item:203>], <ore:dustAsteroid>*64, <liquid:molten.polystyrene> * 144, [10000], 200, 125);
Assembler.addRecipe(<customthings:item:207>, [<customthings:item:182>*64,<customthings:item:180>*64,<customthings:item:203>*64,<customthings:item:177>*64,<customthings:item:186>*64], <liquid:molten.palladium> * 288, 1200, 4096);

//04 Ио, Венера, Меркурий
ChemicalBath.addRecipe([<customthings:item:189>], <customthings:item:50>*64, <liquid:molten.polytetrafluoroethylene> * 144, [10000], 200, 312);
ChemicalBath.addRecipe([<customthings:item:200>], <customthings:item:64>*64, <liquid:molten.polytetrafluoroethylene> * 144, [10000], 200, 312);
ChemicalBath.addRecipe([<customthings:item:191>], <customthings:item:52>*64, <liquid:molten.polytetrafluoroethylene> * 144, [10000], 200, 312);
Assembler.addRecipe(<customthings:item:208>, [<customthings:item:189>*64,<customthings:item:200>*64,<customthings:item:191>*64], <liquid:molten.palladium> * 288, 1200, 16384);

//05 Энцеладус, Титан, Миранда, Оберон
ChemicalBath.addRecipe([<customthings:item:188>], <customthings:item:45>*64, <liquid:molten.polyphenylenesulfide> * 144, [10000], 200, 780);
ChemicalBath.addRecipe([<customthings:item:197>], <customthings:item:61>*64, <liquid:molten.polyphenylenesulfide> * 144, [10000], 200, 780);
ChemicalBath.addRecipe([<customthings:item:185>], <customthings:item:53>*64, <liquid:molten.polyphenylenesulfide> * 144, [10000], 200, 780);
ChemicalBath.addRecipe([<customthings:item:193>], <customthings:item:54>*64, <liquid:molten.polyphenylenesulfide> * 144, [10000], 200, 780);
Assembler.addRecipe(<customthings:item:209>, [<customthings:item:188>*64,<customthings:item:197>*64,<customthings:item:193>*64,<customthings:item:185>*64], <liquid:molten.palladium> * 288, 1200, 65536);

//06 Протеус, Тритон
ChemicalBath.addRecipe([<customthings:item:202>], <customthings:item:58>*64, <liquid:molten.polybenzimidazole> * 144, [10000], 200, 1950);
ChemicalBath.addRecipe([<customthings:item:198>], <customthings:item:62>*64, <liquid:molten.polybenzimidazole> * 144, [10000], 200, 1950);
Assembler.addRecipe(<customthings:item:210>, [<customthings:item:202>*64,<customthings:item:198>*64], <liquid:molten.palladium> * 288, 1200, 262144);

//07 Плутон, Хаумея, МакеМаке
ChemicalBath.addRecipe([<customthings:item:195>], <customthings:item:57>*64, <liquid:molten.polybenzimidazole> * 144, [10000], 200, 4875);
ChemicalBath.addRecipe([<customthings:item:187>], <customthings:item:49>*64, <liquid:molten.polybenzimidazole> * 144, [10000], 200, 4875);
ChemicalBath.addRecipe([<customthings:item:190>], <customthings:item:51>*64, <liquid:molten.polybenzimidazole> * 144, [10000], 200, 4875);
Assembler.addRecipe(<customthings:item:211>, [<customthings:item:195>*64,<customthings:item:190>*64,<customthings:item:187>*64], <liquid:molten.palladium> * 288, 1200, 1048576);

//08 Барнарда, Тау Кита, Центавра
ChemicalBath.addRecipe([<customthings:item:179>], <customthings:item:34>*64, <liquid:molten.radoxpoly> * 144, [10000], 200, 12188);
ChemicalBath.addRecipe([<customthings:item:178>], <customthings:item:33>*64, <liquid:molten.radoxpoly> * 144, [10000], 200, 12188);
ChemicalBath.addRecipe([<customthings:item:181>], <customthings:item:40>*64, <liquid:molten.radoxpoly> * 144, [10000], 200, 12188);
ChemicalBath.addRecipe([<customthings:item:196>], <customthings:item:59>*64, <liquid:molten.radoxpoly> * 144, [10000], 200, 12188);
ChemicalBath.addRecipe([<customthings:item:199>], <customthings:item:63>*64, <liquid:molten.radoxpoly> * 144, [10000], 200, 12188);


// --- Schematics T1
Assembler.addRecipe(<spartakcore:item.SchematicsTier1>, [<customthings:item:204>, <customthings:item:1>, <GalacticraftCore:item.heavyPlating>], null, 1000, 256);

// --- Schematics T2
Assembler.addRecipe(<spartakcore:item.SchematicsTier2>, [<customthings:item:205>, <customthings:item:1>, <GalacticraftMars:item.null:3>], null, 1600, 480);

// --- Schematics T3
Assembler.addRecipe(<spartakcore:item.SchematicsTier3>, [<customthings:item:206>*2, <customthings:item:1>, <GalacticraftMars:item.itemBasicAsteroids>], null, 2200, 1920);

// --- Schematics T4
Assembler.addRecipe(<spartakcore:item.SchematicsTier4>, [<customthings:item:207>*4, <customthings:item:19>, <GalaxySpace:item.HeavyDutyPlate4>], null, 2800, 4096);

// --- Schematics T5
Assembler.addRecipe(<spartakcore:item.SchematicsTier5>, [<customthings:item:208>*8, <customthings:item:19>, <GalaxySpace:item.HeavyDutyPlate5>], null, 3400, 16384);

// --- Schematics T6
Assembler.addRecipe(<spartakcore:item.SchematicsTier6>, [<customthings:item:209>*16, <customthings:item:19>, <GalaxySpace:item.HeavyDutyPlate6>], null, 4000, 65536);

// --- Schematics T7
Assembler.addRecipe(<spartakcore:item.SchematicsTier7>, [<customthings:item:210>*32, <customthings:item:21>, <GalaxySpace:item.HeavyDutyPlate7>], null, 4600, 262144);

// --- Schematics T8
Assembler.addRecipe(<spartakcore:item.SchematicsTier8>, [<customthings:item:211>*64, <customthings:item:21>, <customthings:item:102>], null, 5200, 1048576);

//Assembler.addRecipe(<OpenComputers:assembler>, [<gregtech:gt.metaitem.03:32102>, <gregtech:gt.blockcasings:3>, <ore:plateAluminium>*2, <gregtech:gt.metaitem.01:32650>*3, <OpenComputers:item:25>, <gregtech:gt.integrated_circuit:5>*0], <liquid:molten.plastic> * 144, 800, 64);

recipes.addShaped(<OpenComputers:assembler>, [
[<gregtech:gt.metaitem.01:32650>,<gregtech:gt.metaitem.03:32102>,<gregtech:gt.metaitem.01:32650>],
[<ore:plateAluminium>,<gregtech:gt.blockcasings:3>,<ore:plateAluminium>],
[<OpenComputers:item:25>,<gregtech:gt.metaitem.01:32650>,<OpenComputers:item:25>]]);
