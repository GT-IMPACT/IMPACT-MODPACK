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
var stoneQuarried_railcraft = <Railcraft:cube:7>;
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
[Screwdriver, <IronChest:BlockIronChest>, HHammer]]);

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

// railcraft quarried stone
recipes.addShaped(stoneQuarried_railcraft * 4, [
		[null, stoneMarble_UBC, null],
		[stoneMarble_UBC, null, stoneMarble_UBC],
		[null, stoneMarble_UBC, null]
	]
);
recipes.addShaped(stoneMarble_UBC * 4, [
		[null, stoneQuarried_railcraft, null],
		[stoneQuarried_railcraft, null, stoneQuarried_railcraft],
		[null, stoneQuarried_railcraft, null]
	]
);

#==================================================================#
#Assembler Recipes
// --- Chisel
Assembler.addRecipe(Chisel, <gregtech:gt.metaitem.01:17032> * 2, <minecraft:stick> * 2, 300, 30);

// --- Obsidian Chisel
Assembler.addRecipe(ObsidianChisel, <gregtech:gt.metaitem.01:17804> * 2, <gregtech:gt.metaitem.01:23304> * 2, 400, 30);

// --- Diamond Chisel
Assembler.addRecipe(DiamondChisel, <gregtech:gt.metaitem.01:17500> * 2, <gregtech:gt.metaitem.01:23305> * 2, 600, 30);

#==================================================================#
#Groups
// fix reshaping cobbles wtih chisel unification
Groups.removeGroup("cobblestone");
Groups.addGroup("cobblestones");
Groups.addVariation("cobblestones", <minecraft:cobblestone>);
Groups.addVariation("cobblestones", <chisel:cobblestone:1>);
Groups.addVariation("cobblestones", <chisel:cobblestone:2>);
Groups.addVariation("cobblestones", <chisel:cobblestone:3>);
Groups.addVariation("cobblestones", <chisel:cobblestone:4>);
Groups.addVariation("cobblestones", <chisel:cobblestone:5>);
Groups.addVariation("cobblestones", <chisel:cobblestone:6>);
Groups.addVariation("cobblestones", <chisel:cobblestone:7>);
Groups.addVariation("cobblestones", <chisel:cobblestone:8>);
Groups.addVariation("cobblestones", <chisel:cobblestone:9>);
Groups.addVariation("cobblestones", <chisel:cobblestone:10>);
Groups.addVariation("cobblestones", <chisel:cobblestone:11>);
Groups.addVariation("cobblestones", <chisel:cobblestone:12>);
Groups.addVariation("cobblestones", <chisel:cobblestone:13>);
Groups.addVariation("cobblestones", <chisel:cobblestone:14>);
Groups.addVariation("cobblestones", <chisel:cobblestone:15>);

Groups.removeGroup("glass");
Groups.addGroup("glass2");
Groups.addVariation("glass2", <minecraft:glass>);
Groups.addVariation("glass2", <chisel:glass2>);
Groups.addVariation("glass2", <chisel:glass:1>);
Groups.addVariation("glass2", <chisel:glass:2>);
Groups.addVariation("glass2", <chisel:glass:3>);
Groups.addVariation("glass2", <chisel:glass:4>);
Groups.addVariation("glass2", <chisel:glass:5>);
Groups.addVariation("glass2", <chisel:glass:6>);
Groups.addVariation("glass2", <chisel:glass:7>);
Groups.addVariation("glass2", <chisel:glass:8>);
Groups.addVariation("glass2", <chisel:glass:9>);
Groups.addVariation("glass2", <chisel:glass:10>);
Groups.addVariation("glass2", <chisel:glass:11>);
Groups.addVariation("glass2", <chisel:glass:12>);
Groups.addVariation("glass2", <chisel:glass:13>);
Groups.addVariation("glass2", <chisel:glass:14>);
Groups.addVariation("glass2", <chisel:glass:15>);

Groups.removeGroup("end_stone");
Groups.addGroup("end_stones");
Groups.addVariation("end_stones", <minecraft:end_stone>);
Groups.addVariation("end_stones", <chisel:end_Stone:1>);
Groups.addVariation("end_stones", <chisel:end_Stone:2>);
Groups.addVariation("end_stones", <chisel:end_Stone:3>);
Groups.addVariation("end_stones", <chisel:end_Stone:4>);
Groups.addVariation("end_stones", <chisel:end_Stone:5>);
Groups.addVariation("end_stones", <chisel:end_Stone:6>);
Groups.addVariation("end_stones", <chisel:end_Stone:7>);
Groups.addVariation("end_stones", <chisel:end_Stone:8>);
Groups.addVariation("end_stones", <chisel:end_Stone:9>);
Groups.addVariation("end_stones", <chisel:end_Stone:10>);
Groups.addVariation("end_stones", <chisel:end_Stone:11>);
Groups.addVariation("end_stones", <chisel:end_Stone:12>);
Groups.addVariation("end_stones", <chisel:end_Stone:13>);

// marble support: gt and undrground biomes
Groups.removeGroup("marble");
Groups.addGroup("marble");
Groups.addVariation("marble", <UndergroundBiomes:metamorphicStone:2>);
Groups.addVariation("marble", <chisel:marble:0>);
Groups.addVariation("marble", <chisel:marble:1>);
Groups.addVariation("marble", <chisel:marble:2>);
Groups.addVariation("marble", <chisel:marble:3>);
Groups.addVariation("marble", <chisel:marble:4>);
Groups.addVariation("marble", <chisel:marble:5>);
Groups.addVariation("marble", <chisel:marble:6>);
Groups.addVariation("marble", <chisel:marble:7>);
Groups.addVariation("marble", <chisel:marble:8>);
Groups.addVariation("marble", <chisel:marble:9>);
Groups.addVariation("marble", <chisel:marble:10>);
Groups.addVariation("marble", <chisel:marble:11>);
Groups.addVariation("marble", <chisel:marble:12>);
Groups.addVariation("marble", <chisel:marble:13>);
Groups.addVariation("marble", <chisel:marble:14>);
Groups.addVariation("marble", <chisel:marble:15>);
Groups.addVariation("marble", <gregtech:gt.blockstones:0>);

// UB & GT basalt
Groups.addGroup("basalt");
Groups.addVariation("basalt", <UndergroundBiomes:igneousStone:5>);
Groups.addVariation("basalt", <gregtech:gt.blockstones:8>);


//******* variations
// add UB andesite
recipes.remove(<chisel:andesite>);
Groups.addVariation("andesite", <UndergroundBiomes:igneousStone:3>);

// add GT & RC concrete
furnace.remove(<chisel:concrete>);
Groups.addVariation("concrete", <gregtech:gt.blockconcretes>);
Groups.addVariation("concrete", <Railcraft:cube:1>);

// add UB limestone
Groups.addVariation("limestone", <UndergroundBiomes:sedimentaryStone>);

// add UB & GT black granite
<ore:stoneGraniteBlack>.remove(<chisel:granite>);
<ore:blockGraniteBlack>.remove(<chisel:granite>);
Groups.addVariation("RCAbyssalBlock", <UndergroundBiomes:igneousStone:1>);
Groups.addVariation("RCAbyssalBlock", <gregtech:gt.blockgranites:0>);

// add UB & GT red granite
recipes.remove(<chisel:granite>);
<ore:stoneGranite>.remove(<chisel:granite>);
<ore:blockGranite>.remove(<chisel:granite>);
Groups.addVariation("granite", <UndergroundBiomes:igneousStone>);
Groups.addVariation("granite", <gregtech:gt.blockgranites:8>);

// glowstone support: galaxyspace
Groups.removeGroup("glowstone");
Groups.addGroup("glowstone");
Groups.addVariation("glowstone", <minecraft:glowstone>);
Groups.addVariation("glowstone", <chisel:glowstone:1>);
Groups.addVariation("glowstone", <chisel:glowstone:2>);
Groups.addVariation("glowstone", <chisel:glowstone:3>);
Groups.addVariation("glowstone", <chisel:glowstone:4>);
Groups.addVariation("glowstone", <chisel:glowstone:5>);
Groups.addVariation("glowstone", <chisel:glowstone:6>);
Groups.addVariation("glowstone", <chisel:glowstone:7>);
Groups.addVariation("glowstone", <chisel:glowstone:8>);
Groups.addVariation("glowstone", <chisel:glowstone:9>);
Groups.addVariation("glowstone", <chisel:glowstone:10>);
Groups.addVariation("glowstone", <chisel:glowstone:11>);
Groups.addVariation("glowstone", <chisel:glowstone:12>);
Groups.addVariation("glowstone", <chisel:glowstone:13>);
Groups.addVariation("glowstone", <chisel:glowstone:14>);
Groups.addVariation("glowstone", <chisel:glowstone:15>);

#==================================================================#

print("Initialized 'chisel.zs'");
