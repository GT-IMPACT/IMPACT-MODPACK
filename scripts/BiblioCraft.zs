#=============#
# BiblioCraft #
#=============#

#==================================================================#
#Imports
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import mods.gregtech.CuttingSaw;

print("Initializing 'BiblioCraft.zs'...");

#==================================================================#
#Remove Recipes
// --- Printing Press
recipes.remove(<BiblioCraft:Printing Press>);

// --- Print Press Case
recipes.remove(<BiblioCraft:item.BiblioChase>);

// --- Typesetting Table
recipes.remove(<BiblioCraft:Typesetting Machine>);

// --- Framed Chest
recipes.remove(<BiblioCraft:tile.BiblioFramedChest>);

// --- Painting Press
recipes.remove(<BiblioCraft:BiblioPaintPress>);

// --- Fancy Gold Latern
recipes.remove(<BiblioCraft:BiblioLantern>);

// --- Fancy Iron Latern
recipes.remove(<BiblioCraft:BiblioIronLantern>);

// --- Fancy Gold Lamp
recipes.remove(<BiblioCraft:BiblioLamp>);

// --- Fancy Iron Lamp
recipes.remove(<BiblioCraft:BiblioIronLamp>);

// --- Armor Stand
recipes.remove(<BiblioCraft:Armor Stand>);

// --- Desk Bell
recipes.remove(<BiblioCraft:BiblioBell>);

// --- Cookie Jar
recipes.remove(<BiblioCraft:BiblioStuffs>);

// --- Diner Plate
recipes.remove(<BiblioCraft:BiblioStuffs:2>);

// --- Framing Saw
recipes.remove(<BiblioCraft:item.FramingSaw>);

// --- Frame Sheet
recipes.remove(<BiblioCraft:item.FramingSheet>);

// --- Frame Board
recipes.remove(<BiblioCraft:item.FramingBoard>);

// --- Drafting Compas
recipes.remove(<BiblioCraft:item.BiblioMapTool>);

// --- Waypoint Compas
recipes.remove(<BiblioCraft:item.BiblioWayPointCompass>);

// --- Monocle
recipes.remove(<BiblioCraft:item.BiblioGlasses:2>);

// --- Plum Line
recipes.remove(<BiblioCraft:item.PlumbLine>);

// --- Reading Glasses
recipes.remove(<BiblioCraft:item.BiblioGlasses>);

// --- Hand Drill
recipes.remove(<BiblioCraft:item.HandDrill>);

// --- Screw Gun
recipes.remove(<BiblioCraft:item.BiblioDrill>);

// --- Tape Measure Real
recipes.remove(<BiblioCraft:item.tape>);

// --- Tape Maesure
recipes.remove(<BiblioCraft:item.tapeMeasure>);

// --- Clipboard
recipes.remove(<BiblioCraft:item.BiblioClipboard>);

// --- Sloted Book
recipes.remove(<BiblioCraft:item.SlottedBook>);

// --- Atlas
recipes.remove(<BiblioCraft:item.AtlasBook>);

#==================================================================#
#Add Recipes
// --- Print Press Case
recipes.addShaped(<BiblioCraft:item.BiblioChase>, [
		[<ore:stickWoodSealed>, <ore:stickWoodSealed>, <ore:stickWoodSealed>],
		[<ore:stickWoodSealed>, null, <ore:stickWoodSealed>],
		[<ore:stickWoodSealed>, <ore:stickWoodSealed>, <ore:stickWoodSealed>]
	]
);
// --- Typesetting Table
recipes.addShaped(<BiblioCraft:Typesetting Machine>, [
		[<ore:plateAluminium>, <BiblioCraft:item.BiblioChase>, <ore:plateAluminium>],
		[<ore:plateWoodSealed>, <ore:frameGtWoodSealed>, <ore:plateWoodSealed>],
		[<ore:plateWoodSealed>, <ore:plateWoodSealed>, <ore:plateWoodSealed>]
	]
);
// --- Framed Chest
recipes.addShaped(<BiblioCraft:tile.BiblioFramedChest>, [
		[<BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingSheet>],
		[<ore:screwIron>, <BiblioCraft:BiblioLabel:6>, <ore:screwIron>],
		[<BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingSheet>]
	]
);
// --- Oak Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler>, [
		[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
		[<minecraft:wooden_slab>, <gregtech:gt.metaitem.02:32470>, <minecraft:wooden_slab>],
		[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]
	]
);
// --- Spruce Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler:1>, [
		[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
		[<minecraft:wooden_slab:1>, <gregtech:gt.metaitem.02:32471>, <minecraft:wooden_slab:1>],
		[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]
	]
);
// --- Birce Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler:2>, [
		[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
		[<minecraft:wooden_slab:2>, <gregtech:gt.metaitem.02:32472>, <minecraft:wooden_slab:2>],
		[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]
	]
);
// --- Jungle Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler:3>, [
		[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
		[<minecraft:wooden_slab:3>, <gregtech:gt.metaitem.02:32473>, <minecraft:wooden_slab:3>],
		[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]
	]
);
// --- Arcacia Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler:4>, [
		[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
		[<minecraft:wooden_slab:4>, <gregtech:gt.metaitem.02:32474>, <minecraft:wooden_slab:4>],
		[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]
	]
);
// --- Dark Oak Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler:5>, [
		[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
		[<minecraft:wooden_slab:5>, <gregtech:gt.metaitem.02:32475>, <minecraft:wooden_slab:5>],
		[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]
	]
);
// --- Framed Furniture Paneler
recipes.addShaped(<BiblioCraft:BiblioPaneler:6>, [
		[<ore:plateIron>, <ore:craftingToolSaw>, <ore:plateIron>],
		[<BiblioCraft:item.FramingBoard>, <BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingBoard>],
		[<BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingSheet>, <BiblioCraft:item.FramingSheet>]
	]
);
// --- Atlas
recipes.addShaped(<BiblioCraft:item.AtlasBook>, [
		[<ore:platePaper>, <BiblioCraft:item.BiblioMapTool>, <ore:platePaper>],
		[<ore:platePaper>, <ore:craftingBook>, <ore:platePaper>],
		[<ore:platePaper>, <ore:paperMap>, <ore:platePaper>]
	]
);
// --- Painting Press
recipes.addShaped(<BiblioCraft:BiblioPaintPress>, [
		[<ore:plateIron>, <ore:plateIron>, <ore:boltIron>],
		[<ore:ringIron>, null, null],
		[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>]
	]
);
// --- Fancy Gold Latern
recipes.addShaped(<BiblioCraft:BiblioLantern>, [
		[<ore:plateGold>, <ore:dustGlowstone>, <ore:plateGold>],
		[<ore:paneGlassColorless>, <harvestcraft:pamcandleDeco1>, <ore:paneGlassColorless>],
		[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]
	]
);
// --- Fancy Iron Latern
recipes.addShaped(<BiblioCraft:BiblioIronLantern>, [
		[<ore:plateIron>, <ore:dustGlowstone>, <ore:plateIron>],
		[<ore:paneGlassColorless>, <harvestcraft:pamcandleDeco1>, <ore:paneGlassColorless>],
		[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
	]
);
// --- Fancy Gold Lamp
recipes.addShaped(<BiblioCraft:BiblioLamp>, [
		[<ore:plateIron>,<GregsLighting:glowstoneBulb>, <ore:plateIron>],
		[null, <ore:stickGold>, null],
		[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]
	]
);
// --- Fancy Iron Lamp
recipes.addShaped(<BiblioCraft:BiblioIronLamp>, [
		[<ore:plateIron>,<GregsLighting:glowstoneBulb>, <ore:plateIron>],
		[null, <ore:stickGold>, null],
		[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
	]
);
// --- Armor Stand
recipes.addShaped(<BiblioCraft:Armor Stand>, [
		[<ore:boltIron>, <ore:stickIron>, <ore:boltIron>],
		[<ore:craftingToolHardHammer>, <ore:stickIron>, <ore:craftingToolSaw>],
		[<ore:plateIron>, <minecraft:stone_pressure_plate>, <ore:plateIron>]
	]
);
// --- Desk Bell
recipes.addShaped(<BiblioCraft:BiblioBell>, [
		[null, <minecraft:stone_button>, null],
		[null, <ore:plateIron>, null],
		[<ore:plateIron>, null, <ore:plateIron>]
	]
);
// --- Cookie Jar
recipes.addShaped(<BiblioCraft:BiblioStuffs>, [
		[null, <ore:plateRubber>, null],
		[<minecraft:glass_pane>, null, <minecraft:glass_pane>],
		[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]
	]
);
// --- Diner Plate
recipes.addShaped(<BiblioCraft:BiblioStuffs:2>, [
		[null, null, null],
		[<ore:plateNetherQuartz>, null, <ore:plateNetherQuartz>],
		[null, <ore:plateNetherQuartz>, null]
	]
);
// --- Frame Sheet
recipes.addShaped(<BiblioCraft:item.FramingSheet> * 2, [
[<gregtech:gt.metaitem.02:32470>, <ore:craftingToolSaw>]]);

// --- Frame Board
recipes.addShaped(<BiblioCraft:item.FramingBoard> * 2, [
[<BiblioCraft:item.FramingSheet>, <ore:craftingToolSaw>]]);

// --- Drafting Compas
recipes.addShaped(<BiblioCraft:item.BiblioMapTool>, [
		[<ore:stickIron>, <ore:screwIron>, <ore:stickIron>],
		[<ore:stickIron>, <ore:stickIron>, <ore:craftingToolFile>],
		[<ore:stickIron>, <ore:screwIron>, <ore:craftingToolScrewdriver>]
	]
);
// --- Waypoint Compas
recipes.addShaped(<BiblioCraft:item.BiblioWayPointCompass>, [
		[<ore:stickGold>, <ore:ringGold>, <ore:craftingToolFile>],
		[<ore:screwGold>, <minecraft:compass>, <ore:screwGold>],
		[<ore:craftingToolScrewdriver>, <ore:ringGold>, <ore:stickGold>]
	]
);
// --- Monocle
recipes.addShaped(<BiblioCraft:item.BiblioGlasses:2>, [
		[<ore:ringGold>, <ore:wireFineGold>, <ore:wireFineGold>],
		[<ore:lensGlass>, <ore:craftingToolSoftHammer>, <ore:wireFineGold>],
		[null, <ore:wireFineGold>, null]
	]
);
// --- Plum Line
recipes.addShaped(<BiblioCraft:item.PlumbLine>, [
		[<ore:wireFineSteel>, <ore:wireFineSteel>, <ore:wireFineSteel>],
		[<ore:plateLead>, <ore:craftingToolSoftHammer>, <ore:wireFineSteel>],
		[<ore:roundLead>, null, <ore:wireFineSteel>]
	]
);
// --- Reading Glasses
recipes.addShaped(<BiblioCraft:item.BiblioGlasses>, [
		[<ore:stickIron>, <ore:screwIron>, <ore:stickIron>],
		[<ore:ringIron>, <ore:boltIron>, <ore:ringIron>],
		[<ore:lensGlass>, <ore:craftingToolScrewdriver>, <ore:lensGlass>]
	]
);
// --- Screw Gun
recipes.addShaped(<BiblioCraft:item.BiblioDrill>, [
		[<ore:screwIron>, <ore:boltIron>, <ore:craftingToolScrewdriver>],
		[<ore:gearGtSmallIron>, <IC2:itemRecipePart:3>, <ore:gearGtSmallIron>],
		[<ore:plateIron>, <IC2:itemBatREDischarged>, <ore:plateIron>]
	]
);
// --- Tape Measure Real
recipes.addShaped(<BiblioCraft:item.tape>, [
		[<ore:wireFineIron>, <ore:wireFineIron>, <ore:wireFineIron>],
		[<ore:wireFineIron>, <ore:dyeYellow>, <ore:wireFineIron>],
		[<ore:wireFineIron>, <ore:wireFineIron>, <ore:wireFineIron>]
	]
);
// --- Tape Maesure
recipes.addShaped(<BiblioCraft:item.tapeMeasure>, [
		[<BiblioCraft:item.tape>, <BiblioCraft:item.tape>, <BiblioCraft:item.tape>],
		[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]
	]
);
// --- Clipboard
recipes.addShaped(<BiblioCraft:item.BiblioClipboard>, [
		[<ore:screwIron>, <ore:springSmallIron>, <ore:screwIron>],
		[<ore:craftingToolScrewdriver>, <gregtech:gt.metaitem.01:17809>, <ore:craftingToolSaw>],
		[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
	]
);

#==================================================================#
#Cutting Saw Recipes
// --- Frame Sheet
CuttingSaw.addRecipe(<BiblioCraft:item.FramingSheet> * 4, null, <gregtech:gt.metaitem.02:32470>, <liquid:water> * 3, 50, 4);
// -
CuttingSaw.addRecipe(<BiblioCraft:item.FramingSheet> * 4, null, <gregtech:gt.metaitem.02:32470>, <liquid:ic2distilledwater> * 2, 50, 4);
// -
CuttingSaw.addRecipe(<BiblioCraft:item.FramingSheet> * 4, null, <gregtech:gt.metaitem.02:32470>, <liquid:lubricant> * 1, 25, 4);

// --- Frame Board
CuttingSaw.addRecipe(<BiblioCraft:item.FramingBoard> * 4, null, <BiblioCraft:item.FramingSheet>, <liquid:water> * 2, 50, 4);
// -
CuttingSaw.addRecipe(<BiblioCraft:item.FramingBoard> * 4, null, <BiblioCraft:item.FramingSheet>, <liquid:ic2distilledwater> * 1, 50, 4);
// -
CuttingSaw.addRecipe(<BiblioCraft:item.FramingBoard> * 4, null, <BiblioCraft:item.FramingSheet>, <liquid:lubricant> * 1, 25, 4);

#==================================================================#

print("Initialized 'BiblioCraft.zs'");