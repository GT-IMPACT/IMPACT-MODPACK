#===============#
# chickenchunks #
#===============#

#==================================================================#
#Imports

print("Initializing 'chickenchunks.zs'...");

#==================================================================#
#Variables
var chunkLoader = <ChickenChunks:chickenChunkLoader:0>;
var frameIron = <ore:frameGtIron>;
var plateGold = <ore:plateGold>;
var Diamond = <ore:gemDiamond>;
var boltIron = <ore:boltIron>;

#==================================================================#
#Adding Recipe
recipes.remove(chunkLoader);
recipes.addShaped(chunkLoader, [
		[null, <ore:craftingToolHardHammer>, null],
		[boltIron, plateGold, boltIron],
		[plateGold, frameIron, plateGold]
	]
);

#==================================================================#

print("Initialized 'chickenchunks.zs'");