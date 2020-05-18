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
		[<ore:craftingToolHardHammer>, <impact:impact_item2:99>, <ore:craftingToolFile>],
		[null, <ore:stickSteel>],
		[null, <ore:stickSteel>]
	]
);
#==================================================================#

print("Initialized 'Aroma1997.zs'");