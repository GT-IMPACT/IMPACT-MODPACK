//Created by Spartak1997


// --- Importing Stuff ---
import mods.gregtech.Assembler;
import mods.larger_workbenches.LargeCrafting;



// --- Add Recipes ---
// --- Advanced Crafting Table (5x5) HV
recipes.addShaped(<GW:PPWorkbenches:workbench:1>, [
[<ore:itemCasingStainlessSteel>, <gregtech:gt.metaitem.01:32652>, <ore:itemCasingStainlessSteel>],
[<ore:springSmallStainlessSteel>, <minecraft:crafting_table>, <ore:springSmallStainlessSteel>],
[<ore:itemCasingStainlessSteel>, <ore:gearStainlessSteel>, <ore:itemCasingStainlessSteel>]]);



// --- Assembler Recipes ---
// --- Advanced Autorafting Table (5x5)
Assembler.addRecipe(<GW:PPWorkbenches:autoWorkbench:1>, [<GW:PPWorkbenches:workbench:1>, <gregtech:gt.metaitem.01:32652>*2, <ore:springStainlessSteel>*4, <ore:gearStainlessSteel>*4], <liquid:molten.solderingalloy>*288, 1200, 256);

// --- Extreme Autorafting Table (7x7)
Assembler.addRecipe(<GW:PPWorkbenches:autoWorkbench:3>, [<GW:PPWorkbenches:workbench:3>, <gregtech:gt.metaitem.01:32654>*4, <ore:springPlatinum>*8, <ore:gearTungsten>*8], <liquid:molten.solderingalloy>*576, 2400, 4096);

// --- Insane Autorafting Table (9x9)
Assembler.addRecipe(<GW:PPWorkbenches:autoWorkbench:5>, [<GW:PPWorkbenches:workbench:5>, <gregtech:gt.metaitem.01:32654>*6, <ore:springOsmium>*16, <ore:gearHSSS>*16], <liquid:molten.solderingalloy>*1152, 4800, 65536);



// --- LargeCrafting Recipes
// --- Extreme Crafting Table (7x7) IV
LargeCrafting.addShaped(1, <GW:PPWorkbenches:workbench:3>, [
[<ore:plateTungstenSteel>, <ore:plateDesh>, <ore:plateTungstenSteel>, <ore:plateDesh>, <ore:plateTungstenSteel>],
[<ore:plateDesh>, <gregtech:gt.metaitem.01:32654>, <ore:gearTungsten>, <gregtech:gt.metaitem.01:32654>, <ore:plateDesh>],
[<ore:plateTungstenSteel>, <ore:springPlatinum>, <GW:PPWorkbenches:workbench:1>, <ore:springPlatinum>, <ore:plateTungstenSteel>],
[<ore:plateDesh>, <gregtech:gt.metaitem.01:32654>, <ore:gearTungsten>, <gregtech:gt.metaitem.01:32654>, <ore:plateDesh>],
[<ore:plateTungstenSteel>, <ore:plateDesh>, <ore:plateTungstenSteel>, <ore:plateDesh>, <ore:plateTungstenSteel>]]);

// --- Insane Crafting Table (9x9) ZPM
LargeCrafting.addShaped(3, <GW:PPWorkbenches:workbench:5>, [
[<ore:plateDoubleOsmiridium>, <ore:plateDoubleNaquadah>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleNaquadah>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleNaquadah>, <ore:plateDoubleOsmiridium>],
[<ore:plateDoubleNaquadah>, <ore:gearGtSmallHSSS>, <ore:springSmallOsmium>, <ore:stickLongEuropium>, <ore:springSmallOsmium>, <ore:gearGtSmallHSSS>, <ore:plateDoubleNaquadah>],
[<ore:plateDoubleOsmiridium>, <ore:springSmallOsmium>, <gregtech:gt.metaitem.01:32656>, <ore:stickLongEuropium>, <gregtech:gt.metaitem.01:32656>, <ore:springSmallOsmium>, <ore:plateDoubleOsmiridium>],
[<ore:plateDoubleNaquadah>, <gregtech:gt.metaitem.01:32607>, <gregtech:gt.metaitem.01:32646>, <GW:PPWorkbenches:workbench:3>, <gregtech:gt.metaitem.01:32646>, <gregtech:gt.metaitem.01:32607>, <ore:plateDoubleNaquadah>],
[<ore:plateDoubleOsmiridium>, <ore:springSmallOsmium>, <gregtech:gt.metaitem.01:32656>, <ore:stickLongEuropium>, <gregtech:gt.metaitem.01:32656>, <ore:springSmallOsmium>, <ore:plateDoubleOsmiridium>],
[<ore:plateDoubleNaquadah>, <ore:gearGtSmallHSSS>, <ore:springSmallOsmium>, <ore:stickLongEuropium>, <ore:springSmallOsmium>, <ore:gearGtSmallHSSS>, <ore:plateDoubleNaquadah>],
[<ore:plateDoubleOsmiridium>, <ore:plateDoubleNaquadah>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleNaquadah>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleNaquadah>, <ore:plateDoubleOsmiridium>]]);