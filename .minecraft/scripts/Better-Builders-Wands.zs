#=======================#
# Better-Builders-Wands #
#=======================#

#==================================================================#
#Imports
import mods.gregtech.Assembler;

print("Initializing 'Better-Builders-Wands.zs'...");

#==================================================================#
#Remove Recipes
// --- Stone Wand
recipes.remove(<betterbuilderswands:wandStone>);

// --- Iron Wand
recipes.remove(<betterbuilderswands:wandIron>);

// --- Diamond Wand
recipes.remove(<betterbuilderswands:wandDiamond>);

// --- Unbreakable Wands
recipes.remove(<betterbuilderswands:wandUnbreakable:*>);

#==================================================================#
#Adding Back Recipes
// --- Stone Wand
recipes.addShaped(<betterbuilderswands:wandStone>, [
		[<ore:craftingToolSaw>, <ore:screwIron>, <ore:plateStone>],
		[null, <ore:stickWood>, <ore:screwIron>],
		[<ore:stickWood>, null, <ore:craftingToolScrewdriver>]
	]
);
// --- Iron Wand
recipes.addShaped(<betterbuilderswands:wandIron>, [
		[<ore:craftingToolSaw>, <ore:screwSteel>, <ore:plateDoubleIron>],
		[null, <ore:stickLongIron>, <ore:screwSteel>],
		[<ore:stickLongIron>, null, <ore:craftingToolScrewdriver>]
	]
);

#==================================================================#
#Assembler Recipes
// --- Iron Wand
Assembler.addRecipe(<betterbuilderswands:wandIron>, <ore:stickLongIron> * 2, <ore:plateDoubleIron>, 600, 30);

// --- Diamond Wand
Assembler.addRecipe(<betterbuilderswands:wandDiamond>, <ore:stickLongSteel> * 2, <ore:plateDiamond>, 600, 64);

// --- Unbreakable Wand III
Assembler.addRecipe(<betterbuilderswands:wandUnbreakable:12>, <ore:stickLongTitanium> * 2, <ore:plateDoubleTitanium>, 600, 480);

// --- Unbreakable Wand IV
Assembler.addRecipe(<betterbuilderswands:wandUnbreakable:13>, <betterbuilderswands:wandUnbreakable:12>, <ore:plateDoubleTitanium> * 4, 800, 1024);

// --- Unbreakable Wand V
Assembler.addRecipe(<betterbuilderswands:wandUnbreakable:14>, <betterbuilderswands:wandUnbreakable:13>, <ore:plateDoubleTitanium> * 8, 1000, 1920);

#==================================================================#

print("Initialized 'Better-Builders-Wands.zs'");