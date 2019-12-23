import mods.gregtech.Assembler;

Assembler.addRecipe(<customthings:item:121>, [<ore:gemDiamond>, <ore:circuitBasic>*4], null, 600, 16);

recipes.remove(<Aroma1997sDimension:portalIgniter>);
recipes.addShaped(<Aroma1997sDimension:portalIgniter>, [
[<ore:craftingToolHardHammer>, <customthings:item:121>, <ore:craftingToolFile>],
[null, <ore:stickSteel>],
[null, <ore:stickSteel>]]);
