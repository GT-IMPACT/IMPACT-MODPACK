import mods.gregtech.Assembler;
//Terminal
recipes.addShaped(<ae2wct:wirelessCraftingTerminal>, [
[<gregtech:gt.metaitem.01:32694>, <appliedenergistics2:item.ItemMultiMaterial:41>, <gregtech:gt.metaitem.01:32684>], 
[<ore:plateHastelloyN>, <appliedenergistics2:item.ItemMultiPart:360>, <ore:plateHastelloyN>], 
[<ore:plateHastelloyN>, <gregtech:gt.metaitem.01:32545>, <ore:plateHastelloyN>]]);

//Magnet
Assembler.addRecipe(<ae2wct:magnetCard>, [<gregtech:gt.blockmetal5:1>*2, <appliedenergistics2:item.ItemMultiMaterial:28>, <appliedenergistics2:item.ItemMultiMaterial:24>, <ore:stickLongHastelloyX>*8, <ore:screwInconel792>*24], null, 1000, 1920);

//Infinity Booster
Assembler.addRecipe(<ae2wct:infinityBoosterCard>, [<appliedenergistics2:item.ItemMultiMaterial:42>*64, <gregtech:gt.metaitem.01:32677>, <ore:plateBlackTitanium>*16, <ore:stickLongTriniumNaquadahCarbonite>*24, <ore:screwPikyonium64B>*64], null, 4000, 122880);
