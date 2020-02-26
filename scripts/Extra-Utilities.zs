import mods.gregtech.AlloySmelter;
import mods.gregtech.Assembler;
import mods.gregtech.ChemicalBath;
import mods.larger_workbenches.LargeCrafting;

recipes.remove(<ExtraUtilities:endMarker>);
recipes.remove(<ExtraUtilities:enderQuarry>);
recipes.remove(<ExtraUtilities:dark_portal>);
recipes.remove(<ExtraUtilities:dark_portal:2>);

// --- Ender Quarry
LargeCrafting.addShaped(3, <ExtraUtilities:enderQuarry>, [
[<ExtraUtilities:enderQuarryUpgrade>, <ExtraUtilities:enderQuarryUpgrade>, <ore:gearGtHastelloyC276>, <ExtraUtilities:enderThermicPump>, <ore:gearGtHastelloyC276>, <ExtraUtilities:enderQuarryUpgrade>, <ExtraUtilities:enderQuarryUpgrade>],
[<ExtraUtilities:enderQuarryUpgrade>, <ore:circuitMaster>, <ore:screwHastelloyC276>, <ore:stickLongHastelloyN>, <ore:screwHastelloyC276>, <ore:circuitMaster>, <ExtraUtilities:enderQuarryUpgrade>],
[<ore:gearGtHastelloyC276>, <ore:screwHastelloyC276>, <ore:gearGtHastelloyC276>, <gregtech:gt.metaitem.01:32655>, <ore:gearGtHastelloyC276>, <ore:screwHastelloyC276>, <ore:gearGtHastelloyC276>],
[<ExtraUtilities:enderThermicPump>, <ore:stickLongHastelloyN>, <gregtech:gt.metaitem.01:32655>, <gregtech:gt.blockmachines:12102>, <gregtech:gt.metaitem.01:32655>, <ore:stickLongHastelloyN>, <ExtraUtilities:enderThermicPump>],
[<ore:gearGtHastelloyC276>, <ore:screwHastelloyC276>, <ore:gearGtHastelloyC276>, <gregtech:gt.metaitem.01:32675>, <ore:gearGtHastelloyC276>, <ore:screwHastelloyC276>, <ore:gearGtHastelloyC276>],
[<ExtraUtilities:enderQuarryUpgrade>, <ore:circuitMaster>, <ore:screwHastelloyC276>, <ore:stickLongHastelloyN>, <ore:screwHastelloyC276>, <ore:circuitMaster>, <ExtraUtilities:enderQuarryUpgrade>],
[<ExtraUtilities:enderQuarryUpgrade>, <ExtraUtilities:enderQuarryUpgrade>, <ore:gearGtHastelloyC276>, <ExtraUtilities:enderThermicPump>, <ore:gearGtHastelloyC276>, <ExtraUtilities:enderQuarryUpgrade>, <ExtraUtilities:enderQuarryUpgrade>]]);
//Assembler.addRecipe(<ExtraUtilities:enderQuarry>, [<gregtech:gt.blockmachines:12102>, <ExtraUtilities:enderThermicPump>*2, <ExtraUtilities:enderQuarryUpgrade>*6, <gregtech:gt.metaitem.01:32675>, <ore:gearGtHastelloyC276>*4, <ore:stickLongHastelloyN>*16, <ore:screwHastelloyC276>*64, <ore:circuitMaster>*12], null, 1600, 30720);

// --- Marker
LargeCrafting.addShaped(3, <ExtraUtilities:endMarker>, [
[null, null, <ore:plateDoubleEnderium>, <ore:plateDoubleEnderium>, <ore:plateDoubleEnderium>, null, null],
[null, null, <ore:plateDoubleEnderium>, <gregtech:gt.metaitem.01:32685>, <ore:plateDoubleEnderium>, null, null],
[null, null, <ore:plateDoubleEnderium>, <ore:plateDoubleEnderium>, <ore:plateDoubleEnderium>, null, null],
[null, null, <ExtraUtilities:enderQuarryUpgrade>, <ore:circuitMaster>, <ExtraUtilities:enderQuarryUpgrade>, null, null],
[null, null, <ore:plateDoubleHastelloyC276>, <ore:stickLongHastelloyN>, <ore:plateDoubleHastelloyC276>, null, null],
[null, null, <ore:plateDoubleHastelloyC276>, <ore:stickLongHastelloyN>, <ore:plateDoubleHastelloyC276>, null, null],
[null, null, <ExtraUtilities:enderQuarryUpgrade>, <ore:circuitMaster>, <ExtraUtilities:enderQuarryUpgrade>, null, null]]);
//Assembler.addRecipe(<ExtraUtilities:endMarker>, [<gregtech:gt.metaitem.01:32685>, <ExtraUtilities:enderQuarryUpgrade>*2, <ore:stickLongHastelloyN>*4, <ore:screwHastelloyC276>*16, <ore:circuitData>*2], null, 200, 7680);

// --- Quarry Upgrade
Assembler.addRecipe(<ExtraUtilities:enderQuarryUpgrade>, [<gregtech:gt.blockcasings7:1>, <ore:plateDoubleTalonite>*4, <ore:gearGtStellite>*4, <ore:stickLongTalonite>*8, <ore:screwStellite>*32], null, 600, 1920);

// --- Hole Upgrade
Assembler.addRecipe(<ExtraUtilities:enderQuarryUpgrade:1>, [<ExtraUtilities:enderQuarryUpgrade>, <ore:toolHeadDrillTitanium>*2], null, 800, 7680);

// --- Silk Upgrade
Assembler.addRecipe(<ExtraUtilities:enderQuarryUpgrade:2>, [<ExtraUtilities:enderQuarryUpgrade>, <ore:toolHeadDrillEnderium>*2], null, 800, 30720);

// --- Fortune 1 Upgrade
Assembler.addRecipe(<ExtraUtilities:enderQuarryUpgrade:3>, [<ExtraUtilities:enderQuarryUpgrade>, <ore:toolHeadDrillIridium>*2], null, 800, 7680);

// --- Fortune 2 Upgrade
Assembler.addRecipe(<ExtraUtilities:enderQuarryUpgrade:4>, [<ExtraUtilities:enderQuarryUpgrade:3>, <ore:toolHeadDrillOsmiridium>*2], null, 1000, 30720);

// --- Fortune 3 Upgrade
Assembler.addRecipe(<ExtraUtilities:enderQuarryUpgrade:5>, [<ExtraUtilities:enderQuarryUpgrade:4>, <ore:toolHeadDrillNaquadah>*2], null, 1200, 122880);

// --- Speed 1 Upgrade
Assembler.addRecipe(<ExtraUtilities:enderQuarryUpgrade:6>, [<ExtraUtilities:enderQuarryUpgrade>, <ore:gearGtHSSG>*2], null, 800, 7680);

// --- Speed 2 Upgrade
Assembler.addRecipe(<ExtraUtilities:enderQuarryUpgrade:7>, [<ExtraUtilities:enderQuarryUpgrade:6>, <ore:gearGtHSSE>*2], null, 1000, 30720);

// --- Speed 3 Upgrade
Assembler.addRecipe(<ExtraUtilities:enderQuarryUpgrade:8>, [<ExtraUtilities:enderQuarryUpgrade:7>, <ore:gearGtHSSS>*2], null, 1200, 122880);

// --- Pump Upgrade
Assembler.addRecipe(<ExtraUtilities:enderQuarryUpgrade:9>, [<ExtraUtilities:enderQuarryUpgrade>, <gregtech:gt.metaitem.01:32620>], null, 1000, 30720);

// --- Thermic Pump
recipes.remove(<ExtraUtilities:enderThermicPump>);
Assembler.addRecipe(<ExtraUtilities:enderThermicPump>, [<gregtech:gt.blockmachines:1144>, <ExtraUtilities:enderQuarryUpgrade>*4, <ore:plateDoubleTalonite>*4, <ore:gearGtStellite>*2, <ore:stickLongTalonite>*8, <ore:screwStellite>*32, <ore:circuitElite>*4], null, 1000, 7680);

// --- Mini Chest
recipes.remove(<ExtraUtilities:chestMini>);
recipes.addShaped(<ExtraUtilities:chestMini>, [
[<ore:craftingToolHardHammer>, <gregtech:gt.metaitem.01:17809>, <ore:craftingToolSaw>],
[<gregtech:gt.metaitem.01:17809>, <ore:itemFlint>, <gregtech:gt.metaitem.01:17809>],
[null, <gregtech:gt.metaitem.01:17809>, null]]);

// --- Slightly larger Chest
recipes.remove(<ExtraUtilities:chestFull>);
recipes.addShaped(<ExtraUtilities:chestFull>, [
[<ore:craftingToolHardHammer>, <gregtech:gt.metaitem.01:17809>, <ore:craftingToolSaw>],
[<gregtech:gt.metaitem.01:17809>, <ore:chestWood>, <gregtech:gt.metaitem.01:17809>],
[null, <gregtech:gt.metaitem.01:17809>, null]]);

// --- Slightly larger Chest
Assembler.addRecipe(<ExtraUtilities:chestFull>, <minecraft:chest>, <gregtech:gt.metaitem.01:17809> * 2, 100, 30);

// --- Mini Chest
Assembler.addRecipe(<ExtraUtilities:chestMini>, <minecraft:flint>, <gregtech:gt.metaitem.01:17809> * 2, 50, 30);

// --- Filing Cabinet
recipes.addShaped(<ExtraUtilities:filing>, [
[<ore:plateSteel>, <ExtraUtilities:chestFull>, <ore:plateSteel>],
[<ore:screwSteel>, <IronChest:BlockIronChest>, <ore:screwSteel>],
[<ore:plateSteel>, <ExtraUtilities:chestFull>, <ore:plateSteel>]]);

// --- Advanced Filing Cabinet
recipes.addShaped(<ExtraUtilities:filing:1>, [
[<ore:plateDoubleGold>, <ExtraUtilities:filing>, <ore:plateDoubleGold>],
[<ore:screwSteel>, <ExtraUtilities:filing>, <ore:screwSteel>],
[<ore:plateDoubleGold>, <ExtraUtilities:filing>, <ore:plateDoubleGold>]]);

// --- Trash Can
recipes.addShaped(<ExtraUtilities:trashcan>, [
[<ore:plateIron>, <ore:craftingToolHardHammer>, <ore:plateIron>],
[<ore:plateIron>, <minecraft:lava_bucket>.noReturn(), <ore:plateIron>],
[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
<ExtraUtilities:trashcan>.addTooltip(format.gray("Bucket in crafting recipe ") + format.red("DOESN'T ") + format.gray("transfer"));
Assembler.addRecipe(<ExtraUtilities:trashcan>, [<ore:plateIron>*7, <minecraft:bucket>], <liquid:lava> * 1000, 400, 30);

// --- Watering Can
recipes.remove(<ExtraUtilities:watering_can:1>);
recipes.addShaped(<ExtraUtilities:watering_can:1>, [
[<ore:craftingToolHardHammer>, <ore:ringSteel>, <ore:craftingToolScrewdriver>],
[<ore:plateIron>, <ore:plateIron>, <ore:stickIron>],
[<ore:plateIron>, <ore:plateIron>, <ore:screwSteel>]]);
// -
recipes.addShaped(<ExtraUtilities:watering_can:1>, [
[<ore:craftingToolScrewdriver>, <ore:ringSteel>, <ore:craftingToolHardHammer>],
[<ore:plateIron>, <ore:plateIron>, <ore:stickIron>],
[<ore:plateIron>, <ore:plateIron>, <ore:screwSteel>]]);

// --- Last Millennium
LargeCrafting.addShaped(1, <ExtraUtilities:dark_portal:2>, [
[<appliedenergistics2:tile.BlockSpatialPylon>, <ore:plateQuadrupleVanadium>, <ore:plateQuadrupleVanadium>, <ore:plateQuadrupleVanadium>, <appliedenergistics2:tile.BlockSpatialPylon>],
[<ore:plateQuadrupleVanadium>, <EnderIO:blockTelePad>, <EnderIO:blockTelePad>, <EnderIO:blockTelePad>, <ore:plateQuadrupleVanadium>],
[<ore:plateQuadrupleVanadium>, <EnderIO:blockTelePad>, <EnderIO:blockTelePad>, <EnderIO:blockTelePad>, <ore:plateQuadrupleVanadium>],
[<ore:plateQuadrupleVanadium>, <EnderIO:blockTelePad>, <EnderIO:blockTelePad>, <EnderIO:blockTelePad>, <ore:plateQuadrupleVanadium>],
[<appliedenergistics2:tile.BlockSpatialPylon>, <ore:plateQuadrupleVanadium>, <appliedenergistics2:tile.BlockSpatialIOPort>, <ore:plateQuadrupleVanadium>, <appliedenergistics2:tile.BlockSpatialPylon>]]);


// --- Block Update Detector
Assembler.addRecipe(<ExtraUtilities:budoff>, <Railcraft:detector:2>, <minecraft:sticky_piston>, 200, 30);

// --- Block Update Detector (Advanced)
Assembler.addRecipe(<ExtraUtilities:budoff:3>, <ExtraUtilities:budoff>, <minecraft:redstone_block> * 4, 200, 120);

// --- Redstone Clock
recipes.remove(<ExtraUtilities:timer>);
recipes.addShaped(<ExtraUtilities:timer>, [
[<ore:plateRedAlloy>, <ore:gearGtWood>, <ore:plateRedAlloy>],
[<ore:gearGtWood>, <minecraft:clock>, <ore:gearGtWood>],
[<ore:plateRedAlloy>, <ore:stickRedAlloy>, <ore:plateRedAlloy>]]);

// --- AngelBlock
recipes.remove(<ExtraUtilities:angelBlock>);
recipes.addShaped(<ExtraUtilities:angelBlock>, [
[<minecraft:feather>, <ore:plateGold>, <minecraft:feather>], 
[<minecraft:feather>, <minecraft:obsidian:*>, <minecraft:feather>], 
[<minecraft:feather>, <ore:plateGold>, <minecraft:feather>]]);

// --- Golden Bag
recipes.remove(<ExtraUtilities:golden_bag>);
recipes.addShaped(<ExtraUtilities:golden_bag>, [
[<ore:foilGold>, <gregtech:gt.metaitem.02:30500>, <ore:foilGold>], 
[<ore:plateGold>, <Backpack:backpack>, <ore:plateGold>], 
[<ore:craftingToolHardHammer>, <ore:plateGold>, <ore:craftingToolFile>]]);

// --- Thickened Glass
recipes.remove(<ExtraUtilities:decorativeBlock2>);
recipes.addShapeless(<ExtraUtilities:decorativeBlock2>, [<TConstruct:GlassBlock>]);

// --- Obsidain Glass
recipes.remove(<ExtraUtilities:decorativeBlock2:5>);
AlloySmelter.addRecipe(<ExtraUtilities:decorativeBlock2:5>, <ExtraUtilities:decorativeBlock2>, <gregtech:gt.metaitem.01:2804> * 4, 200, 8);

// --- Golden Edge Glass
recipes.remove(<ExtraUtilities:decorativeBlock2:4>);
AlloySmelter.addRecipe(<ExtraUtilities:decorativeBlock2:4>, <ExtraUtilities:decorativeBlock2>, <gregtech:gt.metaitem.01:2086>, 200, 8);

// --- Carved Glass
recipes.remove(<ExtraUtilities:decorativeBlock2:3>);
AlloySmelter.addRecipe(<ExtraUtilities:decorativeBlock2:3>, <ExtraUtilities:decorativeBlock2>, <minecraft:gunpowder>, 200, 8);

// --- Glowstone Glass
recipes.remove(<ExtraUtilities:decorativeBlock2:7>);
AlloySmelter.addRecipe(<ExtraUtilities:decorativeBlock2:7>, <ExtraUtilities:decorativeBlock2>, <gregtech:gt.metaitem.01:17811> * 4, 400, 16); 

// --- Heart Glass
recipes.remove(<ExtraUtilities:decorativeBlock2:8>);
AlloySmelter.addRecipe(<ExtraUtilities:decorativeBlock2:8>, <ExtraUtilities:decorativeBlock2>, <minecraft:dye:9>, 200, 8);

// --- Etched Glass
recipes.remove(<ExtraUtilities:decorativeBlock2:1>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock2:1>, <ExtraUtilities:decorativeBlock2>, <gregtech:gt.integrated_circuit:1> * 0, 100, 8);

// --- Glass Bricks
recipes.remove(<ExtraUtilities:decorativeBlock2:2>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock2:2>, <ExtraUtilities:decorativeBlock2>, <gregtech:gt.integrated_circuit:4> * 0, 100, 8);

// --- Swirling Glass
recipes.remove(<ExtraUtilities:decorativeBlock2:6>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock2:6>, <ExtraUtilities:decorativeBlock2>, <gregtech:gt.integrated_circuit:5> * 0, 100, 8);

// --- Squared Glass
recipes.remove(<ExtraUtilities:decorativeBlock2:9>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock2:9>, <ExtraUtilities:decorativeBlock2>, <gregtech:gt.integrated_circuit:2> * 0, 100, 8);

// --- Dark Glass
recipes.remove(<ExtraUtilities:decorativeBlock2:10>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock2:10>, <ExtraUtilities:decorativeBlock2>, <ore:dustDarkAsh>*2, 200, 16);

// --- Reinforced Dark Glass
recipes.remove(<ExtraUtilities:decorativeBlock2:11>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock2:11>, <ExtraUtilities:decorativeBlock2:10>, <gregtech:gt.metaitem.01:2804> * 4, 400, 30);

// --- Sandy Glass
recipes.remove(<ExtraUtilities:decorativeBlock1:9>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock1:9> * 2, <minecraft:sand>, <minecraft:glass>, 40, 4);

// --- Edged Stone Bricks
recipes.remove(<ExtraUtilities:decorativeBlock1>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock1> * 9, <minecraft:stone> * 4, <minecraft:stonebrick> * 5, 180, 4);

// --- Border Stone
recipes.remove(<ExtraUtilities:decorativeBlock1:4>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock1:4>, <ExtraUtilities:decorativeBlock1>, <gregtech:gt.integrated_circuit:4> * 0, 20, 4);

// --- Border Stone (Alternate)
recipes.remove(<ExtraUtilities:decorativeBlock1:7>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock1:7>, <ExtraUtilities:decorativeBlock1:4>, <gregtech:gt.integrated_circuit:4> * 0, 20, 4);

// --- Gravel Bricks
recipes.remove(<ExtraUtilities:decorativeBlock1:6>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock1:6>, <minecraft:gravel>, <gregtech:gt.integrated_circuit:2> * 0, 20, 4);

// --- Frosted Stone
recipes.remove(<ExtraUtilities:decorativeBlock1:3>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock1:3> * 4, <minecraft:stone>, <minecraft:ice> * 4, 80, 4);

// --- Gravel Road
recipes.remove(<ExtraUtilities:decorativeBlock1:10>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock1:10> * 5, <ExtraUtilities:decorativeBlock1:6> * 5, <minecraft:stone_slab:5> * 5, 100, 4);

// --- Ender-Sand Alloy
recipes.remove(<ExtraUtilities:decorativeBlock1:13>);
Assembler.addRecipe(<ExtraUtilities:decorativeBlock1:13> * 2, <minecraft:sandstone>, <minecraft:end_stone>, 40, 4);

// --- Ethereal Glass
ChemicalBath.addRecipe([<ExtraUtilities:etherealglass>], <ExtraUtilities:decorativeBlock2>, <liquid:ender> * 500, [10000], 100, 8);

// --- Ineffable Glass
Assembler.addRecipe(<ExtraUtilities:etherealglass:1>, <ExtraUtilities:etherealglass>, <gregtech:gt.integrated_circuit:2> * 0, 100, 8);

// --- Ethereal Glass (Inverted)
Assembler.addRecipe(<ExtraUtilities:etherealglass:3>, <ExtraUtilities:etherealglass>, <gregtech:gt.integrated_circuit:1> * 0, 100, 8);

// --- Ineffable Glass (Inverted)
Assembler.addRecipe(<ExtraUtilities:etherealglass:4>, <ExtraUtilities:etherealglass:1>, <gregtech:gt.integrated_circuit:1> * 0, 100, 8);

// --- Dark Ethereal Glass
Assembler.addRecipe(<ExtraUtilities:etherealglass:2>, <ExtraUtilities:etherealglass>, <ore:dustDarkAsh>*2, 200, 16);

// --- Dark Ethereal Glass (Inverted)
Assembler.addRecipe(<ExtraUtilities:etherealglass:5>, <ExtraUtilities:etherealglass:2>, <gregtech:gt.integrated_circuit:1> * 0, 100, 8);
