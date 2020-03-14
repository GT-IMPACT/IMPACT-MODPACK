#==============#
# CustomThings #
#==============#

#==================================================================#
#Imports
import minetweaker.oredict.IOreDictEntry;
import minetweaker.item.IItemStack;
import mods.gregtech.AlloySmelter;
import mods.gregtech.ArcFurnace;
import mods.gregtech.Assembler;
import mods.gregtech.BlastFurnace;
import mods.gregtech.Centrifuge;
import mods.gregtech.ChemicalBath;
import mods.gregtech.ChemicalReactor;
import mods.gregtech.Electrolyzer;
import mods.gregtech.Extruder;
import mods.gregtech.FluidExtractor;
import mods.gregtech.ForgeHammer;
import mods.gregtech.FormingPress;
import mods.gregtech.ImplosionCompressor;
import mods.gregtech.Mixer;
import mods.gregtech.PlasmaArcFurnace;
import mods.gregtech.PrecisionLaser;
import mods.gregtech.Pulverizer;
import mods.gregtech.VacuumFreezer;
import mods.ic2.Compressor;
import mods.nei.NEI;

print("Initializing 'CustomThings.zs'...");

#==================================================================#
#Variables
var CokeOvenBrick 			= <gregtech:gt.metaitem.04:32001>;
var UnfiredClayBrick 		= <customthings:item:104>;
var UnfiredCokeOvenBrick 	= <customthings:item:105>;
var UnfiredSearedBrick 		= <customthings:item:106>;

#==================================================================#
# Recipe Adding



#==================================================================#
#Wooden Brick Form
recipes.addShapeless(<customthings:item:107>, [<ore:craftingToolKnife>, <TConstruct:blankPattern>]);
val WoodenBrickForm = <customthings:item:107>.transformReplace(<customthings:item:107>);

#==================================================================#
#Bricks
recipes.addShaped(UnfiredClayBrick*8, [
		[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
		[<minecraft:clay_ball>, WoodenBrickForm, <minecraft:clay_ball>],
		[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
	]
);
recipes.addShaped(UnfiredSearedBrick*8, [
		[<TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>],
		[<TConstruct:CraftedSoil:1>, WoodenBrickForm, <TConstruct:CraftedSoil:1>],
		[<TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>]
	]
);
recipes.addShaped(UnfiredCokeOvenBrick*3, [
		[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
		[<ore:sand>, WoodenBrickForm, <ore:sand>],
		[<ore:sand>, <ore:sand>, <ore:sand>]
	]
);
furnace.remove(<minecraft:brick>);
furnace.remove(<TConstruct:materials:2>);
furnace.addRecipe(CokeOvenBrick, UnfiredCokeOvenBrick);
furnace.addRecipe(<minecraft:brick>, UnfiredClayBrick);
furnace.addRecipe(<TConstruct:materials:2>, UnfiredSearedBrick);
AlloySmelter.addRecipe(<minecraft:brick>, <minecraft:clay_ball>, <gregtech:gt.metaitem.01:32306> * 0, 200, 16);

#==================================================================#
#Concrete Bucket
recipes.addShaped(<customthings:item:108>, [
		[<ore:dustCalcite>,<minecraft:bucket>,<ore:dustStone>],
		[<ore:dustCalcite>,<minecraft:water_bucket>.transformReplace(<minecraft:bucket>),<ore:dustClay>],
		[null,<ore:sand>,null]
	]
);
recipes.addShaped(<customthings:item:108>, [
		[<ore:dustCalcite>,<minecraft:bucket>,<ore:dustStone>],
		[<ore:dustCalcite>,<IguanaTweaksTConstruct:clayBucketWater>.transformReplace(<IguanaTweaksTConstruct:clayBucketFired>),<ore:dustClay>],
		[null,<ore:sand>,null]
	]
);

#==================================================================#
#Advanced Coke Oven
BlastFurnace.addRecipe([<customthings:item:125>], <liquid:oxygen> * 1000, [<minecraft:netherbrick>, <gregtech:gt.integrated_circuit:11>*0], 600, 120, 1200);
BlastFurnace.addRecipe([<customthings:item:122>*2], <liquid:oxygen> * 1000, [<customthings:item:126>, <gregtech:gt.metaitem.04:32001>], 1200, 120, 1200);
ChemicalBath.addRecipe([<customthings:item:126>], <customthings:item:125>, <liquid:ic2coolant> * 1000, [10000], 200, 30);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1805>, <gregtech:gt.metaitem.01:1805>, <gregtech:gt.metaitem.01:1837>, <gregtech:gt.metaitem.01:1625>], null, <customthings:item:124>, null, null, [10000, 9000, 7500, 6500], 400, 30);
Centrifuge.addRecipe([<customthings:item:124>, <gregtech:gt.metaitem.01:1807>*2, <gregtech:gt.metaitem.01:1837>, <gregtech:gt.metaitem.01:625>], null, <customthings:item:123>, null, null, [10000, 9000, 7500, 6500], 400, 120);

Pulverizer.addRecipe([<customthings:item:124>,<customthings:item:124>,<customthings:item:124>,<customthings:item:124>], <gregtech:gt.metaitem.04:32001>, [10000, 2500, 750, 500], 200, 30);
Pulverizer.addRecipe([<customthings:item:123>,<customthings:item:123>,<customthings:item:123>,<customthings:item:123>], <customthings:item:122>, [10000, 2500, 750, 500], 200, 120);

#==================================================================#
#Nano Suite
Assembler.addRecipe(<customthings:item:130>, <IC2:itemPartCarbonPlate>*5, <gregtech:gt.integrated_circuit:5>*0, 500, 120);
Assembler.addRecipe(<customthings:item:129>, <IC2:itemPartCarbonPlate>*8, <gregtech:gt.integrated_circuit:8>*0, 800, 120);
Assembler.addRecipe(<customthings:item:131>, <IC2:itemPartCarbonPlate>*7, <gregtech:gt.integrated_circuit:7>*0, 700, 120);
Assembler.addRecipe(<customthings:item:128>, <IC2:itemPartCarbonPlate>*4, <gregtech:gt.integrated_circuit:4>*0, 400, 120);

Assembler.addRecipe(<customthings:item:132>, <customthings:item:130>, <IC2:itemNightvisionGoggles:*>, 600, 256);

#==================================================================#
#Advanced Cooling Core
recipes.addShaped(<customthings:item:142>, [
		[<customthings:item:100>,<ore:rotorPikyonium64B>,<customthings:item:100>],
		[<gregtech:gt.neutronreflector>,<gregtech:gt.540k_Ledox_Coolantcell>,<gregtech:gt.neutronreflector>],
		[<ore:plateDoubleTriniumNaquadahCarbonite>, <ore:rotorPikyonium64B>, <ore:plateDoubleTriniumNaquadahCarbonite>]
	]
);
recipes.addShaped(<customthings:item:142>, [
		[<ore:plateDoubleTriniumNaquadahCarbonite>, <ore:rotorPikyonium64B>, <ore:plateDoubleTriniumNaquadahCarbonite>],
		[<gregtech:gt.neutronreflector>,<gregtech:gt.540k_Ledox_Coolantcell>,<gregtech:gt.neutronreflector>],
		[<customthings:item:100>,<ore:rotorPikyonium64B>,<customthings:item:100>]
	]
);

#==================================================================#
#Nano Crystal
PrecisionLaser.addRecipe(<customthings:item:133>, <IC2:itemBatCrystal:*>, <ore:craftingLensGreen> * 0, 600, 480);

#==================================================================#
#Chips
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

#==================================================================#
#Clear Glass
Pulverizer.addRecipe([<customthings:item:165>], <TConstruct:GlassBlock>, [10000], 100, 8);
ForgeHammer.addRecipe(<customthings:item:165>, <TConstruct:GlassBlock>, 40, 16);
FluidExtractor.addRecipe(null, <customthings:item:165> , <liquid:molten.glass> * 144, 10000, 50, 31);
Compressor.addRecipe(<gregtech:gt.metaitem.01:2890>, <customthings:item:165>);

#==================================================================#
#Neutron Reflector
recipes.remove(<IC2:reactorReflectorThick:1>);
recipes.remove(<gregtech:gt.neutronreflector>);
recipes.addShaped(<customthings:item:176>, [
		[<IC2:reactorReflector:1>,<IC2:reactorReflector:1>,<IC2:reactorReflector:1>],
		[<IC2:reactorReflector:1>,<ore:craftingToolWrench>,<IC2:reactorReflector:1>]
	]
);
Assembler.addRecipe(<IC2:reactorReflectorThick:1>, [<customthings:item:176>, <ore:plateDoubleBeryllium>*2, <ore:plateHafnium>], null, 600, 64);
Assembler.addRecipe(<IC2:reactorReflectorThick:1>, [<customthings:item:176>, <ore:plateDoubleTungstenCarbide>, <ore:plateHafnium>], null, 600, 64);
recipes.addShaped(<customthings:item:175>, [
		[<IC2:reactorReflectorThick:1>,<IC2:reactorReflectorThick:1>,<IC2:reactorReflectorThick:1>],
		[<IC2:reactorReflectorThick:1>,<ore:craftingToolWrench>,<IC2:reactorReflectorThick:1>],
		[<IC2:reactorReflectorThick:1>,<IC2:reactorReflectorThick:1>,<IC2:reactorReflectorThick:1>]
	]
);
Assembler.addRecipe(<gregtech:gt.neutronreflector>, <customthings:item:175>, <IC2:itemPartIridium>, 1200, 256);

#==================================================================#
#SpaceBox
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
ChemicalBath.addRecipe([<customthings:item:180>], <customthings:item:81>*64, <liquid:molten.polyvinylchloride> * 144, [10000], 200, 50);
ChemicalBath.addRecipe([<customthings:item:203>], <ore:dustAsteroid>*64, <liquid:molten.polyvinylchloride> * 144, [10000], 200, 50);
Assembler.addRecipe(<customthings:item:206>, [<customthings:item:201>*64,<customthings:item:183>*64,<customthings:item:194>*64], <liquid:molten.palladium> * 288, 1200, 1024);

//03 Церера, Европа, Ганимед
ChemicalBath.addRecipe([<customthings:item:182>], <customthings:item:42>*64, <liquid:molten.polystyrene> * 144, [10000], 200, 125);
ChemicalBath.addRecipe([<customthings:item:177>], <customthings:item:47>*64, <liquid:molten.polystyrene> * 144, [10000], 200, 125);
ChemicalBath.addRecipe([<customthings:item:186>], <customthings:item:48>*64, <liquid:molten.polystyrene> * 144, [10000], 200, 125);
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

#==================================================================#
#Canisters
#Medium Fuel Canister
recipes.addShaped(<customthings:item:16>, [
		[<ore:screwMaragingSteel250>, <ore:craftingToolScrewdriver>, <ore:screwMaragingSteel250>],
		[<customthings:item:31>, <gregtech:gt.metaitem.01:32409>, <customthings:item:2>],
		[<ore:screwMaragingSteel250>, <ore:craftingToolHardHammer>, <ore:screwMaragingSteel250>]
	]
);
#Large Fuel Canister
recipes.addShaped(<customthings:item:12>, [
		[<ore:screwZeron100>, <ore:craftingToolScrewdriver>, <ore:screwZeron100>],
		[<customthings:item:101>, <customthings:item:16>, <customthings:item:100>],
		[<ore:screwZeron100>, <ore:craftingToolHardHammer>, <ore:screwZeron100>]
	]
);
#Extra Large Fuel Canister
recipes.addShaped(<customthings:item:3>, [
		[<ore:screwNeutronium>, <ore:craftingToolScrewdriver>, <ore:screwNeutronium>],
		[<customthings:item:76>, <customthings:item:12>, <customthings:item:72>],
		[<ore:screwNeutronium>, <ore:craftingToolHardHammer>, <ore:screwNeutronium>]
	]
);

#==================================================================#
#Nose Cone
#Heavy Duty Nose Cone Tier 4
recipes.addShaped(<spartakcore:item.HeavyDutyNoseConeTier4>, [
		[<ore:craftingToolScrewdriver>, <GalacticraftMars:item.heavyNoseCone>, <ore:craftingToolHardHammer>],
		[<ore:screwZeron100>, <customthings:item:66>, <ore:screwZeron100>],
		[<customthings:item:66>, <spartakcore:item.HeavyDutyPlateTier4>, <customthings:item:66>]
	]
);
#Heavy Duty Nose Cone Tier 5
recipes.addShaped(<spartakcore:item.HeavyDutyNoseConeTier5>, [
		[<ore:craftingToolScrewdriver>, <spartakcore:item.HeavyDutyNoseConeTier4>, <ore:craftingToolHardHammer>],
		[<ore:screwCinobiteA243>, <customthings:item:11>, <ore:screwCinobiteA243>],
		[<customthings:item:11>, <spartakcore:item.HeavyDutyPlateTier5>, <customthings:item:11>]
	]
);
#Heavy Duty Nose Cone Tier 6
recipes.addShaped(<spartakcore:item.HeavyDutyNoseConeTier6>, [
		[<ore:craftingToolScrewdriver>, <spartakcore:item.HeavyDutyNoseConeTier5>, <ore:craftingToolHardHammer>],
		[<ore:screwAmericium>, <customthings:item:101>, <ore:screwAmericium>],
		[<customthings:item:101>, <spartakcore:item.HeavyDutyPlateTier6>, <customthings:item:101>]
	]
);
#Heavy Duty Nose Cone Tier 7
recipes.addShaped(<spartakcore:item.HeavyDutyNoseConeTier7>, [
		[<ore:craftingToolScrewdriver>, <spartakcore:item.HeavyDutyNoseConeTier6>, <ore:craftingToolHardHammer>],
		[<ore:screwNeutronium>, <customthings:item:76>, <ore:screwNeutronium>],
		[<customthings:item:76>, <spartakcore:item.HeavyDutyPlateTier7>, <customthings:item:76>]
	]
);
#Heavy Duty Nose Cone Tier 8
recipes.addShaped(<spartakcore:item.HeavyDutyNoseConeTier8>, [
		[<ore:craftingToolScrewdriver>, <spartakcore:item.HeavyDutyNoseConeTier7>, <ore:craftingToolHardHammer>],
		[<ore:screwPhoenixite>, <customthings:item:99>, <ore:screwPhoenixite>],
		[<customthings:item:99>, <spartakcore:item.HeavyDutyPlateTier8>, <customthings:item:99>]
	]
);

#==================================================================#
#Fines
#Heavy Duty Rocket Fines Tier 4
recipes.addShaped(<spartakcore:item.HeavyDutyRocketFinsTier4>, [
		[<ore:craftingToolHardHammer>, <spartakcore:item.HeavyDutyPlateTier4>, <ore:craftingToolFile>],
		[<GalacticraftMars:item.itemBasicAsteroids>, <spartakcore:item.HeavyDutyPlateTier4>, <GalacticraftMars:item.itemBasicAsteroids>],
		[<GalacticraftMars:item.itemBasicAsteroids>, <customthings:item:212>, <GalacticraftMars:item.itemBasicAsteroids>]
	]
);
#Heavy Duty Rocket Fines Tier 5
recipes.addShaped(<spartakcore:item.HeavyDutyRocketFinsTier5>, [
		[<ore:craftingToolHardHammer>, <spartakcore:item.HeavyDutyPlateTier5>, <ore:craftingToolFile>],
		[<spartakcore:item.HeavyDutyPlateTier4>, <spartakcore:item.HeavyDutyPlateTier5>, <spartakcore:item.HeavyDutyPlateTier4>],
		[<spartakcore:item.HeavyDutyPlateTier4>, <customthings:item:11>, <spartakcore:item.HeavyDutyPlateTier4>]
	]
);
#Heavy Duty Rocket Fines Tier 6
recipes.addShaped(<spartakcore:item.HeavyDutyRocketFinsTier6>, [
		[<ore:craftingToolHardHammer>, <spartakcore:item.HeavyDutyPlateTier6>, <ore:craftingToolFile>],
		[<spartakcore:item.HeavyDutyPlateTier5>, <spartakcore:item.HeavyDutyPlateTier6>, <spartakcore:item.HeavyDutyPlateTier5>],
		[<spartakcore:item.HeavyDutyPlateTier5>, <customthings:item:101>, <spartakcore:item.HeavyDutyPlateTier5>]
	]
);
#Heavy Duty Rocket Fines Tier 7
recipes.addShaped(<spartakcore:item.HeavyDutyRocketFinsTier7>, [
		[<ore:craftingToolHardHammer>, <spartakcore:item.HeavyDutyPlateTier7>, <ore:craftingToolFile>],
		[<spartakcore:item.HeavyDutyPlateTier6>, <spartakcore:item.HeavyDutyPlateTier7>, <spartakcore:item.HeavyDutyPlateTier6>],
		[<spartakcore:item.HeavyDutyPlateTier6>, <customthings:item:76>, <spartakcore:item.HeavyDutyPlateTier6>]
	]
);
#Heavy Duty Rocket Fines Tier 8
recipes.addShaped(<spartakcore:item.HeavyDutyRocketFinsTier8>, [
		[<ore:craftingToolHardHammer>, <spartakcore:item.HeavyDutyPlateTier8>, <ore:craftingToolFile>],
		[<spartakcore:item.HeavyDutyPlateTier7>, <spartakcore:item.HeavyDutyPlateTier8>, <spartakcore:item.HeavyDutyPlateTier7>],
		[<spartakcore:item.HeavyDutyPlateTier7>, <customthings:item:99>, <spartakcore:item.HeavyDutyPlateTier7>]
	]
);

#==================================================================#
#Engines
#Heavy Duty Rocket Engine Tier 4
recipes.addShaped(<spartakcore:item.HeavyDutyRocketEngineTier4>, [
		[<spartakcore:item.Tier4Booster>, <spartakcore:item.HeavyDutyPlateTier4>, <spartakcore:item.Tier4Booster>],
		[<spartakcore:item.HeavyDutyPlateTier4>, <spartakcore:item.HeavyDutyPlateTier4>, <spartakcore:item.HeavyDutyPlateTier4>],
		[<GalacticraftMars:item.itemBasicAsteroids:1>, <spartakcore:item.HeavyDutyPlateTier4>, <GalacticraftMars:item.itemBasicAsteroids:1>]
	]
);
#Heavy Duty Rocket Engine Tier 5
recipes.addShaped(<spartakcore:item.HeavyDutyRocketEngineTier5>, [
		[<spartakcore:item.Tier5Booster>, <spartakcore:item.HeavyDutyPlateTier5>, <spartakcore:item.Tier5Booster>],
		[<spartakcore:item.HeavyDutyPlateTier5>, <spartakcore:item.HeavyDutyPlateTier5>, <spartakcore:item.HeavyDutyPlateTier5>],
		[<spartakcore:item.HeavyDutyRocketEngineTier4>, <spartakcore:item.HeavyDutyPlateTier5>, <spartakcore:item.HeavyDutyRocketEngineTier4>]
	]
);
#Heavy Duty Rocket Engine Tier 6
recipes.addShaped(<spartakcore:item.HeavyDutyRocketEngineTier6>, [
		[<spartakcore:item.Tier6Booster>, <spartakcore:item.HeavyDutyPlateTier6>, <spartakcore:item.Tier6Booster>],
		[<spartakcore:item.HeavyDutyPlateTier6>, <spartakcore:item.HeavyDutyPlateTier6>, <spartakcore:item.HeavyDutyPlateTier6>],
		[<spartakcore:item.HeavyDutyRocketEngineTier5>, <spartakcore:item.HeavyDutyPlateTier6>, <spartakcore:item.HeavyDutyRocketEngineTier5>]
	]
);
#Heavy Duty Rocket Engine Tier 7
recipes.addShaped(<spartakcore:item.HeavyDutyRocketEngineTier7>, [
		[<spartakcore:item.Tier7Booster>, <spartakcore:item.HeavyDutyPlateTier7>, <spartakcore:item.Tier7Booster>],
		[<spartakcore:item.HeavyDutyPlateTier7>, <spartakcore:item.HeavyDutyPlateTier7>, <spartakcore:item.HeavyDutyPlateTier7>],
		[<spartakcore:item.HeavyDutyRocketEngineTier6>, <spartakcore:item.HeavyDutyPlateTier7>, <spartakcore:item.HeavyDutyRocketEngineTier6>]
	]
);
#Heavy Duty Rocket Engine Tier 8
recipes.addShaped(<spartakcore:item.HeavyDutyRocketEngineTier8>, [
		[<spartakcore:item.Tier8Booster>, <spartakcore:item.HeavyDutyPlateTier8>, <spartakcore:item.Tier8Booster>],
		[<spartakcore:item.HeavyDutyPlateTier8>, <spartakcore:item.HeavyDutyPlateTier8>, <spartakcore:item.HeavyDutyPlateTier8>],
		[<spartakcore:item.HeavyDutyRocketEngineTier7>, <spartakcore:item.HeavyDutyPlateTier8>, <spartakcore:item.HeavyDutyRocketEngineTier7>]
	]
);

#==================================================================#
#Boosters
#Booster Tier 4
recipes.addShaped(<spartakcore:item.Tier4Booster>, [
		[<ore:plateDoubleRhenium>,<ore:plateDoubleRhenium>,<ore:plateDoubleRhenium>],
		[<spartakcore:item.HeavyDutyPlateTier4>, <GalacticraftCore:item.engine:1>, <spartakcore:item.HeavyDutyPlateTier4>],
		[<spartakcore:item.HeavyDutyPlateTier4>, <customthings:item:212>, <spartakcore:item.HeavyDutyPlateTier4>]
	]
);
#Booster Tier 5
recipes.addShaped(<spartakcore:item.Tier5Booster>, [
		[<ore:plateDoubleCinobiteA243>,<ore:plateDoubleCinobiteA243>,<ore:plateDoubleCinobiteA243>],
		[<spartakcore:item.HeavyDutyPlateTier5>, <spartakcore:item.Tier4Booster>, <spartakcore:item.HeavyDutyPlateTier5>],
		[<spartakcore:item.HeavyDutyPlateTier5>, <customthings:item:11>, <spartakcore:item.HeavyDutyPlateTier5>]
	]
);
#Booster Tier 6
recipes.addShaped(<spartakcore:item.Tier6Booster>, [
		[<GalaxySpace:item.CompressedPlates:7>,<GalaxySpace:item.CompressedPlates:7>,<GalaxySpace:item.CompressedPlates:7>],
		[<spartakcore:item.HeavyDutyPlateTier6>, <spartakcore:item.Tier5Booster>, <spartakcore:item.HeavyDutyPlateTier6>],
		[<spartakcore:item.HeavyDutyPlateTier6>, <customthings:item:71>, <spartakcore:item.HeavyDutyPlateTier6>]
	]
);
#Booster Tier 7
recipes.addShaped(<spartakcore:item.Tier7Booster>, [
		[<ore:plateNeutronium>,<ore:plateNeutronium>,<ore:plateNeutronium>],
		[<spartakcore:item.HeavyDutyPlateTier7>, <spartakcore:item.Tier6Booster>, <spartakcore:item.HeavyDutyPlateTier7>],
		[<spartakcore:item.HeavyDutyPlateTier7>, <customthings:item:76>, <spartakcore:item.HeavyDutyPlateTier7>]
	]
);
#Booster Tier 8
recipes.addShaped(<spartakcore:item.Tier8Booster>, [
		[<ore:platePhoenixite>,<ore:platePhoenixite>,<ore:platePhoenixite>],
		[<spartakcore:item.HeavyDutyPlateTier8>, <spartakcore:item.Tier7Booster>, <spartakcore:item.HeavyDutyPlateTier8>],
		[<spartakcore:item.HeavyDutyPlateTier8>, <customthings:item:99>, <spartakcore:item.HeavyDutyPlateTier8>]
	]
);

#==================================================================#
#Boards
#Advanced Board
ChemicalReactor.addRecipe(<customthings:item>, null, <gregtech:gt.metaitem.03:32007>, <ore:foilAluminium> * 4, <liquid:sulfuricacid> * 500, 1000, 30);
#Nano Board
ChemicalReactor.addRecipe(<customthings:item:18>, null, <gregtech:gt.metaitem.01:32720>, <ore:foilOsmium> * 8, <liquid:sulfuricacid> * 750, 1000, 480);
#Quantum Board
ChemicalReactor.addRecipe(<customthings:item:20>, null, <gregtech:gt.metaitem.03:32006>, <ore:foilNaquadah> * 16, <liquid:sulfuricacid> * 1000, 1000, 7680);
#Advanced Processor Board
ChemicalReactor.addRecipe(<customthings:item:1>, null, <customthings:item>, <ore:foilSilver> * 6, <liquid:sodiumpersulfate> * 500, 800, 120);
ChemicalReactor.addRecipe(<customthings:item:1>, null, <customthings:item>, <ore:foilSilver> * 6, <liquid:ironiiichloride> * 250, 400, 1920);
#Nano Processor Board
ChemicalReactor.addRecipe(<customthings:item:19>, null, <customthings:item:18>, <ore:foilNiobiumTitanium> * 16, <liquid:sodiumpersulfate> * 800, 900, 1920);
ChemicalReactor.addRecipe(<customthings:item:19>, null, <customthings:item:18>, <ore:foilNiobiumTitanium> * 16, <liquid:ironiiichloride> * 400, 450, 30720);
#Quantum Processor Board
ChemicalReactor.addRecipe(<customthings:item:21>, null, <customthings:item:20>, <ore:foilTritanium> * 32, <liquid:sodiumpersulfate> * 1600, 1200, 30720);
ChemicalReactor.addRecipe(<customthings:item:21>, null, <customthings:item:20>, <ore:foilTritanium> * 32, <liquid:ironiiichloride> * 800, 600, 491520);

#==================================================================#
#Schematics
#Schematics T1
Assembler.addRecipe(<spartakcore:item.SchematicsTier1>, [<customthings:item:204>, <customthings:item:1>, <GalacticraftCore:item.heavyPlating>], null, 1000, 256);
#Schematics T2
Assembler.addRecipe(<spartakcore:item.SchematicsTier2>, [<customthings:item:205>, <customthings:item:1>, <GalacticraftMars:item.null:3>], null, 1600, 480);
#Schematics T3
Assembler.addRecipe(<spartakcore:item.SchematicsTier3>, [<customthings:item:206>*2, <customthings:item:1>, <GalacticraftMars:item.itemBasicAsteroids>], null, 2200, 1920);
#Schematics T4
Assembler.addRecipe(<spartakcore:item.SchematicsTier4>, [<customthings:item:207>*4, <customthings:item:19>, <spartakcore:item.HeavyDutyPlateTier4>], null, 2800, 4096);
#Schematics T5
Assembler.addRecipe(<spartakcore:item.SchematicsTier5>, [<customthings:item:208>*8, <customthings:item:19>, <spartakcore:item.HeavyDutyPlateTier5>], null, 3400, 16384);
#Schematics T6
Assembler.addRecipe(<spartakcore:item.SchematicsTier6>, [<customthings:item:209>*16, <customthings:item:19>, <spartakcore:item.HeavyDutyPlateTier6>], null, 4000, 65536);
#Schematics T7
Assembler.addRecipe(<spartakcore:item.SchematicsTier7>, [<customthings:item:210>*32, <customthings:item:21>, <spartakcore:item.HeavyDutyPlateTier7>], null, 4600, 262144);
#Schematics T8
Assembler.addRecipe(<spartakcore:item.SchematicsTier8>, [<customthings:item:211>*64, <customthings:item:21>, <spartakcore:item.HeavyDutyPlateTier8>], null, 5200, 1048576);

#==================================================================#
#Ingots
AlloySmelter.addRecipe(<customthings:item:38>, <customthings:item:37>, <gregtech:gt.metaitem.01:32306> * 0, 80, 30);

Assembler.addRecipe(<spartakcore:item.HeavyDutyAlloyIngotT4>, [<GalacticraftMars:item.itemBasicAsteroids>,<ore:plateHSSG>*2,<ore:plateHastelloyC276>*2, <ore:plateZeron100>*2], <liquid:molten.osmium> * 288, 1200, 30720);
Assembler.addRecipe(<spartakcore:item.HeavyDutyAlloyIngotT5>, [<spartakcore:item.HeavyDutyPlateTier4>,<customthings:item:11>*2,<customthings:item:100>*2, <ore:plateArceusAlloy2B>*2], <liquid:molten.europium> * 288, 1600, 122880);
Assembler.addRecipe(<spartakcore:item.HeavyDutyAlloyIngotT6>, [<spartakcore:item.HeavyDutyPlateTier5>,<customthings:item:14>*2,<customthings:item:101>*2, <ore:plateTitansteel>*2], <liquid:molten.americium> * 288, 2000, 500000);
Assembler.addRecipe(<spartakcore:item.HeavyDutyAlloyIngotT7>, [<spartakcore:item.HeavyDutyPlateTier6>,<customthings:item:76>*2,<customthings:item:72>*2, <ore:platePikyonium64B>*2], <liquid:molten.neutronium> * 288, 2400, 2000000);
Assembler.addRecipe(<spartakcore:item.HeavyDutyAlloyIngotT8>, [<spartakcore:item.HeavyDutyPlateTier7>,<customthings:item:99>*2,<ore:plateAdamantium>*2, <ore:plateQuantum>*2], <liquid:molten.phoenixite> * 288, 2800, 8000000);

BlastFurnace.addRecipe([<customthings:item:73>], <liquid:molten.energycrystal> * 144, [<ore:dustMysteriousCrystal>, <gregtech:gt.integrated_circuit:11>*0], 1600, 1920, 7200);

VacuumFreezer.addRecipe(<customthings:item:67>, <ore:ingotLedox>, 1000);
VacuumFreezer.addRecipe(<customthings:item:35>, <customthings:item:38>, 1000);
VacuumFreezer.addRecipe(<customthings:item:70>, <customthings:item:73>, 1000);

#==================================================================#
#Plates
Assembler.addRecipe(<customthings:item:10>, [<customthings:item:36>,<customthings:item:69>], <liquid:ic2coolant> * 4000, 1000, 480);
Assembler.addRecipe(<customthings:item:13>, [<GalaxySpace:item.CompressedPlates:3>,<GalaxySpace:item.CompressedPlates:6>,<GalaxySpace:item.CompressedPlates:8>], <liquid:molten.duranium> * 288, 600, 1920);
Assembler.addRecipe(<customthings:item:14>, [<customthings:item:13>,<GalaxySpace:item.CompressedPlates:7>,<customthings:item:82>], <liquid:molten.tritanium> * 288, 1200, 7680);
Assembler.addRecipe(<GalaxySpace:item.CompressedPlates:2>, [<GalacticraftCore:item.basicItem:8>,<GalaxySpace:item.CompressedPlates:8>,<GalaxySpace:item.CompressedPlates:6>], null, 400, 4096);

Extruder.addRecipe(<customthings:item:68>, <customthings:item:67>, <gregtech:gt.metaitem.01:32350> * 0, 120, 128);
Extruder.addRecipe(<customthings:item:39>, <customthings:item:35>, <gregtech:gt.metaitem.01:32350> * 0, 120, 128);
Extruder.addRecipe(<customthings:item:74>, <customthings:item:70>, <gregtech:gt.metaitem.01:32350> * 0, 120, 128);

ImplosionCompressor.addRecipe([<customthings:item:2>, <gregtech:gt.metaitem.01:816>*2], <GalacticraftMars:item.null:5> * 2, 4);
ImplosionCompressor.addRecipe([<customthings:item:17>, <gregtech:gt.metaitem.01:816>*2], <GalacticraftCore:item.meteoricIronIngot:1> * 2, 4);
ImplosionCompressor.addRecipe([<customthings:item:31>, <gregtech:gt.metaitem.01:816>*2], <GalacticraftMars:item.itemBasicAsteroids:6> * 2, 4);
ImplosionCompressor.addRecipe([<spartakcore:item.HeavyDutyPlateTier4>, <gregtech:gt.metaitem.01:1083>*2], <spartakcore:item.HeavyDutyAlloyIngotT4>, 16);
ImplosionCompressor.addRecipe([<customthings:item:66>, <gregtech:gt.metaitem.01:816>*2], <customthings:item:65> * 2, 4);
ImplosionCompressor.addRecipe([<customthings:item:65>, <gregtech:gt.metaitem.01:816>*4], <IC2:itemPartIridium>*3, 16);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:9>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleTungsten>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedDualBronze>, <gregtech:gt.metaitem.01:816>*2], <GalacticraftCore:item.basicItem:10>*2, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedDualAluminium>, <gregtech:gt.metaitem.01:816>*2], <GalacticraftCore:item.basicItem:8>*2, 4);
ImplosionCompressor.addRecipe([<customthings:item:82>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTriplePalladium>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedSDHD120>, <gregtech:gt.metaitem.01:306>*2], <customthings:item:15>, 6);
ImplosionCompressor.addRecipe([<customthings:item:101>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleDraconium>, 4);
ImplosionCompressor.addRecipe([<customthings:item:100>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleNaquadah>, 4);
ImplosionCompressor.addRecipe([<spartakcore:item.HeavyDutyPlateTier5>, <gregtech:gt.metaitem.01:1070>*2], <spartakcore:item.HeavyDutyAlloyIngotT5>, 24);
ImplosionCompressor.addRecipe([<customthings:item:11>, <gregtech:gt.metaitem.01:816>*2], <customthings:item:10>*2, 4);
ImplosionCompressor.addRecipe([<customthings:item:69>, <gregtech:gt.metaitem.01:816>*2], <customthings:item:68>*3, 4);
ImplosionCompressor.addRecipe([<customthings:item:36>, <gregtech:gt.metaitem.01:816>*2], <customthings:item:39>*3, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:6>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleNickel>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:3>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleLead>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:7>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleOriharukon>, 4);
ImplosionCompressor.addRecipe([<spartakcore:item.HeavyDutyPlateTier6>, <gregtech:gt.metaitem.01:1103>*2], <spartakcore:item.HeavyDutyAlloyIngotT6>, 32);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:8>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTriplePlatinum>, 4);
ImplosionCompressor.addRecipe([<spartakcore:item.HeavyDutyPlateTier7>, <gregtech:gt.metaitem.01:1103>*2], <spartakcore:item.HeavyDutyAlloyIngotT7>, 48);
ImplosionCompressor.addRecipe([<customthings:item:75>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleQuantium>, 4);
ImplosionCompressor.addRecipe([<customthings:item:76>, <gregtech:gt.metaitem.01:816>*2], <customthings:item:75>*2, 8);
ImplosionCompressor.addRecipe([<spartakcore:item.HeavyDutyPlateTier8>, <gregtech:gt.metaitem.01:1420>*2], <spartakcore:item.HeavyDutyAlloyIngotT8>, 64);
ImplosionCompressor.addRecipe([<customthings:item:99>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleBlackPlutonium>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:4>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleMagnesium>, 4);
ImplosionCompressor.addRecipe([<GalaxySpace:item.CompressedPlates:1>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleCobalt>, 4);
ImplosionCompressor.addRecipe([<customthings:item:212>, <gregtech:gt.metaitem.01:816>*2], <ore:plateTripleMytryl>, 4);
ImplosionCompressor.addRecipe([<customthings:item:71>, <gregtech:gt.metaitem.01:816>*2], <customthings:item:74>*3, 4);
ImplosionCompressor.addRecipe([<customthings:item:72>, <gregtech:gt.metaitem.01:816>*2], <customthings:item:71>*2, 4);

#==================================================================#
#Wafer Tier 3
PrecisionLaser.addRecipe(<customthings:item:9>, <gregtech:gt.metaitem.03:32042>, <gregtech:gt.metaitem.01:24405> * 0, 1200, 1920);

#==================================================================#
#Rocket Recycling
ArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32462> * 31, <customthings:item:15>*7], <GalacticraftCore:item.spaceship>, <liquid:oxygen> * 1000, [10000, 10000], 1200, 128);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32462> * 31, <customthings:item:15>*7], <liquid:nitrogen> * 10, <GalacticraftCore:item.spaceship>, <liquid:plasma.nitrogen> * 10, [10000, 10000], 65, 128);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32462> * 31, <customthings:item:15>*7], <liquid:argon> * 3, <GalacticraftCore:item.spaceship>, <liquid:plasma.argon> * 3, [10000, 10000], 65, 128);

ArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32463>*10, <gregtech:gt.metaitem.01:32462> * 38, <customthings:item:15>*4], <GalacticraftMars:item.spaceshipTier2>, <liquid:oxygen> * 1200, [10000, 10000, 10000], 1400, 512);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32463>*10, <gregtech:gt.metaitem.01:32462> * 38, <customthings:item:15>*4], <liquid:nitrogen> * 12, <GalacticraftMars:item.spaceshipTier2>, <liquid:plasma.nitrogen> * 12, [10000, 10000, 10000], 68, 512);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32463>*10, <gregtech:gt.metaitem.01:32462> * 38, <customthings:item:15>*4], <liquid:argon> * 4, <GalacticraftMars:item.spaceshipTier2>, <liquid:plasma.argon> * 4, [10000, 10000, 10000], 68, 512);

ArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32464>*36, <gregtech:gt.metaitem.01:32463> * 16, <gregtech:gt.metaitem.01:32462>*16], <GalacticraftMars:item.itemTier3Rocket>, <liquid:oxygen> * 1400, [10000, 10000, 10000], 1600, 2048);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32464>*36, <gregtech:gt.metaitem.01:32463> * 16, <gregtech:gt.metaitem.01:32462>*16], <liquid:nitrogen> * 14, <GalacticraftMars:item.itemTier3Rocket>, <liquid:plasma.nitrogen> * 14, [10000, 10000, 10000], 71, 2048);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:32464>*36, <gregtech:gt.metaitem.01:32463> * 16, <gregtech:gt.metaitem.01:32462>*16], <liquid:argon> * 5, <GalacticraftMars:item.itemTier3Rocket>, <liquid:plasma.argon> * 5, [10000, 10000, 10000], 71, 2048);

ArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT4>*64, <gregtech:gt.metaitem.01:32464>*28, <gregtech:gt.metaitem.01:32480>*64, <gregtech:gt.metaitem.01:32480>*38], <GalaxySpace:item.Tier4Rocket>, <liquid:oxygen> * 1600, [10000, 10000, 10000, 10000], 1800, 8192);
PlasmaArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT4>*64, <gregtech:gt.metaitem.01:32464>*28, <gregtech:gt.metaitem.01:32480>*64, <gregtech:gt.metaitem.01:32480>*38], <liquid:nitrogen> * 16, <GalaxySpace:item.Tier4Rocket>, <liquid:plasma.nitrogen> * 16, [10000, 10000, 10000, 10000], 74, 8192);
PlasmaArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT4>*64, <gregtech:gt.metaitem.01:32464>*28, <gregtech:gt.metaitem.01:32480>*64, <gregtech:gt.metaitem.01:32480>*38], <liquid:argon> * 6, <GalaxySpace:item.Tier4Rocket>, <liquid:plasma.argon> * 6, [10000, 10000, 10000, 10000], 74, 8192);

ArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT5>*64, <spartakcore:item.HeavyDutyAlloyIngotT5>*33, <spartakcore:item.HeavyDutyAlloyIngotT4>*30, <gregtech:gt.metaitem.01:11417>*64], <GalaxySpace:item.Tier5Rocket>, <liquid:oxygen> * 1800, [10000, 10000, 10000, 10000], 2000, 32768);
PlasmaArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT5>*64, <spartakcore:item.HeavyDutyAlloyIngotT5>*33, <spartakcore:item.HeavyDutyAlloyIngotT4>*30, <gregtech:gt.metaitem.01:11417>*64], <liquid:nitrogen> * 18, <GalaxySpace:item.Tier5Rocket>, <liquid:plasma.nitrogen> * 18, [10000, 10000, 10000, 10000], 77, 32768);
PlasmaArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT5>*64, <spartakcore:item.HeavyDutyAlloyIngotT5>*33, <spartakcore:item.HeavyDutyAlloyIngotT4>*30, <gregtech:gt.metaitem.01:11417>*64], <liquid:argon> * 7, <GalaxySpace:item.Tier5Rocket>, <liquid:plasma.argon> * 7, [10000, 10000, 10000, 10000], 77, 32768);

ArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT6>*64, <spartakcore:item.HeavyDutyAlloyIngotT6>*64, <spartakcore:item.HeavyDutyAlloyIngotT5>*56, <gregtech:gt.metaitem.01:14975>*21], <GalaxySpace:item.Tier6Rocket>, <liquid:oxygen> * 2000, [10000, 10000, 10000, 10000], 2200, 131072);
PlasmaArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT6>*64, <spartakcore:item.HeavyDutyAlloyIngotT6>*64, <spartakcore:item.HeavyDutyAlloyIngotT5>*56, <gregtech:gt.metaitem.01:14975>*21], <liquid:nitrogen> * 20, <GalaxySpace:item.Tier6Rocket>, <liquid:plasma.nitrogen> * 20, [10000, 10000, 10000, 10000], 80, 131072);
PlasmaArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT6>*64, <spartakcore:item.HeavyDutyAlloyIngotT6>*64, <spartakcore:item.HeavyDutyAlloyIngotT5>*56, <gregtech:gt.metaitem.01:14975>*21], <liquid:argon> * 8, <GalaxySpace:item.Tier6Rocket>, <liquid:plasma.argon> * 8, [10000, 10000, 10000, 10000], 80, 131072);

ArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT7>*64, <spartakcore:item.HeavyDutyAlloyIngotT7>*64, <spartakcore:item.HeavyDutyAlloyIngotT7>*49, <spartakcore:item.HeavyDutyAlloyIngotT6>*50], <GalaxySpace:item.Tier7Rocket>, <liquid:oxygen> * 2200, [10000, 10000, 10000, 10000], 2400, 524288);
PlasmaArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT7>*64, <spartakcore:item.HeavyDutyAlloyIngotT7>*64, <spartakcore:item.HeavyDutyAlloyIngotT7>*49, <spartakcore:item.HeavyDutyAlloyIngotT6>*50], <liquid:nitrogen> * 22, <GalaxySpace:item.Tier7Rocket>, <liquid:plasma.nitrogen> * 22, [10000, 10000, 10000, 10000], 83, 524288);
PlasmaArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT7>*64, <spartakcore:item.HeavyDutyAlloyIngotT7>*64, <spartakcore:item.HeavyDutyAlloyIngotT7>*49, <spartakcore:item.HeavyDutyAlloyIngotT6>*50], <liquid:argon> * 9, <GalaxySpace:item.Tier7Rocket>, <liquid:plasma.argon> * 9, [10000, 10000, 10000, 10000], 83, 524288);

ArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT8>*64, <spartakcore:item.HeavyDutyAlloyIngotT8>*64, <spartakcore:item.HeavyDutyAlloyIngotT8>*64, <spartakcore:item.HeavyDutyAlloyIngotT7>*60], <GalaxySpace:item.Tier8Rocket>, <liquid:oxygen> * 2400, [10000, 10000, 10000, 10000], 2600, 2097152);
PlasmaArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT8>*64, <spartakcore:item.HeavyDutyAlloyIngotT8>*64, <spartakcore:item.HeavyDutyAlloyIngotT8>*64, <spartakcore:item.HeavyDutyAlloyIngotT7>*60], <liquid:nitrogen> * 24, <GalaxySpace:item.Tier8Rocket>, <liquid:plasma.nitrogen> * 24, [10000, 10000, 10000, 10000], 86, 2097152);
PlasmaArcFurnace.addRecipe([<spartakcore:item.HeavyDutyAlloyIngotT8>*64, <spartakcore:item.HeavyDutyAlloyIngotT8>*64, <spartakcore:item.HeavyDutyAlloyIngotT8>*64, <spartakcore:item.HeavyDutyAlloyIngotT7>*60], <liquid:argon> * 10, <GalaxySpace:item.Tier8Rocket>, <liquid:plasma.argon> * 10, [10000, 10000, 10000, 10000], 86, 2097152);

#==================================================================#
#Alien Organic
Mixer.addRecipe(<customthings:item:120>*16, null, [<ore:dustNeutronium>*16], <liquid:plasma.helium> * 2304, 3600, 122880);
Mixer.addRecipe(null, <liquid:biomediumraw>*4000, [<ore:dustMysteriousCrystal>*16, <ore:dustCosmicNeutronium>*4, <customthings:item:32>, <gregtech:gt.metaitem.01:401>*0], <liquid:bacteria> * 4000, 300, 500000);
Mixer.addRecipe(null, <liquid:biomediumraw>*1000, [<ore:dustMysteriousCrystal>*4, <ore:dustCosmicNeutronium>, <customthings:item:141>, <gregtech:gt.metaitem.01:401>*0], <liquid:bacterialsludge> * 1000, 100, 500000);

ChemicalReactor.addRecipe(<gregtech:gt.metaitem.03:32122>*16, null, <gregtech:gt.metaitem.03:32121>*16, <customthings:item:32>, <liquid:molten.neutronium> * 144, 3000, 1887437);
ChemicalReactor.addRecipe(<gregtech:gt.metaitem.03:32122>*4, null, <gregtech:gt.metaitem.03:32121>*4, <customthings:item:141>, <liquid:molten.infuscolium> * 144, 2000, 1887437);

#==================================================================#
#Solar Plates
recipes.addShaped(<customthings:item:113>, [
		[<ore:screwInconel792>,<GalacticraftCore:item.basicItem:8>,<ore:screwInconel792>],
		[<GalacticraftCore:item.basicItem:8>, <AdvancedSolarPanel:asp_crafting_items:8>, <GalacticraftCore:item.basicItem:8>],
		[<ore:screwInconel792>, <GalacticraftCore:item.basicItem:8>,<ore:screwInconel792>]
	]
);
recipes.addShaped(<customthings:item:114>, [
		[<ore:screwHastelloyN>,<GalacticraftMars:item.itemBasicAsteroids:6>,<ore:screwHastelloyN>],
		[<GalacticraftMars:item.itemBasicAsteroids:6>, <customthings:item:113>, <GalacticraftMars:item.itemBasicAsteroids:6>],
		[<ore:screwHastelloyN>, <GalacticraftMars:item.itemBasicAsteroids:6>,<ore:screwHastelloyN>]
	]
);
recipes.addShaped(<customthings:item:115>, [
		[<ore:screwZeron100>,<GalacticraftCore:item.meteoricIronIngot:1>,<ore:screwZeron100>],
		[<GalacticraftCore:item.meteoricIronIngot:1>, <customthings:item:114>, <GalacticraftCore:item.meteoricIronIngot:1>],
		[<ore:screwZeron100>, <GalacticraftCore:item.meteoricIronIngot:1>,<ore:screwZeron100>]
	]
);
recipes.addShaped(<customthings:item:116>, [
		[<ore:screwArceusAlloy2B>,<GalacticraftMars:item.null:5>,<ore:screwArceusAlloy2B>],
		[<GalacticraftMars:item.null:5>, <customthings:item:115>, <GalacticraftMars:item.null:5>],
		[<ore:screwArceusAlloy2B>, <GalacticraftMars:item.null:5>,<ore:screwArceusAlloy2B>]
	]
);
recipes.addShaped(<customthings:item:117>, [
		[<ore:screwTitansteel>,<customthings:item:101>,<ore:screwTitansteel>],
		[<customthings:item:101>, <customthings:item:116>, <customthings:item:101>],
		[<ore:screwTitansteel>, <customthings:item:101>,<ore:screwTitansteel>]
	]
);
recipes.addShaped(<customthings:item:118>, [
		[<ore:screwPikyonium64B>,<customthings:item:75>,<ore:screwPikyonium64B>],
		[<customthings:item:75>, <customthings:item:117>, <customthings:item:75>],
		[<ore:screwPikyonium64B>, <customthings:item:75>,<ore:screwPikyonium64B>]
	]
);
recipes.addShaped(<customthings:item:119>, [
		[<ore:screwQuantum>,<ore:plateTriplePhoenixite>,<ore:screwQuantum>],
		[<customthings:item:99>, <customthings:item:118>, <customthings:item:99>],
		[<ore:screwQuantum>, <ore:plateTriplePhoenixite>,<ore:screwQuantum>]
	]
);

#==================================================================#
#Neutronium Ingot
BlastFurnace.addRecipe([<gregtech:gt.metaitem.01:12129>], <liquid:argon> * 1000, [<customthings:item:120>, <gregtech:gt.integrated_circuit:11>*0], 5000,  500000, 9000);

#==================================================================#
#Industrial Frame
recipes.addShaped(<customthings:item:127>, [
		[<ore:plateIncoloyMA956>,<ore:plateIncoloyMA956>,<ore:plateIncoloyMA956>],
		[<ore:stickLongIncoloyDS>, <ore:frameGtTantalloy61>, <ore:stickLongIncoloyDS>],
		[<ore:stickLongIncoloyDS>, <ore:stickLongIncoloyDS>,<ore:stickLongIncoloyDS>]
	]
);

#==================================================================#
#MORE COAL
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

#==================================================================#
#???
recipes.addShaped(<OpenComputers:assembler>, [
		[<gregtech:gt.metaitem.01:32650>,<gregtech:gt.metaitem.03:32102>,<gregtech:gt.metaitem.01:32650>],
		[<ore:plateAluminium>,<gregtech:gt.blockcasings:3>,<ore:plateAluminium>],
		[<OpenComputers:item:25>,<gregtech:gt.metaitem.01:32650>,<OpenComputers:item:25>]
	]
);

#==================================================================#

print("Initialized 'CustomThings.zs'");
