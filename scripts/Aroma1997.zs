#===========#
# Aroma1997 #
#===========#

#==================================================================#
#Imports
import mods.gregtech.Assembler;

print("Initializing 'Aroma1997.zs'...");
	
#==================================================================#
#Recipes
recipes.remove(<Aroma1997sDimension:portalIgniter>);
recipes.addShaped(<Aroma1997sDimension:portalIgniter>, [
		[<ore:craftingToolHardHammer>, <customthings:item:121>, <ore:craftingToolFile>],
		[null, <ore:stickSteel>],
		[null, <ore:stickSteel>]
	]
);
// --- Crystal ---
Assembler.addRecipe(<customthings:item:121>, [<ore:gemDiamond>, <ore:circuitBasic>*4], null, 600, 16);

#==================================================================#

print("Initialized 'Aroma1997.zs'");