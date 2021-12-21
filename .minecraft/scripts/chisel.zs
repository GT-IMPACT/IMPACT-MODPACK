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
recipes.remove(<minecraft:sandstone>);

#==================================================================#

print("Initialized 'chisel.zs'");