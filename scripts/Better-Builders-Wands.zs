// --- Created by DreamMasterXXL ---


// --- Importing ---


import mods.gregtech.Assembler;




// --- Remove Recipes ---




// --- Stone Wand
recipes.remove(<betterbuilderswands:wandStone>);

// --- Iron Wand
recipes.remove(<betterbuilderswands:wandIron>);

// --- Diamond Wand
recipes.remove(<betterbuilderswands:wandDiamond>);

// --- Unbreakable Wands
recipes.remove(<betterbuilderswands:wandUnbreakable:*>);




// --- Adding Back Recipes ---




// --- Stone Wand
recipes.addShaped(<betterbuilderswands:wandStone>, [
[<ore:craftingToolSaw>, <ore:screwIron>, <ore:plateStone>],
[null, <ore:stickWood>, <ore:screwIron>],
[<ore:stickWood>, null, <ore:craftingToolScrewdriver>]]);

// --- Iron Wand
recipes.addShaped(<betterbuilderswands:wandIron>, [
[<ore:craftingToolSaw>, <ore:screwSteel>, <TConstruct:heavyPlate:2>],
[null, <TConstruct:toolRod:2>, <ore:screwSteel>],
[<TConstruct:toolRod:2>, null, <ore:craftingToolScrewdriver>]]);




// --- Assembler Recipes ----



// --- Iron Wand
Assembler.addRecipe(<betterbuilderswands:wandIron>, <TConstruct:toolRod:2> * 2, <TConstruct:heavyPlate:2>, 600, 30);

// --- Diamond Wand
Assembler.addRecipe(<betterbuilderswands:wandDiamond>, <TGregworks:tGregToolPartToughRod:1594>.withTag({material: "Diamond"}), <TGregworks:tGregToolPartLargePlate:1594>.withTag({material: "Diamond"}), 600, 64);

// --- Unbreakable Wand III
Assembler.addRecipe(<betterbuilderswands:wandUnbreakable:12>, <TGregworks:tGregToolPartLargePlate:1520>.withTag({material: "Titanium"}), <TGregworks:tGregToolPartToughRod:1520>.withTag({material: "Titanium"}), 600, 480);

// --- Unbreakable Wand IV
Assembler.addRecipe(<betterbuilderswands:wandUnbreakable:13>, <betterbuilderswands:wandUnbreakable:12>, <TGregworks:tGregToolPartLargePlate:1520>.withTag({material: "Titanium"}) * 4, 800, 1024);

// --- Unbreakable Wand V
Assembler.addRecipe(<betterbuilderswands:wandUnbreakable:14>, <betterbuilderswands:wandUnbreakable:13>, <TGregworks:tGregToolPartLargePlate:1520>.withTag({material: "Titanium"}) * 8, 1000, 1920);