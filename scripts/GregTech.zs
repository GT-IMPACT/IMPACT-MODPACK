#==========#
# GregTech #
#==========#

#===============================================#
#Imports
import minetweaker.item.IItemStack;
import mods.gregtech.AlloySmelter;
import mods.gregtech.ArcFurnace;
import mods.gregtech.Assembler;
import mods.gregtech.AssemblyLine;
import mods.gregtech.Autoclave;
import mods.gregtech.Canner;
import mods.gregtech.Centrifuge;
import mods.gregtech.ChemicalBath;
import mods.gregtech.ChemicalReactor;
import mods.gregtech.CuttingSaw;
import mods.gregtech.Electrolyzer;
import mods.gregtech.ForgeHammer;
import mods.gregtech.FormingPress;
import mods.gregtech.Mixer;
import mods.gregtech.PlasmaArcFurnace;
import mods.gregtech.PlateBender;
import mods.gregtech.WireAssembler;
import mods.gtpp.MultiblockCentrifuge;
import mods.nei.NEI;
import mods.larger_workbenches.LargeCrafting;

print("Initializing 'GregTech.zs'...");

#===============================================#
#Variables
var DiamondDust 			= <gregtech:gt.metaitem.01:2500>;
var nuggetIron 				= <gregtech:gt.metaitem.01:9032>;
var nuggetWIron 			= <gregtech:gt.metaitem.01:9304>;
var ingotWIron 				= <gregtech:gt.metaitem.01:11304>;
var MoldIngot 				= <gregtech:gt.metaitem.01:32306>;
var LVMotor 				= <gregtech:gt.metaitem.01:32600>;
var MVMotor 				= <gregtech:gt.metaitem.01:32601>;
var HVMotor 				= <gregtech:gt.metaitem.01:32602>;
var EVMotor 				= <gregtech:gt.metaitem.01:32603>;
var IVMotor 				= <gregtech:gt.metaitem.01:32604>;
var LUVMotor 				= <gregtech:gt.metaitem.01:32606>;
var ZPMMotor 				= <gregtech:gt.metaitem.01:32607>;
var UVMotor 				= <gregtech:gt.metaitem.01:32608>;
var pumpLV 					= <gregtech:gt.metaitem.01:32610>;
var pumpMV 					= <gregtech:gt.metaitem.01:32611>;
var pumpHV					= <gregtech:gt.metaitem.01:32612>;
var pumpEV					= <gregtech:gt.metaitem.01:32613>;
var pumpIV 					= <gregtech:gt.metaitem.01:32614>;
var pumpLUV 				= <gregtech:gt.metaitem.01:32620>;
var pumpZPM 				= <gregtech:gt.metaitem.01:32621>;
var moduleConveyorLV 		= <gregtech:gt.metaitem.01:32630>;
var moduleConveyorMV 		= <gregtech:gt.metaitem.01:32631>;
var moduleConveyorHV 		= <gregtech:gt.metaitem.01:32632>;
var moduleConveyorEV 		= <gregtech:gt.metaitem.01:32633>;
var moduleConveyorIV 		= <gregtech:gt.metaitem.01:32634>;
var moduleConveyorLUV 		= <gregtech:gt.metaitem.01:32636>;
var moduleConveyorZPM 		= <gregtech:gt.metaitem.01:32637>;
var moduleConveyorUV 		= <gregtech:gt.metaitem.01:32638>;
var pistonElectricLV 		= <gregtech:gt.metaitem.01:32640>;
var pistonElectricHV 		= <gregtech:gt.metaitem.01:32642>;
var pistonElectricEV 		= <gregtech:gt.metaitem.01:32643>;
var pistonElectricIV 		= <gregtech:gt.metaitem.01:32644>;
var robotArmLV 				= <gregtech:gt.metaitem.01:32650>;
var robotArmHV 				= <gregtech:gt.metaitem.01:32652>;
var robotArmEV 				= <gregtech:gt.metaitem.01:32653>;
var robotArmIV 				= <gregtech:gt.metaitem.01:32654>;
var FieldGeneratorHV 		= <gregtech:gt.metaitem.01:32672>;
var FieldGeneratorEV 		= <gregtech:gt.metaitem.01:32673>;
var fieldgenIV 				= <gregtech:gt.metaitem.01:32674>;
var fieldgenLUV 			= <gregtech:gt.metaitem.01:32675>;
var fieldgenZPM 			= <gregtech:gt.metaitem.01:32676>;
var emitterMV 				= <gregtech:gt.metaitem.01:32681>;
var emitterHV 				= <gregtech:gt.metaitem.01:32682>;
var emitterEV 				= <gregtech:gt.metaitem.01:32683>;
var emitterIV 				= <gregtech:gt.metaitem.01:32684>;
var emitterLUV 				= <gregtech:gt.metaitem.01:32685>;
var emitterZPM 				= <gregtech:gt.metaitem.01:32686>;
var sensorLV 				= <gregtech:gt.metaitem.01:32690>;
var sensorHV 				= <gregtech:gt.metaitem.01:32692>;
var sensorIV 				= <gregtech:gt.metaitem.01:32694>;
var sensorLUV 				= <gregtech:gt.metaitem.01:32695>;
var sensorZPM 				= <gregtech:gt.metaitem.01:32696>;
var fuelRodThorium 			= <gregtech:gt.Thoriumcell>;


var HullLV 					= <gregtech:gt.blockmachines:11>;
var HullMV 					= <gregtech:gt.blockmachines:12>;
var HullHV 					= <gregtech:gt.blockmachines:13>;
var HullEV 					= <gregtech:gt.blockmachines:14>;
var HullIV 					= <gregtech:gt.blockmachines:15>;
var HullUV 					= <gregtech:gt.blockmachines:18>;
var uraniumEnriched 		= <IC2:itemUran>;

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

#===============================================#

# Recipe Fixes


#==================================================================#
#Diamond dust-gem fix
recipes.removeShapeless(DiamondDust * 9, [<minecraft:diamond_block>]);
recipes.removeShapeless(<minecraft:diamond> * 9, [<minecraft:diamond_block>]);

#==================================================================#
#Lignite dust fix
recipes.removeShapeless(<gregtech:gt.metaitem.01:2538> * 9, [<gregtech:gt.blockgem2:1>]);

#==================================================================#
#Charcoal dust fix
recipes.removeShapeless(<gregtech:gt.metaitem.01:2536> * 9, [<gregtech:gt.blockgem3:4>]);

#==================================================================#
#Nuggets
AlloySmelter.addRecipe(ingotWIron, nuggetWIron * 9, MoldIngot * 0, 200, 2);
AlloySmelter.addRecipe(<minecraft:iron_ingot>, nuggetIron * 9, MoldIngot * 0, 201, 2);

#==================================================================#
#Uranium Ingot
AlloySmelter.addRecipe(<IC2:itemMOX>, <ore:ingotUranium>.firstItem * 6, <ore:ingotPlutonium>.firstItem * 3, 100, 48);
AlloySmelter.addRecipe(uraniumEnriched, <ore:ingotUranium>.firstItem * 6, <ore:nuggetUranium235>.firstItem * 3, 100, 48);

#==================================================================#
#Mold
recipes.remove(<gregtech:gt.metaitem.01:32300>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:gt.metaitem.01:32300>, <liquid:steel.molten> * 576, null, false, 80);
Assembler.addRecipe(<gregtech:gt.metaitem.01:32300>, <ore:plateSteel>*4, <gregtech:gt.integrated_circuit:4>*0, null, 40, 8);

#==================================================================#
#Firebrick
recipes.remove(<gregtech:gt.blockcasings4:15>);
recipes.addShaped(<gregtech:gt.blockcasings4:15>*2, [
		[<gregtech:gt.metaitem.01:32111>,<ore:dustGypsum>,<gregtech:gt.metaitem.01:32111>],
		[<gregtech:gt.metaitem.01:32111>,<customthings:item:108>.transformReplace(<minecraft:bucket>),<gregtech:gt.metaitem.01:32111>],
		[<gregtech:gt.metaitem.01:32111>,<ore:dustGypsum>,<gregtech:gt.metaitem.01:32111>]
	]
);

#==================================================================#
#Concrete
Mixer.addRecipe(null, <liquid:molten.concrete> * 576, [<gregtech:gt.metaitem.01:2805>, <gregtech:gt.metaitem.01:2299> * 3], <liquid:ic2distilledwater> * 500, 20, 16);

// Saplings to BioChaff
//recipes.addShapeless(<minecraft:tallgrass>, [<ore:treeSapling>]);

#==================================================================#
#Stick Fix
recipes.removeShaped(<minecraft:stick>);
recipes.addShaped(<minecraft:stick>, [
		[<ore:craftingToolSaw>], 
		[<minecraft:tallgrass>]
	]
);
recipes.addShaped(<minecraft:stick>, [
		[<ore:craftingToolSaw>], 
		[<minecraft:deadbush>]
	]
);
recipes.addShaped(<minecraft:stick>, [
		[<ore:craftingToolSaw>], 
		[<ore:treeSapling>]
	]
);
recipes.addShaped(<minecraft:stick> * 2, [
		[<ore:craftingToolSaw>], 
		[<ore:stickLongWood>]
	]
);
recipes.addShaped(<minecraft:stick> * 2, [
		[<ore:plankWood>], 
		[<ore:plankWood>]
	]
);
recipes.addShaped(<minecraft:stick> * 4, [
		[<ore:craftingToolSaw>], 
		[<ore:plankWood>], 
		[<ore:plankWood>]
	]
);

#==================================================================#
#Clay ball
Autoclave.addRecipe(<minecraft:clay_ball>, <gregtech:gt.metaitem.01:2805>, <liquid:water> * 250, 10000, 20, 2);

#==================================================================#
#Dyes
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

#==================================================================#
#Wood Pulp
recipes.addShapeless(<gregtech:gt.metaitem.01:2809> * 2, [<ore:craftingToolMortar>, <ore:logWood>]);

#==================================================================#
#Brick Dust
recipes.addShapeless(<gregtech:gt.metaitem.01:1625>, [<ore:craftingToolMortar>, <minecraft:brick>]);

// --- Long Plastic Rood
//recipes.addShaped(<gregtech:gt.metaitem.02:22874>, [[<ore:stickPlastic>, <ore:craftingToolHardHammer>, <ore:stickPlastic>]]);

// --- Apatite Stick
//ForgeHammer.addRecipe(<gregtech:gt.metaitem.02:22530>, <ore:stickApatite>*2, 55, 16);
//recipes.addShaped(<gregtech:gt.metaitem.02:22530>, [[<ore:stickApatite>,<ore:craftingToolHardHammer>,<ore:stickApatite>]]);

//ForgeHammer.addRecipe(<gregtech:gt.metaitem.02:22526>, <ore:stickLapis>*2, 55, 16);
//recipes.addShaped(<gregtech:gt.metaitem.02:22526>, [[<ore:stickLapis>,<ore:craftingToolHardHammer>,<ore:stickLapis>]]);

#==================================================================#
#Solar Panel Recycling
#Advanced Solar Panel
recipes.addShaped(<gregtech:gt.metaitem.01:32752>, [
		[<ore:craftingToolCrowbar>, <AdvancedSolarPanel:BlockAdvSolarPanel>, <ore:craftingToolScrewdriver>],
		[<ore:craftingToolWrench>, <ore:craftingToolHardHammer>, <ore:craftingToolFile>]
	]
);
#Hybrid Solar Panel
recipes.addShaped(<gregtech:gt.metaitem.01:32753>, [
		[<ore:craftingToolCrowbar>, <AdvancedSolarPanel:BlockAdvSolarPanel:1>, <ore:craftingToolScrewdriver>],
		[<ore:craftingToolWrench>, <ore:craftingToolHardHammer>, <ore:craftingToolFile>]
	]
);
#Ultimate Hybrid Solar Panel
recipes.addShaped(<gregtech:gt.metaitem.01:32754>, [
		[<ore:craftingToolCrowbar>, <AdvancedSolarPanel:BlockAdvSolarPanel:2>, <ore:craftingToolScrewdriver>],
		[<ore:craftingToolWrench>, <ore:craftingToolHardHammer>, <ore:craftingToolFile>]
	]
);

#==================================================================#
#Flour
recipes.addShaped(<gregtech:gt.metaitem.01:2881>, [
		[<ore:cropBarley>, null, null],
		[<ore:craftingToolMortar>, null, null]
	]
);
recipes.addShaped(<gregtech:gt.metaitem.01:2881>, [
		[<ore:cropWheat>, null, null],
		[<ore:craftingToolMortar>, null, null]
	]
);
recipes.addShaped(<gregtech:gt.metaitem.01:2881>, [
		[<ore:cropRye>, null, null],
		[<ore:craftingToolMortar>, null, null]
	]
);
recipes.addShaped(<gregtech:gt.metaitem.01:2881>, [
		[<ore:cropOats>, null, null],
		[<ore:craftingToolMortar>, null, null]
	]
);

#==================================================================#
#Tantal
recipes.addShaped(<gregtech:gt.metaitem.01:32499>*2, [
		[null, <ore:foilManganese>, null], 
		[<ore:foilManganese>,<ore:dustTantalum>,<ore:foilManganese>], 
		[<ore:boltIron>,null,<ore:boltIron>]
	]
);

#==================================================================#
#BBF
recipes.remove(<gregtech:gt.blockmachines:108>);

#==================================================================#
#EBF
recipes.remove(<gregtech:gt.blockmachines:1000>);
recipes.addShaped(<gregtech:gt.blockmachines:1000>, [
		[<gregtech:gt.blockmachines:671>, <gregtech:gt.blockmachines:671>, <gregtech:gt.blockmachines:671>], 
		[<ore:plateDoubleTumbaga>, <gregtech:gt.blockcasings:11>, <ore:plateDoubleTumbaga>], 
		[<ore:circuitBasic>, <ore:cableGt02Tin>, <ore:circuitBasic>]
	]
);

#==================================================================#
#Superconductor recipes
WireAssembler.addRecipe(<gregtech:gt.blockcasings:15>, [<ore:wireGt02SuperconductorIV>*64, <ore:foilNiobiumTitanium>*64], <liquid:molten.refinedtrinium> * 5760, 4800, 7680, true);
WireAssembler.addRecipe(<gregtech:gt.blockcasings:15>, [<ore:wireGt02SuperconductorLuV>*32, <ore:foilNiobiumTitanium>*32], <liquid:molten.refinedtrinium> * 4320, 2400, 30720, true);
WireAssembler.addRecipe(<gregtech:gt.blockcasings:15>, [<ore:wireGt02SuperconductorZPM>*16, <ore:foilNiobiumTitanium>*16], <liquid:molten.refinedtrinium> * 2880, 1200, 122880, true);
WireAssembler.addRecipe(<gregtech:gt.blockcasings:15>, [<ore:wireGt02SuperconductorUV>*8, <ore:foilNiobiumTitanium>*8], <liquid:molten.refinedtrinium> * 1440, 600, 500000, true);
WireAssembler.addRecipe(<gregtech:gt.blockcasings:15>, [<ore:wireGt01Superconductor>*8, <ore:foilNiobiumTitanium>*4], <liquid:molten.refinedtrinium> * 720, 300, 2000000, true);

#==================================================================#
#New Materials
#Deep Iron
Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1032>, <gregtech:gt.metaitem.01:1032>, <gregtech:gt.metaitem.01:1032>, <miscutils:itemDustSmallTrinium>], null, <gregtech:gt.metaitem.01:2829>, null, null, [10000, 10000, 10000, 10000], 200, 30720);
#Naquadah Alloy
Mixer.addRecipe(<gregtech:gt.metaitem.01:2325>*4, null, [<ore:dustNaquadah>*2, <ore:dustTrinium>, <ore:dustCarbon>, <gregtech:gt.integrated_circuit:2>*0], null, 200, 30720);
#Orichalcum
Centrifuge.addRecipe([<miscutils:itemDustSmallTrinium>,<miscutils:itemDustSmallTrinium>,<miscutils:itemDustSmallTrinium>,<gregtech:gt.metaitem.01:1389>], null, <ore:dustOrichalcum>, null, null, [10000, 10000, 10000, 10000], 300, 122880);
//MultiblockCentrifuge.addRecipe([<miscutils:itemDustSmallTrinium>,<miscutils:itemDustSmallTrinium>,<miscutils:itemDustSmallTrinium>,<gregtech:gt.metaitem.01:1389>], null, null, <ore:dustOrichalcum>, null, [10000, 10000, 10000, 10000], 300, 122880, 0);
#Naqlatigon
Electrolyzer.addRecipe([<gregtech:gt.metaitem.01:2327>, <gregtech:gt.metaitem.01:2326> * 3, <gregtech:gt.metaitem.01:2324> * 13,<gregtech:gt.metaitem.01:2085>*16,<gregtech:gt.metaitem.01:2028>*19], <liquid:radon>*4000,  <gregtech:gt.metaitem.01:2071>*56, null, null, [10000, 10000, 10000, 10000, 10000], 1000, 30720);
#Osmirinigon
Electrolyzer.addRecipe([<bartworks:gt.bwMetaGenerateddust:69>*4, <bartworks:gt.bwMetaGenerateddust:70> * 4, <gregtech:gt.metaitem.01:2047> * 7,<gregtech:gt.metaitem.01:2034>*13,<gregtech:gt.metaitem.01:2019>*17], <liquid:argon>*8000,  <gregtech:gt.metaitem.01:2066>*53, null, null, [10000, 10000, 10000, 10000, 10000], 600, 1024);
#Mithril
Electrolyzer.addRecipe([<gregtech:gt.metaitem.01:2516>*2, <gregtech:gt.metaitem.01:2085>*2, <gregtech:gt.metaitem.01:2340>], null,  <ore:dustMithril>*5, null, null, [10000, 10000, 10000], 600, 480);
ChemicalBath.addRecipe([<gregtech:gt.metaitem.01:8516>, <gregtech:gt.metaitem.01:2387>, <gregtech:gt.metaitem.01:2414>], <ore:gemMithril>*2, <liquid:sulfuricacid> * 1000, [10000, 8000, 7500], 400, 120);
#Mytryl
Centrifuge.addRecipe([<gregtech:gt.metaitem.01:2089>*3, <gregtech:gt.metaitem.01:2085>*2, <gregtech:gt.metaitem.01:2956>], null, <ore:dustMytryl>*6, null, null, [10000, 10000, 10000], 400, 1920);

//MultiblockCentrifuge.addRecipe([<gregtech:gt.metaitem.01:2089>*3, <gregtech:gt.metaitem.01:2085>*2, <gregtech:gt.metaitem.01:2956>], null, null, <ore:dustMytryl>*6, null, [10000, 10000, 10000], 400, 1920, 0);
#Tartarite
Centrifuge.addRecipe([<gregtech:gt.metaitem.01:2837>*3, <gregtech:gt.metaitem.01:2022>*2, <gregtech:gt.metaitem.01:2032>*2, <gregtech:gt.metaitem.01:2200>, <gregtech:gt.metaitem.01:2084>], <liquid:sulfuricacid>*2000, <ore:dustTartarite>*9, null, <liquid:water>*2000, [10000, 10000, 10000, 10000, 10000], 600, 7680);
//MultiblockCentrifuge.addRecipe([<gregtech:gt.metaitem.01:2837>*3, <gregtech:gt.metaitem.01:2022>*2, <gregtech:gt.metaitem.01:2032>*2, <gregtech:gt.metaitem.01:2200>, <gregtech:gt.metaitem.01:2084>], <liquid:water>*2000, <liquid:sulfuricacid>*2000, <ore:dustTartarite>*9, null, [10000, 10000, 10000, 10000, 10000], 600, 7680, 0);

ChemicalReactor.addRecipe(<gregtech:gt.metaitem.01:201>*6, null, <ore:dustTartariteSolution>, <gregtech:gt.neutronreflector> * 0, <liquid:radon> * 1000, 3000, 480);
PlasmaArcFurnace.addRecipe([<gregtech:gt.metaitem.01:12324>, <gregtech:gt.metaitem.01:12975>, <gregtech:gt.metaitem.01:12084>], <liquid:helium> * 24, <ore:dustEnrichedTartarite>*3, <liquid:plasma.helium> * 24, [10000, 10000, 10000], 77, 32768);

#==================================================================#
#Motors
AssemblyLine.addRecipe(<gregtech:gt.metaitem.01:32604>, 140000, [<gregtech:gt.metaitem.02:22356>, <gregtech:gt.metaitem.02:22374>*2, <gregtech:gt.metaitem.01:28341>*4, <gregtech:gt.metaitem.01:25341>*16, <gregtech:gt.metaitem.02:19345>*64, <gregtech:gt.metaitem.02:19345>*64, <gregtech:gt.metaitem.02:19345>*64, <gregtech:gt.metaitem.02:19345>*64, <gregtech:gt.blockmachines:1766>*2], [<liquid:molten.solderingalloy> * 144, <liquid:lubricant> * 250], <gregtech:gt.metaitem.01:32606>, 500, 6000);
AssemblyLine.addRecipe(<gregtech:gt.metaitem.01:32606>, 160000, [<gregtech:gt.metaitem.01:23393>, <gregtech:gt.metaitem.02:22317>*4, <gregtech:gt.metaitem.01:28884>*6, <gregtech:gt.metaitem.01:25884>*32, <gregtech:gt.metaitem.02:19321>*64, <gregtech:gt.metaitem.02:19321>*64, <gregtech:gt.metaitem.02:19321>*64, <gregtech:gt.metaitem.02:19321>*64, <gregtech:gt.blockmachines:1788>*2], [<liquid:molten.solderingalloy> * 288, <liquid:lubricant> * 750], <gregtech:gt.metaitem.01:32607>, 700, 24000);
AssemblyLine.addRecipe(<gregtech:gt.metaitem.01:32607>, 180000, [<gregtech:gt.metaitem.02:23393>, <gregtech:gt.metaitem.02:22329>*6, <gregtech:gt.metaitem.01:28389>*8, <gregtech:gt.metaitem.01:25389>*64, <gregtech:gt.metaitem.02:19103>*64, <gregtech:gt.metaitem.02:19103>*64, <gregtech:gt.metaitem.02:19103>*64, <gregtech:gt.metaitem.02:19103>*64, <gregtech:gt.blockmachines:1808>*2], [<liquid:molten.solderingalloy> * 1296, <liquid:lubricant> * 2000, <liquid:molten.naquadria> * 1296], <gregtech:gt.metaitem.01:32608>, 800, 100000);

#==================================================================#

#Large Crafting Table

#==================================================================#
#Teleporter
recipes.remove(<gregtech:gt.blockmachines:1145>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:1145>, [
		[<ore:plateDenseEuropium>, <ore:plateDenseEuropium>, <ore:blockGlassLuV>, <ore:blockGlassLuV>, <ore:blockGlassLuV>, <ore:plateDenseEuropium>, <ore:plateDenseEuropium>],
		[<ore:plateDenseEuropium>, <gregtech:gt.metaitem.01:32707>, <appliedenergistics2:tile.BlockSpatialPylon>, <gregtech:gt.metaitem.01:32675>, <appliedenergistics2:tile.BlockSpatialPylon>, <gregtech:gt.metaitem.01:32707>, <ore:plateDenseEuropium>],
		[<ore:blockGlassLuV>, <appliedenergistics2:tile.BlockSpatialPylon>, <ore:circuitMaster>, <appliedenergistics2:tile.BlockQuantumLinkChamber>, <ore:circuitMaster>, <appliedenergistics2:tile.BlockSpatialPylon>, <ore:blockGlassLuV>],
		[<ore:blockGlassLuV>, <gregtech:gt.metaitem.01:32675>, <appliedenergistics2:tile.BlockQuantumLinkChamber>, <EnderIO:blockTransceiver>, <appliedenergistics2:tile.BlockQuantumLinkChamber>, <gregtech:gt.metaitem.01:32675>, <ore:blockGlassLuV>],
		[<ore:blockGlassLuV>, <appliedenergistics2:tile.BlockSpatialPylon>, <ore:circuitMaster>, <appliedenergistics2:tile.BlockQuantumLinkChamber>, <ore:circuitMaster>, <appliedenergistics2:tile.BlockSpatialPylon>, <ore:blockGlassLuV>],
		[<ore:plateDenseEuropium>, <gregtech:gt.metaitem.01:32707>, <appliedenergistics2:tile.BlockSpatialPylon>, <appliedenergistics2:tile.BlockSpatialIOPort>, <appliedenergistics2:tile.BlockSpatialPylon>, <gregtech:gt.metaitem.01:32707>, <ore:plateDenseEuropium>],
		[<ore:plateDenseEuropium>, <ore:plateDenseEuropium>, <ore:blockGlassLuV>, <ore:blockGlassLuV>, <ore:blockGlassLuV>, <ore:plateDenseEuropium>, <ore:plateDenseEuropium>]
	]
);

#==================================================================#
#Fusion Blocks
#Fusion Casing MK1
LargeCrafting.addShaped(5, <gregtech:gt.blockcasings4:6> * 4, [
		[null, null, null, <ore:plateDoubleEuropium>, <gregtech:gt.blockcasings:6>, <ore:plateDoubleEuropium>, null, null, null],
		[null, null, <ore:plateDoubleEuropium>, <ore:circuitMaster>, <ore:itemSuperconductor>, <ore:circuitMaster>, <ore:plateDoubleEuropium>, null, null],
		[null, <ore:plateDoubleEuropium>, <ore:pipeMediumSuperconductor>, <ore:plateQuadrupleTungstenSteel>, <customthings:item:175>, <ore:plateQuadrupleTungstenSteel>, <ore:pipeMediumSuperconductor>, <ore:plateDoubleEuropium>, null],
		[<ore:plateDoubleEuropium>, <ore:circuitMaster>, <ore:plateQuadrupleTungstenSteel>, null, <ore:frameGtHastelloyN>, null, <ore:plateQuadrupleTungstenSteel>, <ore:circuitMaster>, <ore:plateDoubleEuropium>],
		[<gregtech:gt.blockcasings:6>, <ore:itemSuperconductor>, <customthings:item:175>, <ore:frameGtHastelloyN>, fieldgenLUV, <ore:frameGtHastelloyN>, <customthings:item:175>, <ore:itemSuperconductor>, <gregtech:gt.blockcasings:6>],
		[<ore:plateDoubleEuropium>, <ore:circuitMaster>, <ore:plateQuadrupleTungstenSteel>, null, <ore:frameGtHastelloyN>, null, <ore:plateQuadrupleTungstenSteel>, <ore:circuitMaster>, <ore:plateDoubleEuropium>],
		[null, <ore:plateDoubleEuropium>, <ore:pipeMediumSuperconductor>, <ore:plateQuadrupleTungstenSteel>, <customthings:item:175>, <ore:plateQuadrupleTungstenSteel>, <ore:pipeMediumSuperconductor>, <ore:plateDoubleEuropium>, null],
		[null, null, <ore:plateDoubleEuropium>, <ore:circuitMaster>, <ore:itemSuperconductor>, <ore:circuitMaster>, <ore:plateDoubleEuropium>, null, null],
		[null, null, null, <ore:plateDoubleEuropium>, <gregtech:gt.blockcasings:6>, <ore:plateDoubleEuropium>, null, null, null]
	]
);
#Fusion Casing MK2
LargeCrafting.addShaped(5, <gregtech:gt.blockcasings4:8> * 4, [
		[null, null, null, <ore:plateDoubleAmericium>, <gregtech:gt.blockcasings4:6>, <ore:plateDoubleAmericium>, null, null, null],
		[null, null, <ore:plateDoubleAmericium>, <ore:circuitUltimate>, <ore:itemSuperconductor>, <ore:circuitUltimate>, <ore:plateDoubleAmericium>, null, null],
		[null, <ore:plateDoubleAmericium>, <gregtech:gt.blockcasings:7>, <ore:plateQuadrupleNaquadahAlloy>, <gregtech:gt.neutronreflector>, <ore:plateQuadrupleNaquadahAlloy>, <gregtech:gt.blockcasings:7>, <ore:plateDoubleAmericium>, null],
		[<ore:plateDoubleAmericium>, <ore:circuitUltimate>, <ore:plateQuadrupleNaquadahAlloy>, null, <ore:frameGtLafiumCompound>, null, <ore:plateQuadrupleNaquadahAlloy>, <ore:circuitUltimate>, <ore:plateDoubleAmericium>],
		[<gregtech:gt.blockcasings4:6>, <ore:itemSuperconductor>, <gregtech:gt.neutronreflector>, <ore:frameGtLafiumCompound>, fieldgenZPM, <ore:frameGtLafiumCompound>, <gregtech:gt.neutronreflector>, <ore:itemSuperconductor>, <gregtech:gt.blockcasings4:6>],
		[<ore:plateDoubleAmericium>, <ore:circuitUltimate>, <ore:plateQuadrupleNaquadahAlloy>, null, <ore:frameGtLafiumCompound>, null, <ore:plateQuadrupleNaquadahAlloy>, <ore:circuitUltimate>, <ore:plateDoubleAmericium>],
		[null, <ore:plateDoubleAmericium>, <gregtech:gt.blockcasings:7>, <ore:plateQuadrupleNaquadahAlloy>, <gregtech:gt.neutronreflector>, <ore:plateQuadrupleNaquadahAlloy>, <gregtech:gt.blockcasings:7>, <ore:plateDoubleAmericium>, null],
		[null, null, <ore:plateDoubleAmericium>, <ore:circuitUltimate>, <ore:itemSuperconductor>, <ore:circuitUltimate>, <ore:plateDoubleAmericium>, null, null],
		[null, null, null, <ore:plateDoubleAmericium>, <gregtech:gt.blockcasings4:6>, <ore:plateDoubleAmericium>, null, null, null]
	]
);

#==================================================================#
#Turbine Controllers
#Steam Turbine
recipes.remove(<gregtech:gt.blockmachines:1131>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1131>, [
		[<ore:plateDoubleSteel>, <ore:plateDoubleSteel>, <ore:ringSteel>, <ore:plateDoubleSteel>, <ore:plateDoubleSteel>],
		[<ore:plateDoubleSteel>, <ore:circuitAdvanced>, <ore:gearGtSteel>, <ore:circuitAdvanced>, <ore:plateDoubleSteel>],
		[<ore:ringSteel>, <ore:gearGtSteel>, HullHV, <ore:gearGtSteel>, <ore:ringSteel>],
		[<ore:plateDoubleSteel>, <ore:pipeLargeSteel>, <ore:gearGtSteel>, <ore:pipeLargeSteel>, <ore:plateDoubleSteel>],
		[<ore:plateDoubleSteel>, <ore:plateDoubleSteel>, <ore:ringSteel>, <ore:plateDoubleSteel>, <ore:plateDoubleSteel>]
	]
);
#Gas Turbine
recipes.remove(<gregtech:gt.blockmachines:1151>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1151>, [
		[<ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:ringStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>],
		[<ore:plateDoubleStainlessSteel>, <ore:circuitData>, <ore:gearGtStainlessSteel>, <ore:circuitData>, <ore:plateDoubleStainlessSteel>],
		[<ore:ringStainlessSteel>, <ore:gearGtStainlessSteel>, HullEV, <ore:gearGtStainlessSteel>, <ore:ringStainlessSteel>],
		[<ore:plateDoubleStainlessSteel>, <ore:pipeLargeStainlessSteel>, <ore:gearGtStainlessSteel>, <ore:pipeLargeStainlessSteel>, <ore:plateDoubleStainlessSteel>],
		[<ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:ringStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>]
	]
);
#HP Turbine
recipes.remove(<gregtech:gt.blockmachines:1152>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:1152>, [
		[<ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>, <ore:ringTitanium>, <ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>],
		[<ore:plateDoubleTitanium>, <ore:circuitElite>, <ore:pipeLargeTitanium>, <ore:stickLongHastelloyN>, <ore:pipeLargeTitanium>, <ore:circuitElite>, <ore:plateDoubleTitanium>],
		[<ore:plateDoubleTitanium>, <ore:pipeLargeTitanium>, <ore:gearGtTitanium>, <ore:stickLongHastelloyN>, <ore:gearGtTitanium>, <ore:pipeLargeTitanium>, <ore:plateDoubleTitanium>],
		[<ore:ringTitanium>, <ore:stickLongHastelloyN>, <ore:stickLongHastelloyN>, HullIV, <ore:stickLongHastelloyN>, <ore:stickLongHastelloyN>, <ore:ringTitanium>],
		[<ore:plateDoubleTitanium>, <ore:pipeLargeTitanium>, <ore:gearGtTitanium>, <ore:stickLongHastelloyN>, <ore:gearGtTitanium>, <ore:pipeLargeTitanium>, <ore:plateDoubleTitanium>],
		[<ore:plateDoubleTitanium>, <ore:circuitElite>, <ore:pipeLargeTitanium>, <ore:stickLongHastelloyN>, <ore:pipeLargeTitanium>, <ore:circuitElite>, <ore:plateDoubleTitanium>],
		[<ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>, <ore:ringTitanium>, <ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>]
	]
);
#Plasma Turbine
recipes.remove(<gregtech:gt.blockmachines:1153>);
LargeCrafting.addShaped(5, <gregtech:gt.blockmachines:1153>, [
		[<ore:plateDoubleOsmiridium>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleOsmiridium>, <ore:roundNaquadahAlloy>, <ore:ringOriharukon>, <ore:roundNaquadahAlloy>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleOsmiridium>],
		[<ore:plateDoubleOsmiridium>, <ore:frameGtDraconium>, <ore:circuitUltimate>, <ore:roundNaquadahAlloy>, <ore:ringOriharukon>, <ore:roundNaquadahAlloy>, <ore:circuitUltimate>, <ore:frameGtDraconium>, <ore:plateDoubleOsmiridium>],
		[<ore:plateDoubleOsmiridium>, <ore:circuitUltimate>, <ore:frameGtDraconium>, <ore:pipeHugeNaquadah>, <ore:stickLongTriniumNaquadahCarbonite>, <ore:pipeHugeNaquadah>, <ore:frameGtDraconium>, <ore:circuitUltimate>, <ore:plateDoubleOsmiridium>],
		[<ore:roundNaquadahAlloy>, <ore:roundNaquadahAlloy>, <ore:pipeHugeNaquadah>, <ore:gearGtNaquadahAlloy>, <ore:stickLongTriniumNaquadahCarbonite>, <ore:gearGtNaquadahAlloy>, <ore:pipeHugeNaquadah>,  <ore:roundNaquadahAlloy>, <ore:roundNaquadahAlloy>],
		[<ore:ringOriharukon>, <ore:ringOriharukon>, <ore:stickLongTriniumNaquadahCarbonite>, <ore:stickLongTriniumNaquadahCarbonite>, HullUV, <ore:stickLongTriniumNaquadahCarbonite>, <ore:stickLongTriniumNaquadahCarbonite>, <ore:ringOriharukon>, <ore:ringOriharukon>],
		[<ore:roundNaquadahAlloy>, <ore:roundNaquadahAlloy>, <ore:pipeHugeNaquadah>, <ore:gearGtNaquadahAlloy>, <ore:stickLongTriniumNaquadahCarbonite>, <ore:gearGtNaquadahAlloy>, <ore:pipeHugeNaquadah>,  <ore:roundNaquadahAlloy>, <ore:roundNaquadahAlloy>],
		[<ore:plateDoubleOsmiridium>, <ore:circuitUltimate>, <ore:frameGtDraconium>, <ore:pipeHugeNaquadah>, <ore:stickLongTriniumNaquadahCarbonite>, <ore:pipeHugeNaquadah>, <ore:frameGtDraconium>, <ore:circuitUltimate>, <ore:plateDoubleOsmiridium>],
		[<ore:plateDoubleOsmiridium>, <ore:frameGtDraconium>, <ore:circuitUltimate>, <ore:roundNaquadahAlloy>, <ore:ringOriharukon>, <ore:roundNaquadahAlloy>, <ore:circuitUltimate>, <ore:frameGtDraconium>, <ore:plateDoubleOsmiridium>],
		[<ore:plateDoubleOsmiridium>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleOsmiridium>, <ore:roundNaquadahAlloy>, <ore:ringOriharukon>, <ore:roundNaquadahAlloy>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleOsmiridium>]
	]
);

#==================================================================#
#Heat Exchanger
recipes.remove(<gregtech:gt.blockmachines:1154>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1154>, [
		[<ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>, <ore:ringTitanium>, <ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>],
		[<ore:plateDoubleTitanium>, <ore:frameGtTitanium>, <ore:pipeMediumTitanium>, <ore:frameGtTitanium>, <ore:plateDoubleTitanium>],
		[<ore:ringTitanium>, <ore:pipeMediumTitanium>, HullEV, <ore:pipeMediumTitanium>, <ore:ringTitanium>],
		[<ore:plateDoubleTitanium>, pumpEV, <gregtech:gt.blockcasings2:14>, pumpEV, <ore:plateDoubleTitanium>],
		[<ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>, <ore:ringTitanium>, <ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>]
	]
);

#==================================================================#
#Oil Drilling Rigs
#OilDrill1
recipes.remove(<gregtech:gt.blockmachines:1157>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1157>, [
		[<ore:plateSteel>, <ore:plateSteel>, <ore:frameGtSteel>, <ore:plateSteel>, <ore:plateSteel>],
		[<ore:plateSteel>, pumpMV, <ore:circuitGood>, pumpMV, <ore:plateSteel>],
		[<ore:frameGtSteel>, <ore:gearGtSteel>, HullMV, <ore:gearGtSteel>, <ore:frameGtSteel>],
		[<ore:plateSteel>, MVMotor, <ore:circuitGood>, MVMotor, <ore:plateSteel>],
		[<ore:plateSteel>, <ore:plateSteel>, <ore:frameGtSteel>, <ore:plateSteel>, <ore:plateSteel>]
	]
);
#OilDrill2
recipes.remove(<gregtech:gt.blockmachines:133>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:133>, [
		[<ore:plateTitanium>, <ore:plateTitanium>, <ore:frameGtTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
		[<ore:plateTitanium>, pumpHV, <ore:circuitAdvanced>, pumpHV, <ore:plateTitanium>],
		[<ore:frameGtTitanium>, <ore:gearGtTitanium>, <gregtech:gt.blockmachines:1157>, <ore:gearGtTitanium>, <ore:frameGtTitanium>],
		[<ore:plateTitanium>, HVMotor, <ore:circuitAdvanced>, HVMotor, <ore:plateTitanium>],
		[<ore:plateTitanium>, <ore:plateTitanium>, <ore:frameGtTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]
	]
);
#OilDrill3
recipes.remove(<gregtech:gt.blockmachines:134>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:134>, [
		[<ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:frameGtTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>],
		[<ore:plateTungstenSteel>, <ore:frameGtTungstenSteel>, <ore:circuitData>, <ore:frameGtTungstenSteel>, <ore:circuitData>, <ore:frameGtTungstenSteel>, <ore:plateTungstenSteel>],
		[<ore:plateTungstenSteel>, <ore:circuitData>, pumpEV, <ore:gearGtTungstenSteel>, pumpEV, <ore:circuitData>, <ore:plateTungstenSteel>],
		[<ore:frameGtTungstenSteel>, <ore:frameGtTungstenSteel>, <ore:gearGtTungstenSteel>, <gregtech:gt.blockmachines:133>, <ore:gearGtTungstenSteel>, <ore:frameGtTungstenSteel>, <ore:frameGtTungstenSteel>],
		[<ore:plateTungstenSteel>, <ore:circuitData>, EVMotor, <ore:gearGtTungstenSteel>, EVMotor, <ore:circuitData>, <ore:plateTungstenSteel>],
		[<ore:plateTungstenSteel>, <ore:frameGtTungstenSteel>, <ore:circuitData>, <ore:frameGtTungstenSteel>, <ore:circuitData>, <ore:frameGtTungstenSteel>, <ore:plateTungstenSteel>],
		[<ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:frameGtTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>]
	]
);

#==================================================================#
#Ore Drilling Plants
#OreDrill1
recipes.remove(<gregtech:gt.blockmachines:1158>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1158>, [
		[<ore:plateSteel>, <ore:plateSteel>, <ore:frameGtTitanium>, <ore:plateSteel>, <ore:plateSteel>],
		[<ore:plateSteel>, moduleConveyorEV, <ore:circuitData>, moduleConveyorEV, <ore:plateSteel>],
		[<ore:frameGtTitanium>, <ore:gearGtSteel>, HullEV, <ore:gearGtSteel>, <ore:frameGtTitanium>],
		[<ore:plateSteel>, EVMotor, <ore:circuitData>, EVMotor, <ore:plateSteel>],
		[<ore:plateSteel>, <ore:plateSteel>, <ore:frameGtTitanium>, <ore:plateSteel>, <ore:plateSteel>]
	]
);
#OreDrill2
recipes.remove(<gregtech:gt.blockmachines:1177>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:1177>, [
		[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>, <ore:frameGtTungstenSteel>, <ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
		[<ore:plateTitanium>, <ore:frameGtTungstenSteel>, <ore:circuitElite>, <ore:frameGtTungstenSteel>, <ore:circuitElite>, <ore:frameGtTungstenSteel>, <ore:plateTitanium>],
		[<ore:plateTitanium>, <ore:circuitElite>, moduleConveyorIV, <ore:gearGtTungstenSteel>, moduleConveyorIV, <ore:circuitElite>, <ore:plateTitanium>],
		[<ore:frameGtTungstenSteel>, <ore:frameGtTungstenSteel>, <ore:gearGtTungstenSteel>, <gregtech:gt.blockmachines:1158>, <ore:gearGtTungstenSteel>, <ore:frameGtTungstenSteel>, <ore:frameGtTungstenSteel>],
		[<ore:plateTitanium>, <ore:circuitElite>, IVMotor, <ore:gearGtTungstenSteel>, IVMotor, <ore:circuitElite>, <ore:plateTitanium>],
		[<ore:plateTitanium>, <ore:frameGtTungstenSteel>, <ore:circuitElite>, <ore:frameGtTungstenSteel>, <ore:circuitElite>, <ore:frameGtTungstenSteel>, <ore:plateTitanium>],
		[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>, <ore:frameGtTungstenSteel>, <ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]
	]
);
#OreDrill3
recipes.remove(<gregtech:gt.blockmachines:1178>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:1178>, [
		[<ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:frameGtOsmiridium>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>],
		[<ore:plateTungstenSteel>, <ore:frameGtOsmiridium>, <ore:circuitMaster>, <ore:frameGtOsmiridium>, <ore:circuitMaster>, <ore:frameGtOsmiridium>, <ore:plateTungstenSteel>],
		[<ore:plateTungstenSteel>, <ore:circuitMaster>, moduleConveyorLUV, <ore:gearGtOsmiridium>, moduleConveyorLUV, <ore:circuitMaster>, <ore:plateTungstenSteel>],
		[<ore:frameGtOsmiridium>, <ore:frameGtOsmiridium>, <ore:gearGtOsmiridium>, <gregtech:gt.blockmachines:1177>, <ore:gearGtOsmiridium>, <ore:frameGtOsmiridium>, <ore:frameGtOsmiridium>],
		[<ore:plateTungstenSteel>, <ore:circuitMaster>, LUVMotor, <ore:gearGtOsmiridium>, LUVMotor, <ore:circuitMaster>, <ore:plateTungstenSteel>],
		[<ore:plateTungstenSteel>, <ore:frameGtOsmiridium>, <ore:circuitMaster>, <ore:frameGtOsmiridium>, <ore:circuitMaster>, <ore:frameGtOsmiridium>, <ore:plateTungstenSteel>],
		[<ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:frameGtOsmiridium>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>]
	]
);
#OreDrill4
recipes.remove(<gregtech:gt.blockmachines:1179>);
LargeCrafting.addShaped(5, <gregtech:gt.blockmachines:1179>, [
		[<ore:plateOsmiridium>, <ore:plateOsmiridium>, <ore:plateOsmiridium>, <ore:plateOsmiridium>, <ore:frameGtTritanium>, <ore:plateOsmiridium>, <ore:plateOsmiridium>, <ore:plateOsmiridium>, <ore:plateOsmiridium>],
		[<ore:plateOsmiridium>, <ore:circuitUltimate>, moduleConveyorZPM, <ore:gearGtOriharukon>, <ore:frameGtTritanium>, <ore:gearGtOriharukon>, moduleConveyorZPM, <ore:circuitUltimate>, <ore:plateOsmiridium>],
		[<ore:plateOsmiridium>, <ore:circuitUltimate>, moduleConveyorZPM, <ore:gearGtOriharukon>, <ore:frameGtTritanium>, <ore:gearGtOriharukon>, moduleConveyorZPM, <ore:circuitUltimate>, <ore:plateOsmiridium>],
		[<ore:plateOsmiridium>, <ore:circuitUltimate>, moduleConveyorZPM, <ore:gearGtOriharukon>, <ore:frameGtTritanium>, <ore:gearGtOriharukon>, moduleConveyorZPM, <ore:circuitUltimate>, <ore:plateOsmiridium>],
		[<ore:frameGtTritanium>, <ore:frameGtTritanium>, <ore:frameGtTritanium>, <ore:frameGtTritanium>, <gregtech:gt.blockmachines:1178>, <ore:frameGtTritanium>, <ore:frameGtTritanium>, <ore:frameGtTritanium>, <ore:frameGtTritanium>],
		[<ore:plateOsmiridium>, <ore:circuitUltimate>, ZPMMotor, <ore:gearGtOriharukon>, <ore:frameGtTritanium>, <ore:gearGtOriharukon>, ZPMMotor, <ore:circuitUltimate>, <ore:plateOsmiridium>],
		[<ore:plateOsmiridium>, <ore:circuitUltimate>, ZPMMotor, <ore:gearGtOriharukon>, <ore:frameGtTritanium>, <ore:gearGtOriharukon>, ZPMMotor, <ore:circuitUltimate>, <ore:plateOsmiridium>],
		[<ore:plateOsmiridium>, <ore:circuitUltimate>, ZPMMotor, <ore:gearGtOriharukon>, <ore:frameGtTritanium>, <ore:gearGtOriharukon>, ZPMMotor, <ore:circuitUltimate>, <ore:plateOsmiridium>],
		[<ore:plateOsmiridium>, <ore:plateOsmiridium>, <ore:plateOsmiridium>, <ore:plateOsmiridium>, <ore:frameGtTritanium>, <ore:plateOsmiridium>, <ore:plateOsmiridium>, <ore:plateOsmiridium>, <ore:plateOsmiridium>]
	]
);
#OreDrill5
recipes.remove(<gregtech:gt.blockmachines:12190>);
LargeCrafting.addShaped(5, <gregtech:gt.blockmachines:12190>, [
		[<ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, <ore:frameGtNeutronium>, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>],
		[<ore:plateTritanium>, <ore:circuitSuperconductor>, moduleConveyorUV, <ore:gearGtElectrumFlux>, <ore:frameGtNeutronium>, <ore:gearGtElectrumFlux>, moduleConveyorUV, <ore:circuitSuperconductor>, <ore:plateTritanium>],
		[<ore:plateTritanium>, <ore:circuitSuperconductor>, moduleConveyorUV, <ore:gearGtElectrumFlux>, <ore:frameGtNeutronium>, <ore:gearGtElectrumFlux>, moduleConveyorUV, <ore:circuitSuperconductor>, <ore:plateTritanium>],
		[<ore:plateTritanium>, <ore:circuitSuperconductor>, moduleConveyorUV, <ore:gearGtElectrumFlux>, <ore:frameGtNeutronium>, <ore:gearGtElectrumFlux>, moduleConveyorUV, <ore:circuitSuperconductor>, <ore:plateTritanium>],
		[<ore:frameGtNeutronium>, <ore:frameGtNeutronium>, <ore:frameGtNeutronium>, <ore:frameGtNeutronium>, <gregtech:gt.blockmachines:1179>, <ore:frameGtNeutronium>, <ore:frameGtNeutronium>, <ore:frameGtNeutronium>, <ore:frameGtNeutronium>],
		[<ore:plateTritanium>, <ore:circuitSuperconductor>, UVMotor, <ore:gearGtElectrumFlux>, <ore:frameGtNeutronium>, <ore:gearGtElectrumFlux>, UVMotor, <ore:circuitSuperconductor>, <ore:plateTritanium>],
		[<ore:plateTritanium>, <ore:circuitSuperconductor>, UVMotor, <ore:gearGtElectrumFlux>, <ore:frameGtNeutronium>, <ore:gearGtElectrumFlux>, UVMotor, <ore:circuitSuperconductor>, <ore:plateTritanium>],
		[<ore:plateTritanium>, <ore:circuitSuperconductor>, UVMotor, <ore:gearGtElectrumFlux>, <ore:frameGtNeutronium>, <ore:gearGtElectrumFlux>, UVMotor, <ore:circuitSuperconductor>, <ore:plateTritanium>],
		[<ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, <ore:frameGtNeutronium>, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>]
	]
);

#==================================================================#
#Oil Cracker
recipes.remove(<gregtech:gt.blockmachines:1160>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1160>, [
		[<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, pumpHV, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>],
		[<ore:plateStainlessSteel>, <gregtech:gt.blockcasings5:0>, <ore:circuitAdvanced>, <gregtech:gt.blockcasings5:0>, <ore:plateStainlessSteel>],
		[pumpHV, <ore:circuitAdvanced>, HullHV, <ore:circuitAdvanced>, pumpHV],
		[<ore:plateStainlessSteel>, <gregtech:gt.blockcasings5:0>, <ore:circuitAdvanced>, <gregtech:gt.blockcasings5:0>, <ore:plateStainlessSteel>],
		[<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, pumpHV, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]
	]
);

#==================================================================#
#Assembly Line
recipes.remove(<gregtech:gt.blockmachines:1170>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:1170>, [
		[<ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:stickLongHastelloyN>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>],
		[<ore:plateTungstenSteel>, <gregtech:gt.blockcasings2:5>, moduleConveyorIV, <ore:stickLongHastelloyN>, moduleConveyorIV, <gregtech:gt.blockcasings2:5>, <ore:plateTungstenSteel>],
		[<ore:plateTungstenSteel>, robotArmIV, <ore:circuitElite>, <ore:frameGtHastelloyN>, <ore:circuitElite>, robotArmIV, <ore:plateTungstenSteel>],
		[<ore:stickLongHastelloyN>, <ore:stickLongHastelloyN>, <ore:frameGtHastelloyN>, <gregtech:gt.blockmachines:215>, <ore:frameGtHastelloyN>, <ore:stickLongHastelloyN>, <ore:stickLongHastelloyN>],
		[<ore:plateTungstenSteel>, robotArmIV, <ore:circuitElite>, <ore:frameGtHastelloyN>, <ore:circuitElite>, robotArmIV, <ore:plateTungstenSteel>],
		[<ore:plateTungstenSteel>, <gregtech:gt.blockcasings2:5>, moduleConveyorIV, <ore:stickLongHastelloyN>, moduleConveyorIV, <gregtech:gt.blockcasings2:5>, <ore:plateTungstenSteel>],
		[<ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:stickLongHastelloyN>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>]
	]
);

#==================================================================#
#Diesel Engines
#DieselGen1
recipes.remove(<gregtech:gt.blockmachines:1171>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1171>, [
		[<ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>, <ore:frameGtTitanium>, <ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>],
		[<ore:plateDoubleTitanium>, pistonElectricEV, <ore:circuitData>, pistonElectricEV, <ore:plateDoubleTitanium>],
		[<ore:frameGtTitanium>, <ore:gearGtTitanium>, HullEV, <ore:gearGtTitanium>, <ore:frameGtTitanium>],
		[<ore:plateDoubleTitanium>, EVMotor, <ore:cableGt01Platinum>, EVMotor, <ore:plateDoubleTitanium>],
		[<ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>, <ore:frameGtTitanium>, <ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>]
	]
);
#DieselGen2
recipes.remove(<gregtech:gt.blockmachines:12230>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:12230>, [
		[<ore:plateTripleTungstenSteel>, <ore:plateTripleTungstenSteel>, <ore:frameGtTungstenSteel>, <ore:plateTripleTungstenSteel>, <ore:plateTripleTungstenSteel>],
		[<ore:plateTripleTungstenSteel>, pistonElectricIV, <ore:circuitElite>, pistonElectricIV, <ore:plateTripleTungstenSteel>],
		[<ore:frameGtTungstenSteel>, <ore:gearGtTungstenSteel>, HullIV, <ore:gearGtTungstenSteel>, <ore:frameGtTungstenSteel>],
		[<ore:plateTripleTungstenSteel>, IVMotor, <ore:cableGt01VanadiumGallium>, IVMotor, <ore:plateTripleTungstenSteel>],
		[<ore:plateTripleTungstenSteel>, <ore:plateTripleTungstenSteel>, <ore:frameGtTungstenSteel>, <ore:plateTripleTungstenSteel>, <ore:plateTripleTungstenSteel>]
	]
);

#==================================================================#
#LCR
recipes.remove(<gregtech:gt.blockmachines:1169>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1169>, [
		[<ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:pipeLargePolytetrafluoroethylene>, <ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>],
		[<ore:itemCasingStainlessSteel>, <ore:circuitAdvanced>, pumpHV, <ore:circuitAdvanced>, <ore:itemCasingStainlessSteel>],
		[<ore:rotorStainlessSteel>, HVMotor, <gregtech:gt.blockmachines:423>, HVMotor, <ore:rotorStainlessSteel>],
		[<ore:itemCasingStainlessSteel>, <ore:circuitAdvanced>, pumpHV, <ore:circuitAdvanced>, <ore:itemCasingStainlessSteel>],
		[<ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:pipeLargePolytetrafluoroethylene>, <ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>]
	]
);

#==================================================================#
#Implosion Compressor
recipes.remove(<gregtech:gt.blockmachines:1001>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1001>, [
		[<gregtech:gt.blockcasings3:4>, <ore:plateDenseSteel>, <ore:plateDenseSteel>, <ore:plateDenseSteel>, <gregtech:gt.blockcasings3:4>],
		[<ore:plateDenseSteel>, <ore:circuitAdvanced>, <ore:frameGtSteel>, <ore:circuitAdvanced>, <ore:plateDenseSteel>],
		[<ore:plateDenseSteel>, pistonElectricHV, <gregtech:gt.blockmachines:243>, pistonElectricHV, <ore:plateDenseSteel>],
		[<ore:plateDenseSteel>, <ore:circuitAdvanced>, <ore:frameGtSteel>, <ore:circuitAdvanced>, <ore:plateDenseSteel>],
		[<gregtech:gt.blockcasings3:4>, <ore:plateDenseSteel>, <ore:plateDenseSteel>, <ore:plateDenseSteel>, <gregtech:gt.blockcasings3:4>]
	]
);

#==================================================================#
#Vacuum Freezer
recipes.remove(<gregtech:gt.blockmachines:1002>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1002>, [
		[<gregtech:gt.blockcasings2:1>, <ore:plateDenseAluminium>, <ore:plateDenseAluminium>, <ore:plateDenseAluminium>, <gregtech:gt.blockcasings2:1>],
		[<ore:plateDenseAluminium>, <ore:circuitData>, <ore:frameGtAluminium>, <ore:circuitData>, <ore:plateDenseAluminium>],
		[<ore:plateDenseAluminium>, pumpHV, <gregtech:gt.blockmachines:273>, pumpHV, <ore:plateDenseAluminium>],
		[<ore:plateDenseAluminium>, <ore:circuitData>, <ore:frameGtAluminium>, <ore:circuitData>, <ore:plateDenseAluminium>],
		[<gregtech:gt.blockcasings2:1>, <ore:plateDenseAluminium>, <ore:plateDenseAluminium>, <ore:plateDenseAluminium>, <gregtech:gt.blockcasings2:1>]
	]
);

#==================================================================#
#Multi Furnace
recipes.remove(<gregtech:gt.blockmachines:1003>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1003>, [
		[<gregtech:gt.blockcasings:11>, <ore:plateTripleInvar>, <ore:plateTripleInvar>, <ore:plateTripleInvar>, <gregtech:gt.blockcasings:11>],
		[<ore:plateTripleInvar>, <ore:circuitAdvanced>, <ore:frameGtInvar>, <ore:circuitAdvanced>, <ore:plateTripleInvar>],
		[<ore:plateTripleInvar>, <gregtech:gt.blockcasings5:0>, <gregtech:gt.blockmachines:263>, <gregtech:gt.blockcasings5:0>, <ore:plateTripleInvar>],
		[<ore:plateTripleInvar>, <ore:circuitAdvanced>, <ore:frameGtInvar>, <ore:circuitAdvanced>, <ore:plateTripleInvar>],
		[<gregtech:gt.blockcasings:11>, <ore:plateTripleInvar>, <ore:plateTripleInvar>, <ore:plateTripleInvar>, <gregtech:gt.blockcasings:11>]
	]
);

#==================================================================#
#Boilers
#Steel
recipes.remove(<gregtech:gt.blockmachines:1021>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1021>, [
		[<ore:plateDoubleSteel>, <ore:stickLongSteel>, <ore:stickLongSteel>, <ore:stickLongSteel>, <ore:plateDoubleSteel>],
		[<ore:stickLongSteel>, <ore:circuitAdvanced>, <ore:pipeLargeSteel>, <ore:circuitAdvanced>, <ore:stickLongSteel>],
		[<ore:stickLongSteel>, <ore:pipeLargeSteel>, HullHV, <ore:pipeLargeSteel>, <ore:stickLongSteel>],
		[<ore:stickLongSteel>, <ore:circuitAdvanced>, <gregtech:gt.blockcasings3:14>, <ore:circuitAdvanced>, <ore:stickLongSteel>],
		[<ore:plateDoubleSteel>, <ore:stickLongSteel>, <ore:stickLongSteel>, <ore:stickLongSteel>, <ore:plateDoubleSteel>]
	]
);
#Titanium
recipes.remove(<gregtech:gt.blockmachines:1022>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1022>, [
		[<ore:plateDoubleTitanium>, <ore:stickLongTitanium>, <ore:stickLongTitanium>, <ore:stickLongTitanium>, <ore:plateDoubleTitanium>],
		[<ore:stickLongTitanium>, <ore:circuitData>, <ore:pipeLargeTitanium>, <ore:circuitData>, <ore:stickLongTitanium>],
		[<ore:stickLongTitanium>, <ore:pipeLargeTitanium>, HullEV, <ore:pipeLargeTitanium>, <ore:stickLongTitanium>],
		[<ore:stickLongTitanium>, <ore:circuitData>, <gregtech:gt.blockcasings4:3>, <ore:circuitData>, <ore:stickLongTitanium>],
		[<ore:plateDoubleTitanium>, <ore:stickLongTitanium>, <ore:stickLongTitanium>, <ore:stickLongTitanium>, <ore:plateDoubleTitanium>]
	]
);
#TungstenSteel
recipes.remove(<gregtech:gt.blockmachines:1023>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1023>, [
		[<ore:plateDoubleTungstenSteel>, <ore:stickLongTungstenSteel>, <ore:stickLongTungstenSteel>, <ore:stickLongTungstenSteel>, <ore:plateDoubleTungstenSteel>],
		[<ore:stickLongTungstenSteel>, <ore:circuitElite>, <ore:pipeLargeTungstenSteel>, <ore:circuitElite>, <ore:stickLongTungstenSteel>],
		[<ore:stickLongTungstenSteel>, <ore:pipeLargeTungstenSteel>, HullIV, <ore:pipeLargeTungstenSteel>, <ore:stickLongTungstenSteel>],
		[<ore:stickLongTungstenSteel>, <ore:circuitElite>, <gregtech:gt.blockcasings3:15>, <ore:circuitElite>, <ore:stickLongTungstenSteel>],
		[<ore:plateDoubleTungstenSteel>, <ore:stickLongTungstenSteel>, <ore:stickLongTungstenSteel>, <ore:stickLongTungstenSteel>, <ore:plateDoubleTungstenSteel>]
	]
);

#==================================================================#
#Distillation_Tower
recipes.remove(<gregtech:gt.blockmachines:1126>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1126>, [
		[<ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:pipeLargeStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>],
		[<ore:plateDoubleStainlessSteel>, <ore:circuitData>, pumpEV, <ore:circuitData>, <ore:plateDoubleStainlessSteel>],
		[<ore:pipeLargeStainlessSteel>, pumpEV, HullEV, pumpEV,  <ore:pipeLargeStainlessSteel>],
		[<ore:plateDoubleStainlessSteel>, <ore:circuitData>, pumpEV, <ore:circuitData>, <ore:plateDoubleStainlessSteel>],
		[<ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:pipeLargeStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>]
	]
);

#==================================================================#
#Centrifuge
recipes.remove(<gregtech:gt.blockmachines:12193>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:12193>, [
		[<ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:gearGtStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>],
		[<ore:plateDoubleStainlessSteel>, <ore:circuitData>, EVMotor, <ore:circuitData>, <ore:plateDoubleStainlessSteel>],
		[<ore:gearGtStainlessSteel>, EVMotor, <gregtech:gt.blockmachines:364>, EVMotor, <ore:gearGtStainlessSteel>],
		[<ore:plateDoubleStainlessSteel>, <ore:circuitData>, EVMotor, <ore:circuitData>, <ore:plateDoubleStainlessSteel>],
		[<ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:gearGtStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>]
	]
);

#==================================================================#
#Electrolyzer
recipes.remove(<gregtech:gt.blockmachines:12194>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:12194>, [
		[<ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>, <ore:stickLongStellite>, <ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>],
		[<ore:plateDoubleTitanium>, <ore:circuitData>, <ore:wireGt04Aluminium>, <ore:circuitData>, <ore:plateDoubleTitanium>],
		[<ore:stickLongStellite>, <ore:wireGt04Aluminium>, <gregtech:gt.blockmachines:374>, <ore:wireGt04Aluminium>, <ore:stickLongStellite>],
		[<ore:plateDoubleTitanium>, <ore:circuitData>, <ore:wireGt04Aluminium>, <ore:circuitData>, <ore:plateDoubleTitanium>],
		[<ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>, <ore:stickLongStellite>, <ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>]
	]
);

#==================================================================#
#Flotation Unit
recipes.remove(<gregtech:gt.blockmachines:12192>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:12192>, [
		[<ore:plateTripleTitanium>, <ore:plateTripleTitanium>, <ore:pipeHugeTitanium>, <ore:plateTripleTitanium>, <ore:plateTripleTitanium>],
		[<ore:plateTripleTitanium>, <gregtech:gt.blockcasings5:2>, pumpEV, <gregtech:gt.blockcasings5:2>, <ore:plateTripleTitanium>],
		[<gregtech:gt.blockcasings2:14>, <ore:circuitData>, HullEV, <ore:circuitData>, <gregtech:gt.blockcasings2:14>],
		[<ore:plateTripleTitanium>, <gregtech:gt.blockcasings5:2>, pumpEV, <gregtech:gt.blockcasings5:2>, <ore:plateTripleTitanium>],
		[<ore:plateTripleTitanium>, <ore:plateTripleTitanium>, <ore:pipeHugeTitanium>, <ore:plateTripleTitanium>, <ore:plateTripleTitanium>]
	]
);

#==================================================================#
#Cleanroom
recipes.remove(<gregtech:gt.blockmachines:1172>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:1172>, [
		[<ore:platePlastic>, <gregtech:gt.metaitem.01:32729>, <gregtech:gt.metaitem.01:32729>, <gregtech:gt.metaitem.01:32729>, <ore:platePlastic>],
		[<ore:platePlastic>, <ore:rotorStainlessSteel>, <ore:rotorStainlessSteel>, <ore:rotorStainlessSteel>, <ore:platePlastic>],
		[<ore:frameGtStainlessSteel>, HVMotor, HVMotor, HVMotor, <ore:frameGtStainlessSteel>],
		[<ore:platePlastic>, <ore:circuitAdvanced>, HullHV, <ore:circuitAdvanced>, <ore:platePlastic>],
		[<ore:platePlastic>, <ore:platePlastic>, <ore:frameGtStainlessSteel>, <ore:platePlastic>, <ore:platePlastic>]
	]
);

#==================================================================#
#Solar Panels
#Solar Panel IC2 1 EU
recipes.remove(<gregtech:gt.metaitem.01:32750>);
recipes.addShaped(<gregtech:gt.metaitem.01:32750>, [
		[<gregtech:gt.metaitem.03:32033>, <IC2:blockAlloyGlass>, <gregtech:gt.metaitem.03:32033>], 
		[<ore:circuitPrimitive>, <ore:plateAlloyCarbon>, <ore:circuitPrimitive>], 
		[<ore:wireGt01RedAlloy>, <ore:plateDoubleAluminium>, <ore:wireGt01RedAlloy>]
	]
);
#Solar Panel ULV 8 EU
recipes.remove(<gregtech:gt.metaitem.01:32751>);
recipes.addShaped(<gregtech:gt.metaitem.01:32751>, [
		[<gregtech:gt.metaitem.01:32750>, <gregtech:gt.metaitem.03:32033>, <gregtech:gt.metaitem.01:32750>], 
		[<ore:circuitBasic>, <ore:plateGalliumArsenide>, <ore:circuitBasic>], 
		[<ore:wireGt01Tin>, <ore:plateDoubleStainlessSteel>, <ore:wireGt01Tin>]
	]
);
#Solar Panel LV 32 EU
recipes.remove(<gregtech:gt.metaitem.01:32752>);
LargeCrafting.addShaped(1, <gregtech:gt.metaitem.01:32752>, [
		[null, <ore:wireGt01SuperconductorMV>, <ore:plateDoubleHastelloyW>, <ore:wireGt01SuperconductorMV>, null],
		[null, <gregtech:gt.metaitem.03:32034>, <ore:platePolytetrafluoroethylene>, <gregtech:gt.metaitem.03:32034>, null],
		[null, <ore:circuitGood>, <gregtech:gt.metaitem.01:32751>, <ore:circuitGood>, null],
		[null, <gregtech:gt.metaitem.03:32034>, <ore:platePolytetrafluoroethylene>, <gregtech:gt.metaitem.03:32034>, null],
		[null, <ore:wireGt01SuperconductorMV>, <ore:plateDoubleHastelloyW>, <ore:wireGt01SuperconductorMV>, null]
	]
);
#Solar Panel MV 128 EU
recipes.remove(<gregtech:gt.metaitem.01:32753>);
LargeCrafting.addShaped(1, <gregtech:gt.metaitem.01:32753>, [
		[null, <ore:wireGt01SuperconductorHV>, <ore:plateDoubleIncoloyMA956>, <ore:wireGt01SuperconductorHV>, null],
		[null, <gregtech:gt.metaitem.03:32034>, <ore:plateEpoxid>, <gregtech:gt.metaitem.03:32034>, null],
		[<gregtech:gt.metaitem.03:32113>, <ore:circuitAdvanced>, <gregtech:gt.metaitem.01:32752>, <ore:circuitAdvanced>, <gregtech:gt.metaitem.03:32113>],
		[null, <gregtech:gt.metaitem.03:32034>, <ore:plateEpoxid>, <gregtech:gt.metaitem.03:32034>, null],
		[null, <ore:wireGt01SuperconductorHV>, <ore:plateDoubleIncoloyMA956>, <ore:wireGt01SuperconductorHV>, null]
	]
);
#Solar Panel HV 512 EU
LargeCrafting.addShaped(3, <gregtech:gt.metaitem.01:32754>, [
		[null, null, null, <gregtech:gt.metaitem.03:32115>, null, null, null],
		[null, null, <ore:wireGt01SuperconductorEV>, <ore:plateDoubleTitanium>, <ore:wireGt01SuperconductorEV>, null, null],
		[null, null, <gregtech:gt.metaitem.03:32034>, <ore:plateIndiumGalliumPhosphide>, <gregtech:gt.metaitem.03:32034>, null, null],
		[null, <ore:circuitData>, <ore:circuitData>, <gregtech:gt.metaitem.01:32753>, <ore:circuitData>,  <ore:circuitData>, null],
		[null, null, <gregtech:gt.metaitem.03:32034>, <ore:plateIndiumGalliumPhosphide>, <gregtech:gt.metaitem.03:32034>, null, null],
		[null, null, <ore:wireGt01SuperconductorEV>, <ore:plateDoubleTitanium>, <ore:wireGt01SuperconductorEV>, null, null],
		[null, null, null, <gregtech:gt.metaitem.03:32115>, null, null, null]
	]
);
#Solar Panel EV 2048 EU
LargeCrafting.addShaped(3, <gregtech:gt.metaitem.01:32755>, [
		[null, null, null, <gregtech:gt.metaitem.03:32051>, null, null, null],
		[null, <ore:wireGt01SuperconductorIV>, <ore:plateTripleSilicon>, <ore:plateDoubleDesh>, <ore:plateTripleSilicon>, <ore:wireGt01SuperconductorIV>, null],
		[null, null, <gregtech:gt.metaitem.03:32130>, <ore:platePolybenzimidazole>, <gregtech:gt.metaitem.03:32130>, null, null],
		[<ore:wireGt01SuperconductorIV>, <ore:circuitElite>, <ore:circuitElite>, <gregtech:gt.metaitem.01:32754>, <ore:circuitElite>, <ore:circuitElite>, <ore:wireGt01SuperconductorIV>],
		[null, null, <gregtech:gt.metaitem.03:32130>, <ore:platePolybenzimidazole>, <gregtech:gt.metaitem.03:32130>, null, null],
		[null, <ore:wireGt01SuperconductorIV>, <ore:plateTripleSilicon>, <ore:plateDoubleDesh>, <ore:plateTripleSilicon>, <ore:wireGt01SuperconductorIV>, null],
		[null, null, null, <gregtech:gt.metaitem.03:32051>, null, null, null]
	]
);
#Solar Panel IV 8192 EU
LargeCrafting.addShaped(3, <gregtech:gt.metaitem.01:32756>, [
		[null, null, <AdvancedSolarPanel:asp_crafting_items>, <gregtech:gt.metaitem.03:32053>, <AdvancedSolarPanel:asp_crafting_items>, null, null],
		[null, <ore:wireGt01SuperconductorLuV>, <gregtech:gt.metaitem.03:32035>, <ore:plateDoubleHastelloyN>, <gregtech:gt.metaitem.03:32035>, <ore:wireGt01SuperconductorLuV>, null],
		[null, <ore:plateQuadrupleSilicon>, <gregtech:gt.metaitem.03:32035>, <ore:plateDoublePolybenzimidazole>, <gregtech:gt.metaitem.03:32035>, <ore:plateQuadrupleSilicon>, null],
		[<ore:wireGt01SuperconductorLuV>, <ore:circuitMaster>, <ore:circuitMaster>, <gregtech:gt.metaitem.01:32755>, <ore:circuitMaster>, <ore:circuitMaster>, <ore:wireGt01SuperconductorLuV>],
		[null, <ore:plateQuadrupleSilicon>, <gregtech:gt.metaitem.03:32035>, <ore:plateDoublePolybenzimidazole>, <gregtech:gt.metaitem.03:32035>, <ore:plateQuadrupleSilicon>, null],
		[null, <ore:wireGt01SuperconductorLuV>, <gregtech:gt.metaitem.03:32035>, <ore:plateDoubleHastelloyN>, <gregtech:gt.metaitem.03:32035>, <ore:wireGt01SuperconductorLuV>, null],
		[null, null, <AdvancedSolarPanel:asp_crafting_items>, <gregtech:gt.metaitem.03:32053>, <AdvancedSolarPanel:asp_crafting_items>, null, null]
	]
);
#Solar Panel LuV 32768 EU
LargeCrafting.addShaped(5, <gregtech:gt.metaitem.01:32757>, [
		[null, null, null, <AdvancedSolarPanel:asp_crafting_items:1>, <gregtech:gt.metaitem.03:32059>, <AdvancedSolarPanel:asp_crafting_items:1>, null, null, null],
		[null, null, null, <ore:wireGt02SuperconductorZPM>, <ore:circuitUltimate>, <ore:wireGt02SuperconductorZPM>, null, null, null],
		[null, null, <ore:wireGt02SuperconductorZPM>, <gregtech:gt.metaitem.03:32151>, <ore:plateTripleOriharukon>, <gregtech:gt.metaitem.03:32151>, <ore:wireGt02SuperconductorZPM>, null, null],
		[null, null, <ore:plateQuintupleSilicon>, <gregtech:gt.metaitem.03:32151>, <gregtech:gt.metaitem.01:32756>, <gregtech:gt.metaitem.03:32151>, <ore:plateQuintupleSilicon>, null, null],
		[null, <ore:wireGt02SuperconductorZPM>, <ore:circuitUltimate>, <ore:circuitUltimate>, <ore:plateTriplePolybenzimidazole>, <ore:circuitUltimate>, <ore:circuitUltimate>, <ore:wireGt02SuperconductorZPM>, null],
		[null, null, <ore:plateQuintupleSilicon>, <gregtech:gt.metaitem.03:32151>, <gregtech:gt.metaitem.01:32756>, <gregtech:gt.metaitem.03:32151>, <ore:plateQuintupleSilicon>, null, null],
		[null, null, <ore:wireGt02SuperconductorZPM>, <gregtech:gt.metaitem.03:32151>, <ore:plateTripleOriharukon>, <gregtech:gt.metaitem.03:32151>, <ore:wireGt02SuperconductorZPM>, null, null],
		[null, null, null, <ore:wireGt02SuperconductorZPM>, <ore:circuitUltimate>, <ore:wireGt02SuperconductorZPM>, null, null, null],
		[null, null, null, <AdvancedSolarPanel:asp_crafting_items:1>, <gregtech:gt.metaitem.03:32059>, <AdvancedSolarPanel:asp_crafting_items:1>, null, null, null]
	]
);
#Solar Panel ZPM 131072 EU
LargeCrafting.addShaped(5, <gregtech:gt.metaitem.01:32758>, [
		[null, null, null, <ore:wireGt04SuperconductorUV>, <gregtech:gt.metaitem.03:32048>, <ore:wireGt04SuperconductorUV>, null, null, null],
		[null, null, <gregtech:gt.metaitem.03:32161>, <ore:wireGt04SuperconductorUV>, <ore:circuitSuperconductor>, <ore:wireGt04SuperconductorUV>, <gregtech:gt.metaitem.03:32161>, null, null],
		[null, null, <ore:wireGt04SuperconductorUV>, <gregtech:gt.metaitem.03:32153>, <ore:plateTripleNaquadria>, <gregtech:gt.metaitem.03:32153>, <ore:wireGt04SuperconductorUV>, null, null],
		[null, null, <AdvancedSolarPanel:asp_crafting_items:4>, <gregtech:gt.metaitem.03:32153>, <gregtech:gt.metaitem.01:32757>, <gregtech:gt.metaitem.03:32153>, <AdvancedSolarPanel:asp_crafting_items:4>, null, null],
		[null, <ore:plateTripleNaquadria>, <ore:circuitSuperconductor>, <ore:circuitSuperconductor>, <ore:plateQuadruplePolybenzimidazole>, <ore:circuitSuperconductor>, <ore:circuitSuperconductor>, <ore:plateTripleNaquadria>, null],
		[null, null, <AdvancedSolarPanel:asp_crafting_items:4>, <gregtech:gt.metaitem.03:32153>, <gregtech:gt.metaitem.01:32757>, <gregtech:gt.metaitem.03:32153>, <AdvancedSolarPanel:asp_crafting_items:4>, null, null],
		[null, null, <ore:wireGt04SuperconductorUV>, <gregtech:gt.metaitem.03:32153>, <ore:plateTripleNaquadria>, <gregtech:gt.metaitem.03:32153>, <ore:wireGt04SuperconductorUV>, null, null],
		[null, null, <gregtech:gt.metaitem.03:32161>, <ore:wireGt04SuperconductorUV>, <ore:circuitSuperconductor>, <ore:wireGt04SuperconductorUV>, <gregtech:gt.metaitem.03:32161>, null, null],
		[null, null, null, <ore:wireGt04SuperconductorUV>, <gregtech:gt.metaitem.03:32048>, <ore:wireGt04SuperconductorUV>, null, null, null]
	]
);
#Solar Panel UV 524288 EU
LargeCrafting.addShaped(5, <gregtech:gt.metaitem.01:32759>, [
		[null, null, <ore:wireGt08Superconductor>, <ore:plateDenseSilicon>, <gregtech:gt.metaitem.03:32068>, <ore:plateDenseSilicon>, <ore:wireGt08Superconductor>, null, null],
		[null, <gregtech:gt.metaitem.03:32163>, <ore:wireGt08Superconductor>, <gregtech:gt.metaitem.03:32155>, <ore:circuitInfinite>,<gregtech:gt.metaitem.03:32155>, <ore:wireGt08Superconductor>, <gregtech:gt.metaitem.03:32163>, null],
		[null, <ore:wireGt08Superconductor>, <gregtech:gt.metaitem.03:32155>, <ore:plateDenseSilicon>, <ore:plateQuadrupleNeutronium>, <ore:plateDenseSilicon>, <gregtech:gt.metaitem.03:32155>, <ore:wireGt08Superconductor>, null],
		[null, <ore:wireGt08Superconductor>, <ore:plateQuadrupleNeutronium>, <ore:plateDenseSilicon>, <gregtech:gt.metaitem.01:32758>, <ore:plateDenseSilicon>, <ore:plateQuadrupleNeutronium>, <ore:wireGt08Superconductor>, null],
		[null, <ore:plateDensePolybenzimidazole>, <ore:circuitInfinite>, <ore:circuitInfinite>, <ore:plateDensePolybenzimidazole>, <ore:circuitInfinite>, <ore:circuitInfinite>, <ore:plateDensePolybenzimidazole>, null],
		[null, <ore:wireGt08Superconductor>, <ore:plateQuadrupleNeutronium>, <ore:plateDenseSilicon>, <gregtech:gt.metaitem.01:32758>, <ore:plateDenseSilicon>, <ore:plateQuadrupleNeutronium>, <ore:wireGt08Superconductor>, null],
		[null, <ore:wireGt08Superconductor>, <gregtech:gt.metaitem.03:32155>, <ore:plateDenseSilicon>, <ore:plateQuadrupleNeutronium>, <ore:plateDenseSilicon>, <gregtech:gt.metaitem.03:32155>, <ore:wireGt08Superconductor>, null],
		[null, <gregtech:gt.metaitem.03:32163>, <ore:wireGt08Superconductor>, <gregtech:gt.metaitem.03:32155>, <ore:circuitInfinite>, <gregtech:gt.metaitem.03:32155>, <ore:wireGt08Superconductor>, <gregtech:gt.metaitem.03:32163>, null],
		[null, null, <ore:wireGt08Superconductor>, <ore:plateDenseSilicon>, <gregtech:gt.metaitem.03:32068>, <ore:plateDenseSilicon>, <ore:wireGt08Superconductor>, null, null]
	]
);

#==================================================================#
#Casings
#LuV
recipes.remove(<gregtech:gt.blockcasings:6>);
LargeCrafting.addShaped(1, <gregtech:gt.blockcasings:6>, [
		[<ore:plateDoubleRhodium-PlatedPalladium>, <ore:plateHastelloyN>, <ore:plateHastelloyN>, <ore:plateHastelloyN>, <ore:plateDoubleRhodium-PlatedPalladium>],
		[<ore:plateHastelloyN>, <ore:stickRhodium-PlatedPalladium>, <ore:screwChrome>, <ore:stickRhodium-PlatedPalladium>, <ore:plateHastelloyN>],
		[<ore:plateHastelloyN>, <ore:screwChrome>, <ore:frameGtChrome>, <ore:screwChrome>, <ore:plateHastelloyN>],
		[<ore:plateHastelloyN>, <ore:stickRhodium-PlatedPalladium>, <ore:screwChrome>, <ore:stickRhodium-PlatedPalladium>, <ore:plateHastelloyN>],
		[<ore:plateDoubleRhodium-PlatedPalladium>, <ore:plateHastelloyN>, <ore:plateHastelloyN>, <ore:plateHastelloyN>, <ore:plateDoubleRhodium-PlatedPalladium>]
	]
);
#ZPM
recipes.remove(<gregtech:gt.blockcasings:7>);
LargeCrafting.addShaped(3, <gregtech:gt.blockcasings:7>, [
		[<ore:plateDoubleIridium>, <ore:plateIridium>, <ore:plateLafiumCompound>, <ore:plateLafiumCompound>, <ore:plateLafiumCompound>, <ore:plateIridium>, <ore:plateDoubleIridium>],
		[<ore:plateIridium>, <ore:stickIridium>, <ore:screwIridium>, null, <ore:screwIridium>, <ore:stickIridium>, <ore:plateIridium>],
		[<ore:plateLafiumCompound>, <ore:screwIridium>, <ore:stickIridium>, <ore:screwIridium>, <ore:stickIridium>, <ore:screwIridium>, <ore:plateLafiumCompound>],
		[<ore:plateLafiumCompound>, null, <ore:screwIridium>, <ore:frameGtMeteoricSteel>, <ore:screwIridium>, null, <ore:plateLafiumCompound>],
		[<ore:plateLafiumCompound>, <ore:screwIridium>, <ore:stickIridium>, <ore:screwIridium>, <ore:stickIridium>, <ore:screwIridium>, <ore:plateLafiumCompound>],
		[<ore:plateIridium>, <ore:stickIridium>, <ore:screwIridium>, null, <ore:screwIridium>, <ore:stickIridium>, <ore:plateIridium>],
		[<ore:plateDoubleIridium>, <ore:plateIridium>, <ore:plateLafiumCompound>, <ore:plateLafiumCompound>, <ore:plateLafiumCompound>, <ore:plateIridium>, <ore:plateDoubleIridium>]
	]
);
#UV
recipes.remove(<gregtech:gt.blockcasings:8>);
LargeCrafting.addShaped(5, <gregtech:gt.blockcasings:8>, [
		[<ore:plateDoubleOsmium>, <ore:plateDoubleOsmium>, <ore:plateCinobiteA243>, <ore:plateCinobiteA243>, <ore:plateCinobiteA243>, <ore:plateCinobiteA243>, <ore:plateCinobiteA243>, <ore:plateDoubleOsmium>, <ore:plateDoubleOsmium>],
		[<ore:plateDoubleOsmium>, <ore:stickLongOsmium>, <ore:screwOsmium>, null, null, null, <ore:screwOsmium>, <ore:stickLongOsmium>, <ore:plateDoubleOsmium>],
		[<ore:plateCinobiteA243>, <ore:screwOsmium>, <ore:stickLongOsmium>, <ore:screwOsmium>, null, <ore:screwOsmium>, <ore:stickLongOsmium>, <ore:screwOsmium>, <ore:plateCinobiteA243>],
		[<ore:plateCinobiteA243>, null, <ore:screwOsmium>, <ore:stickLongOsmium>, <ore:screwOsmium>, <ore:stickLongOsmium>, <ore:screwOsmium>, null, <ore:plateCinobiteA243>],
		[<ore:plateCinobiteA243>, null, null, <ore:screwOsmium>, <ore:frameGtDraconium>, <ore:screwOsmium>, null, null, <ore:plateCinobiteA243>],
		[<ore:plateCinobiteA243>, null, <ore:screwOsmium>, <ore:stickLongOsmium>, <ore:screwOsmium>, <ore:stickLongOsmium>, <ore:screwOsmium>, null, <ore:plateCinobiteA243>],
		[<ore:plateCinobiteA243>, <ore:screwOsmium>, <ore:stickLongOsmium>, <ore:screwOsmium>, null, <ore:screwOsmium>, <ore:stickLongOsmium>, <ore:screwOsmium>, <ore:plateCinobiteA243>],
		[<ore:plateDoubleOsmium>, <ore:stickLongOsmium>, <ore:screwOsmium>, null, null, null, <ore:screwOsmium>, <ore:stickLongOsmium>, <ore:plateDoubleOsmium>],
		[<ore:plateDoubleOsmium>, <ore:plateDoubleOsmium>, <ore:plateCinobiteA243>, <ore:plateCinobiteA243>, <ore:plateCinobiteA243>, <ore:plateCinobiteA243>, <ore:plateCinobiteA243>, <ore:plateDoubleOsmium>, <ore:plateDoubleOsmium>]
	]
);
#UHV
recipes.remove(<gregtech:gt.blockcasings:9>);
LargeCrafting.addShaped(5, <gregtech:gt.blockcasings:9>, [
		[<ore:plateTripleNeutronium>, <ore:plateTripleNeutronium>, <ore:plateDoublePikyonium64B>, <ore:plateDoublePikyonium64B>, <ore:plateDoublePikyonium64B>, <ore:plateDoublePikyonium64B>, <ore:plateDoublePikyonium64B>, <ore:plateTripleNeutronium>, <ore:plateTripleNeutronium>],
		[<ore:plateTripleNeutronium>, <ore:stickLongNeutronium>, <ore:screwNeutronium>, null, null, null, <ore:screwNeutronium>, <ore:stickLongNeutronium>, <ore:plateTripleNeutronium>],
		[<ore:plateDoublePikyonium64B>, <ore:screwNeutronium>, <ore:stickLongNeutronium>, <ore:screwNeutronium>, null, <ore:screwNeutronium>, <ore:stickLongNeutronium>, <ore:screwNeutronium>, <ore:plateDoublePikyonium64B>],
		[<ore:plateDoublePikyonium64B>, null, <ore:screwNeutronium>, <ore:stickLongNeutronium>, <ore:screwNeutronium>, <ore:stickLongNeutronium>, <ore:screwNeutronium>, null, <ore:plateDoublePikyonium64B>],
		[<ore:plateDoublePikyonium64B>, null, null, <ore:screwNeutronium>, <ore:frameGtQuantium>, <ore:screwNeutronium>, null, null, <ore:plateDoublePikyonium64B>],
		[<ore:plateDoublePikyonium64B>, null, <ore:screwNeutronium>, <ore:stickLongNeutronium>, <ore:screwNeutronium>, <ore:stickLongNeutronium>, <ore:screwNeutronium>, null, <ore:plateDoublePikyonium64B>],
		[<ore:plateDoublePikyonium64B>, <ore:screwNeutronium>, <ore:stickLongNeutronium>, <ore:screwNeutronium>, null, <ore:screwNeutronium>, <ore:stickLongNeutronium>, <ore:screwNeutronium>, <ore:plateDoublePikyonium64B>],
		[<ore:plateTripleNeutronium>, <ore:stickLongNeutronium>, <ore:screwNeutronium>, null, null, null, <ore:screwNeutronium>, <ore:stickLongNeutronium>, <ore:plateTripleNeutronium>],
		[<ore:plateTripleNeutronium>, <ore:plateTripleNeutronium>, <ore:plateDoublePikyonium64B>, <ore:plateDoublePikyonium64B>, <ore:plateDoublePikyonium64B>, <ore:plateDoublePikyonium64B>, <ore:plateDoublePikyonium64B>, <ore:plateTripleNeutronium>, <ore:plateTripleNeutronium>]
	]
);

#==================================================================#

<gregtech:gt.blockmachines:12736>.displayName = "Mega Input Hatch";
<gregtech:gt.blockmachines:12737>.displayName = "Mega Output Hatch";

print("Initialized 'GregTech.zs'");