import mods.nei.NEI;
import minetweaker.item.IItemStack; 

var blazePowder = <minecraft:blaze_powder>;
var blazeRod = <minecraft:blaze_rod>;
var chest = <minecraft:chest>;
var gemNetherQuartz = <ore:gemNetherQuartz>;
var glass = <ore:blockGlass>;
var logWood = <ore:logWood>;
var potionHealing = <ore:potionHealing>;
var slabWood = <ore:slabWood>;
var Cobble = <ore:cobblestone>;
var RedAlloyWire = <ore:wireGt01RedAlloy>;

recipes.remove(<minecraft:ender_chest>);

recipes.remove(<minecraft:iron_ingot>);
recipes.remove(<minecraft:stone_button>);

recipes.removeShapeless(<ore:gemLapis>);
recipes.removeShapeless(<ore:dustLapis>);
recipes.removeShapeless(<ore:gemCoal>);
recipes.removeShapeless(<ore:dustCoal>);

recipes.removeShapeless(blazePowder * 2, [blazeRod]);
//recipes.addShapeless(blazePowder, [blazeRod]);

// add wood button recipe from wooden planks as stone analogy
recipes.addShapeless(<minecraft:wooden_button>, [<ore:plankWood>]);
// remove double buttons recipe from stone
recipes.remove(<minecraft:stone_button> * 2);

// remove only unsaw recipe
recipes.remove(<minecraft:wooden_slab> * 6);

// add oredict for vanillaplanks (was deleted by UNKNOWN mod, probably GT)

var meta = [0, 1, 2, 3, 4, 5] as int[];
for i in meta {
	var Plank = <minecraft:planks>.definition.makeStack(i);
	<ore:plankWood>.add(Plank);
}

// add saw to slabs recipes
var blocks = [
	<minecraft:stone>,
	<minecraft:sandstone>,
	<minecraft:cobblestone>,
	<minecraft:brick_block>,
	<minecraft:stonebrick>,
	<minecraft:nether_brick>,
	<minecraft:quartz_block>
] as IItemStack[];
var slabs = [
	<minecraft:stone_slab>,
	<minecraft:stone_slab:1>,
	<minecraft:stone_slab:3>,
	<minecraft:stone_slab:4>,
	<minecraft:stone_slab:5>,
	<minecraft:stone_slab:6>,
	<minecraft:stone_slab:7>
] as IItemStack[];
for i, slab in slabs {
	recipes.removeShaped(slab * 6);
	recipes.addShaped(slab * 2, [[<ore:craftingToolSaw>, blocks[i]]]);
}

// Mineral paints
<ore:dyeBlack>.add(<gregtech:gt.metaitem.01:2535>);
<ore:dyeBlack>.add(<gregtech:gt.metaitem.01:2536>);
<ore:dyeBlack>.add(<gregtech:gt.metaitem.01:2816>);
<ore:dyeBlack>.add(<gregtech:gt.metaitem.01:2870>);
<ore:dyeGray>.add(<gregtech:gt.metaitem.01:2815>);
<ore:dyeGreen>.add(<gregtech:gt.metaitem.01:2871>);
<ore:dyeGreen>.add(<gregtech:gt.metaitem.01:2933>);
<ore:dyeGreen>.add(<gregtech:gt.metaitem.01:2906>);
<ore:dyeWhite>.add(<gregtech:gt.metaitem.01:2823>);
<ore:dyeWhite>.add(<gregtech:gt.metaitem.01:2617>);
<ore:dyeWhite>.add(<gregtech:gt.metaitem.01:2904>);
<ore:dyeWhite>.add(<gregtech:gt.metaitem.01:2622>);
<ore:dyeWhite>.add(<gregtech:gt.metaitem.01:2618>);
<ore:dyeRed>.add(<gregtech:gt.metaitem.01:2826>);
<ore:dyeRed>.add(<gregtech:gt.metaitem.01:2917>);
<ore:dyeYellow>.add(<gregtech:gt.metaitem.01:2614>);
<ore:dyeBrown>.add(<gregtech:gt.metaitem.01:2538>);

