// --- Created by DreamMasterXXL ---

import mods.gregtech.Assembler;





// --- Remove Recipes --- 




// --- Low Kinetic Wind Generator
recipes.remove(<compactkineticgenerators:BlockCkg>);

// --- Medium Kinetic Wind Generator
recipes.remove(<compactkineticgenerators:BlockCkg:1>);

// --- High Kinetic Wind Generator
recipes.remove(<compactkineticgenerators:BlockCkg:2>);

// --- Extreme Kinetic Wind Generator
recipes.remove(<compactkineticgenerators:BlockCkg:3>);

// --- Low Kinetic Water Generator
recipes.remove(<compactkineticgenerators:BlockCkg:4>);

// --- Medium Kinetic Water Generator
recipes.remove(<compactkineticgenerators:BlockCkg:5>);

// --- High Kinetic Water Generator
recipes.remove(<compactkineticgenerators:BlockCkg:6>);

// --- Extreme Kinetic Water Generator
recipes.remove(<compactkineticgenerators:BlockCkg:7>);

// --- Low Kinetic Generator
recipes.remove(<compactkineticgenerators:BlockCkg:8>);

// --- Medium Kinetic Generator
recipes.remove(<compactkineticgenerators:BlockCkg:9>);

// --- High Kinetic Generator
recipes.remove(<compactkineticgenerators:BlockCkg:10>);

// --- Extreme Kinetic Generator
recipes.remove(<compactkineticgenerators:BlockCkg:11>);

// --- Iridium Rotor Blade
recipes.remove(<compactkineticgenerators:IridiumBlade>);

// --- Kinetic Gearbox Rotor (Iridium)
recipes.remove(<compactkineticgenerators:IridiumRotor>);






// --- Adding Back Recipes ---




// --- Low Kinetic Wind Generator
Assembler.addRecipe(<compactkineticgenerators:BlockCkg>, [<ore:plateDoubleTriniumTitaniumAlloy>*12, <ore:itemCasingTungstenSteel>*8, <IC2:blockKineticGenerator> * 4, <ore:gearGtSmallDesh>*2, <gregtech:gt.metaitem.01:32603> * 2, <ore:circuitElite>*2, <ore:cableGt02Tungsten>*2, <gregtech:gt.blockmachines:14>], <liquid:molten.solderingalloy> * 1440, 400, 7680);

// --- Medium Kinetic Wind Generator
Assembler.addRecipe(<compactkineticgenerators:BlockCkg:1>, [<ore:plateDoubleTriniumNaquadahCarbonite>*12, <ore:itemCasingIridium>*8, <compactkineticgenerators:BlockCkg> * 4, <ore:gearGtSmallDraconium>*2, <gregtech:gt.metaitem.01:32604> * 2, <ore:circuitMaster>*2, <ore:wireGt04HSSG>*2, <gregtech:gt.blockmachines:15>], <liquid:molten.solderingalloy> * 1728, 600, 30720);

// --- High Kinetic Wind Generator
Assembler.addRecipe(<compactkineticgenerators:BlockCkg:2>, [<ore:plateDoubleCinobiteA243>*12, <ore:itemCasingOsmium>*8, <compactkineticgenerators:BlockCkg:1> * 4, <ore:gearGtSmallOriharukon>*2, <gregtech:gt.metaitem.01:32606> * 2, <ore:circuitUltimate>*2, <ore:cableGt04VanadiumGallium>*2, <gregtech:gt.blockmachines:16>], <liquid:molten.solderingalloy> * 2016, 800, 122880);

// --- Extreme Kinetic Wind Generator
Assembler.addRecipe(<compactkineticgenerators:BlockCkg:3>, [<ore:plateTripleNeutronium>*8, <ore:itemCasingBlackPlutonium>*8, <compactkineticgenerators:BlockCkg:2> * 4, <ore:gearGtSmallQuantium>*2, <gregtech:gt.metaitem.01:32607> * 2, <ore:circuitSuperconductor>*2, <ore:cableGt08Duranium>*2, <gregtech:gt.blockmachines:17>], <liquid:molten.solderingalloy> * 2304, 1000, 500000);


// --- Low Kinetic Generator
Assembler.addRecipe(<compactkineticgenerators:BlockCkg:8>, [<ore:plateDoubleTriniumTitaniumAlloy>*12, <ore:rotorTriniumTitaniumAlloy>*4, <miscutils:itemTungstenSteelShaft> * 4, <ore:gearGtSmallDesh>*2, <gregtech:gt.metaitem.01:32603> * 2, <ore:circuitElite>*2, <ore:cableGt02Tungsten>*2, <gregtech:gt.blockmachines:14>, <gregtech:gt.metaitem.01:32540>], <liquid:molten.solderingalloy> * 1440, 400, 7680);

// --- Medium Kinetic Generator
Assembler.addRecipe(<compactkineticgenerators:BlockCkg:9>, [<ore:plateDoubleTriniumNaquadahCarbonite>*12, <ore:rotorTriniumNaquadahCarbonite>*4, <miscutils:itemTungstenSteelShaft> * 4, <ore:gearGtSmallDraconium>*2, <gregtech:gt.metaitem.01:32604> * 2, <ore:circuitMaster>*2, <ore:wireGt04HSSG>*2, <compactkineticgenerators:BlockCkg:8>, <gregtech:gt.metaitem.01:32545>], <liquid:molten.solderingalloy> * 1728, 600, 30720);

// --- High Kinetic Generator
Assembler.addRecipe(<compactkineticgenerators:BlockCkg:10>, [<ore:plateDoubleCinobiteA243>*12, <ore:rotorCinobiteA243>*4, <miscutils:itemIridiumShaft> * 4, <ore:gearGtSmallOriharukon>*2, <gregtech:gt.metaitem.01:32606> * 2, <ore:circuitUltimate>*2, <ore:cableGt04VanadiumGallium>*2, <compactkineticgenerators:BlockCkg:9>, <gregtech:gt.metaitem.01:32550>], <liquid:molten.solderingalloy> * 2016, 800, 122880);

// --- Extreme Kinetic Generator
Assembler.addRecipe(<compactkineticgenerators:BlockCkg:11>, [<ore:plateTripleNeutronium>*8, <ore:rotorBlackPlutonium>*4, <miscutils:itemIridiumShaft> * 4, <ore:gearGtSmallQuantium>*2, <gregtech:gt.metaitem.01:32607> * 2, <ore:circuitSuperconductor>*2, <ore:cableGt08Duranium>*2, <compactkineticgenerators:BlockCkg:10>, <gregtech:gt.metaitem.01:32560>], <liquid:molten.solderingalloy> * 2304, 1000, 500000);


// --- Iridium Rotor Blade
recipes.addShaped(<compactkineticgenerators:IridiumBlade>, [
[<ore:plateAlloyIridium>, <ore:plateAlloyIridium>, <ore:plateAlloyIridium>],
[<ore:plateAlloyIridium>, <ore:ringTriniumTitaniumAlloy>, <ore:plateAlloyIridium>],
[<ore:plateAlloyIridium>, <ore:plateAlloyIridium>, <ore:plateAlloyIridium>]]);

// --- Kinetic Gearbox Rotor (Iridium)
recipes.addShaped(<compactkineticgenerators:IridiumRotor>, [
[<miscutils:itemIridiumShaft>, <compactkineticgenerators:IridiumBlade>, <ore:craftingToolHardHammer>],
[<compactkineticgenerators:IridiumBlade>, <ore:ringTriniumNaquadahCarbonite>, <compactkineticgenerators:IridiumBlade>],
[<ore:craftingToolWrench>, <compactkineticgenerators:IridiumBlade>, <miscutils:itemIridiumShaft>]]);
