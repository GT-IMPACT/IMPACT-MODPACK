#======#
# AFSU #
#======#

#==================================================================#
#Imports
import mods.gregtech.Assembler;

print("Initializing 'AFSU.zs'...");
	
#==================================================================#
#Remove Recipes
// --- AFB
recipes.remove(<AFSU:ALC>);
// -- AFSU
recipes.remove(<AFSU:AFSU>);

#==================================================================#
#Add Recipes
// --- AFSU
recipes.addShaped(<AFSU:AFSU>, [
		[<ore:cableGt01Platinum>, <ore:itemCasingTungstenSteel>, <ore:cableGt01Platinum>],
		[<ore:itemCasingTungstenSteel>, <gregtech:gt.blockmachines:15>, <ore:itemCasingTungstenSteel>],
		[<ore:circuitMaster>, <AFSU:ALC>, <ore:circuitMaster>]
	]
);

#==================================================================#
#Assembler Recipes
// --- AFB
Assembler.addRecipe(<AFSU:ALC>, <ore:circuitElite>, <gregtech:gt.metaitem.01:32597>, 2400, 1920);

#==================================================================#

print("Initialized 'AFSU.zs'");