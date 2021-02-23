#========#
# chisel #
#========#

#==================================================================#
#Imports
import mods.chisel.Groups;
import mods.gregtech.CuttingSaw;
import minetweaker.item.IItemStack;
import mods.gregtech.Assembler;

print("Initializing 'chisel.zs'...");

#==================================================================#
#Variables
val Chisel = <chisel:chisel>;
val ObsidianChisel = <chisel:obsidianChisel>;
val DiamondChisel = <chisel:diamondChisel>;
val BottledCloud = <chisel:cloudinabottle>;

val WoodPlate = <ore:plateWood>;
val IronPlate = <ore:plateIron>;
val SteelPlate = <ore:plateSteel>;
val ObsidainPlate = <ore:plateObsidian>;
val WoodScrew = <ore:screwWood>;
val IronScrew = <ore:screwIron>;
val WroughtIronScrew = <ore:screwWroughtIron>;
val SteelScrew = <ore:screwSteel>;
val IronRod = <ore:stickIron>;
val SteelRod = <ore:stickSteel>;
val WoodStick = <ore:stickWood>;
val WroughtIronStick = <ore:stickWroughtIron>;
val ObsidianStick = <ore:stickObsidian>;
val TinyQuartzPile = <ore:dustTinyQuartzite>;
val EmptyBottle = <minecraft:glass_bottle>;

val HHammer = <ore:craftingToolHardHammer>;
val Screwdriver = <ore:craftingToolScrewdriver>;
var frameIron = <ore:frameGtIron>;
var frameGold = <ore:frameGtGold>;
var stone = <minecraft:stone>;
// add saw to slabs recipes
var blocks = [
	<chisel:limestone>,
	<chisel:marble>,
	<chisel:marble_pillar>
] as IItemStack[];
var slabs = [
	<chisel:limestone_slab>,
	<chisel:marble_slab>,
	<chisel:marble_pillar_slab>
] as IItemStack[];
for i, slab in slabs {
	recipes.removeShaped(slab * 6);
	recipes.remove(slab);
	recipes.addShaped(slab * 2, [[<ore:craftingToolSaw>, blocks[i]]]);
}
var stoneMarble_UBC = <UndergroundBiomes:metamorphicStone:2>;

#==================================================================#
#Remove Recipes
<ore:cobblestone>.remove(<minecraft:mossy_cobblestone>);
<ore:chest>.remove(<minecraft:ender_chest>);
recipes.remove(<chisel:valentines>);
recipes.remove(<minecraft:sandstone>);
// --- Chisel
recipes.remove(Chisel);

// --- Obsidian Chisel
recipes.remove(ObsidianChisel);

// --- Diamond Chisel
recipes.remove(DiamondChisel);

// --- Cloud In A Bottle
recipes.remove(BottledCloud);

// --- Smashing Rock
recipes.remove(<chisel:smashingrock>);

// --- Auto Chisel
recipes.remove(<chisel:autoChisel>);

// --- Speed Upgrade
recipes.remove(<chisel:upgrade>);

// --- Automation Upgrade
recipes.remove(<chisel:upgrade:1>);

// --- Stack Upgrade
recipes.remove(<chisel:upgrade:2>);

#==================================================================#
#Adding Recipe
// --- Chisel
recipes.addShaped(Chisel, [
[HHammer, IronPlate, IronPlate],
[IronScrew, WoodStick, IronPlate],
[WoodStick, IronScrew, Screwdriver]]);
// -
recipes.addShaped(Chisel, [
[Screwdriver, IronPlate, IronPlate],
[IronScrew, WoodStick, IronPlate],
[WoodStick, IronScrew, HHammer]]);

// --- Obsidian Chisel
recipes.addShaped(ObsidianChisel, [
[HHammer, ObsidainPlate, ObsidainPlate],
[WroughtIronScrew, WroughtIronStick, ObsidainPlate],
[WroughtIronStick, WroughtIronScrew, Screwdriver]]);
// -
recipes.addShaped(ObsidianChisel, [
[Screwdriver, ObsidainPlate, ObsidainPlate],
[WroughtIronScrew, WroughtIronStick, ObsidainPlate],
[WroughtIronStick, WroughtIronScrew, HHammer]]);

// --- Diamond Chisel
recipes.addShaped(DiamondChisel, [
[HHammer, <ore:plateDiamond>, <ore:plateDiamond>],
[SteelScrew, SteelRod, <ore:plateDiamond>],
[SteelRod, SteelScrew, Screwdriver]]);
// -
recipes.addShaped(DiamondChisel, [
[Screwdriver, <ore:plateDiamond>, <ore:plateDiamond>],
[SteelScrew, SteelRod, <ore:plateDiamond>],
[SteelRod, SteelScrew, HHammer]]);

// --- Auto Chisel
recipes.addShaped(<chisel:autoChisel>, [
[SteelScrew, <ore:ringWoodSealed>, SteelScrew],
[<gregtech:gt.metaitem.01:32630>, <gregtech:gt.metaitem.01:32744>, <gregtech:gt.metaitem.01:32650>],
[Screwdriver, <chestup:Blockchestup:1>, HHammer]]);

// --- Speed Upgrade
recipes.addShaped(<chisel:upgrade>, [
[SteelScrew, <ore:plateEmerald>, SteelScrew],
[<ore:plateEmerald>, <ore:circuitAdvanced>, <ore:plateEmerald>],
[<ore:wireGt01RedAlloy>, <gregtech:gt.metaitem.01:32630>, <ore:wireGt01RedAlloy>]]);

// --- Automation Upgrade
recipes.addShaped(<chisel:upgrade:1>, [
[SteelScrew, <ore:plateEmerald>, SteelScrew],
[<ore:plateEmerald>, <ore:circuitAdvanced>, <ore:plateEmerald>],
[<ore:wireGt01RedAlloy>, <gregtech:gt.metaitem.01:32650>, <ore:wireGt01RedAlloy>]]);

// --- Stack Upgrade
recipes.addShaped(<chisel:upgrade:2>, [
[SteelScrew, <ore:plateEmerald>, SteelScrew],
[<ore:plateEmerald>, <ore:circuitAdvanced>, <ore:plateEmerald>],
[<ore:wireGt01RedAlloy>, <gregtech:gt.metaitem.01:32744>, <ore:wireGt01RedAlloy>]]);

recipes.remove(<chisel:factoryblock>);
recipes.addShaped(<chisel:factoryblock> * 32, [
		[stone, frameIron, stone], 
		[frameIron, null, frameIron], 
		[stone, frameIron, stone]
	]
);
recipes.remove(<chisel:fantasyblock>);
recipes.addShaped(<chisel:fantasyblock> * 8, [
		[stone, stone, stone], 
		[stone, frameGold, stone], 
		[stone, stone, stone]
	]
);
recipes.remove(<chisel:tyrian>);
recipes.addShaped(<chisel:tyrian> * 8, [
		[stone, stone, stone], 
		[stone, frameIron, stone], 
		[stone, stone, stone]
	]
);
recipes.remove(<chisel:road_line>);
CuttingSaw.addRecipe([<chisel:road_line> * 4], <minecraft:carpet>, null, 25, 4);


#==================================================================#
#Assembler Recipes
// --- Chisel
Assembler.addRecipe(Chisel, <gregtech:gt.metaitem.01:17032> * 2, <minecraft:stick> * 2, 300, 30);

// --- Obsidian Chisel
Assembler.addRecipe(ObsidianChisel, <gregtech:gt.metaitem.01:17804> * 2, <gregtech:gt.metaitem.01:23304> * 2, 400, 30);

// --- Diamond Chisel
Assembler.addRecipe(DiamondChisel, <gregtech:gt.metaitem.01:17500> * 2, <gregtech:gt.metaitem.01:23305> * 2, 600, 30);

#==================================================================#

print("Initialized 'chisel.zs'");
