import mods.gregtech.Assembler;
import mods.gregtech.ChemicalBath;
import mods.gregtech.ChemicalReactor;

// --- Enhanced Builder Guide
recipes.remove(<OpenBlocks:builder_guide>);
Assembler.addRecipe(<OpenBlocks:builder_guide>, <OpenBlocks:guide>, <gregtech:gt.metaitem.01:24533>, <liquid:molten.redstone> * 288, 300, 64);

// --- DevNull
recipes.remove(<OpenBlocks:devnull>);
Assembler.addRecipe(<OpenBlocks:devnull>, <ore:frameGtSteel>, <ExtraUtilities:chestMini>, <liquid:glue> * 1000, 300, 16);

// --- Elevator
recipes.remove(<OpenBlocks:elevator>);
recipes.addShaped(<OpenBlocks:elevator>, [
[<ore:plateSteel>, <ore:plateEnderPearl>, <ore:plateSteel>],
[<ore:gearGtSmallSteel>, <gregtech:gt.blockmachines:4115>, <ore:gearGtSmallSteel>],
[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// --- Rotating Elevator
recipes.remove(<OpenBlocks:elevator_rotating>);
recipes.addShaped(<OpenBlocks:elevator_rotating>, [
[null, <ore:stickSteel>, null],
[<ore:gearGtSmallSteel>, <OpenBlocks:elevator>, <ore:gearGtSmallSteel>],
[<ore:craftingToolScrewdriver>, <ore:stickSteel>, <ore:craftingToolFile>]]);
// -
recipes.addShaped(<OpenBlocks:elevator_rotating>, [
[<ore:craftingToolScrewdriver>, <ore:stickSteel>, <ore:craftingToolFile>],
[<ore:gearGtSmallSteel>, <OpenBlocks:elevator>, <ore:gearGtSmallSteel>],
[null, <ore:stickSteel>, null]]);

// --- Building Guide
recipes.remove(<OpenBlocks:guide>);
recipes.addShaped(<OpenBlocks:guide>, [
[<ore:plateObsidian>, <IC2:blockLuminatorDark>, <ore:plateObsidian>],
[<IC2:blockLuminatorDark>, <ore:lensDiamond>, <IC2:blockLuminatorDark>],
[<ore:plateObsidian>, <IC2:blockLuminatorDark>, <ore:plateObsidian>]]);

// --- Glider
recipes.remove(<OpenBlocks:hangglider>);
recipes.addShaped(<OpenBlocks:hangglider>, [
[<ore:screwSteel>, <ore:screwSteel>, <ore:screwSteel>],
[<OpenBlocks:generic>, <ore:plateSteel>, <OpenBlocks:generic>],
[<ore:craftingToolWrench>, <ore:screwSteel>, <ore:craftingToolScrewdriver>]]);

// --- Glider Wing
recipes.remove(<OpenBlocks:generic>);
recipes.addShaped(<OpenBlocks:generic>, [
[<ore:craftingToolHardHammer>, <ore:stickSteel>, <minecraft:leather>],
[<ore:stickSteel>, <Backpack:tannedLeather>, <minecraft:leather>],
[<minecraft:leather>,<minecraft:leather>,<minecraft:leather>]]);

// --- Black Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:15>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyeblack> * 144, [10000], 200, 20);

// --- Red Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:14>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyered> * 144, [10000], 200, 20);

// --- Green Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:13>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyegreen> * 144, [10000], 200, 20);

// --- Brown Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:12>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyebrown> * 144, [10000], 200, 20);

// --- Blue Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:11>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyeblue> * 144, [10000], 200, 20);

// --- Purple Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:10>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyepurple> * 144, [10000], 200, 20);

// --- Cyan Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:9>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyecyan> * 144, [10000], 200, 20);

// --- Light Grey Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:8>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyelightgray> * 144, [10000], 200, 20);

// --- Dark Grey Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:7>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyegray> * 144, [10000], 200, 20);

// --- Pink Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:6>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyepink> * 144, [10000], 200, 20);

// --- Lime Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:5>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyelime> * 144, [10000], 200, 20);

// --- Yellow Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:4>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyeyellow> * 144, [10000], 200, 20);

// --- Light Blue Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:3>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyelightblue> * 144, [10000], 200, 20);

// --- Magenta Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:2>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyemagenta> * 144, [10000], 200, 20);

// --- Orange Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator:1>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyeorange> * 144, [10000], 200, 20);

// --- White Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator>], <OpenBlocks:elevator:*>, <liquid:dye.watermixed.dyewhite> * 144, [10000], 200, 20);

// --- Black Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:15>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyeblack> * 144, [10000], 200, 20);

// --- Red Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:14>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyered> * 144, [10000], 200, 20);

// --- Green Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:13>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyegreen> * 144, [10000], 200, 20);

// --- Brown Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:12>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyebrown> * 144, [10000], 200, 20);

// --- Blue Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:11>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyeblue> * 144, [10000], 200, 20);

// --- Purple Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:10>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyepurple> * 144, [10000], 200, 20);

// --- Cyan Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:9>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyecyan> * 144, [10000], 200, 20);

// --- Light Grey Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:8>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyelightgray> * 144, [10000], 200, 20);

// --- Dark Grey Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:7>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyegray> * 144, [10000], 200, 20);

// --- Pink Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:6>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyepink> * 144, [10000], 200, 20);

// --- Lime Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:5>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyelime> * 144, [10000], 200, 20);

// --- Yellow Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:4>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyeyellow> * 144, [10000], 200, 20);

// --- Light Blue Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:3>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyelightblue> * 144, [10000], 200, 20);

// --- Magenta Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:2>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyemagenta> * 144, [10000], 200, 20);

// --- Orange Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating:1>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyeorange> * 144, [10000], 200, 20);

// --- White Rotating Elevator
ChemicalBath.addRecipe([<OpenBlocks:elevator_rotating>], <OpenBlocks:elevator_rotating:*>, <liquid:dye.watermixed.dyewhite> * 144, [10000], 200, 20);
