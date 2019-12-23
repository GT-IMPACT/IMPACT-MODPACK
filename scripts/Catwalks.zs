import mods.gregtech.Assembler;
import mods.gregtech.PrecisionLaser;

recipes.remove(<catwalks:scaffold>);
recipes.remove(<catwalks:cagedLadder_north_unlit>);
recipes.remove(<catwalks:scaffold:1>);
recipes.remove(<catwalks:steelgrate>);
recipes.remove(<catwalks:catwalk_unlit>);
recipes.remove(<catwalks:support_column>);
recipes.remove(<catwalks:sturdy_rail_detector>);
recipes.remove(<catwalks:sturdy_rail>);
recipes.remove(<catwalks:sturdy_rail_activator>);
recipes.remove(<catwalks:sturdy_rail_powered>);
recipes.remove(<catwalks:blowtorch>);


Assembler.addRecipe(<catwalks:scaffold>, <gregtech:gt.blockmachines:4401>, <catwalks:steelgrate>, null, 80, 24); 
Assembler.addRecipe(<catwalks:cagedLadder_north_unlit>, <catwalks:steelgrate>*3, <minecraft:ladder>, null, 80, 24); 
Assembler.addRecipe(<minecraft:ladder>*3, <minecraft:stick>*6, <gregtech:gt.integrated_circuit:1>*0, null, 60, 12); 
Assembler.addRecipe(<catwalks:catwalk_unlit>, <catwalks:steelgrate>*4, <gregtech:gt.integrated_circuit:1>*0, null, 80, 24); 
Assembler.addRecipe(<catwalks:support_column>, <catwalks:steelgrate>*2, <gregtech:gt.integrated_circuit:2>*0, null, 80, 18); 
Assembler.addRecipe(<catwalks:sturdy_rail_detector>, <minecraft:detector_rail>, <catwalks:steelgrate>, null, 80, 24); 
Assembler.addRecipe(<catwalks:sturdy_rail>, <minecraft:rail>, <catwalks:steelgrate>, null, 80, 24); 
Assembler.addRecipe(<catwalks:sturdy_rail_activator>, <minecraft:activator_rail>, <catwalks:steelgrate>, null, 80, 24); 
Assembler.addRecipe(<catwalks:sturdy_rail_powered>, <minecraft:golden_rail>, <catwalks:steelgrate>, null, 80, 24); 


//Chemical Bath
//OutputArray, InputStack, InputFluid, OutputArrayChances, Time in Ticks, EnergyUsage
mods.gregtech.ChemicalBath.addRecipe([<catwalks:scaffold:1>], <catwalks:scaffold>, <liquid:dye.watermixed.dyeorange> * 20, [10000], 60, 2);



//Precision Laser
PrecisionLaser.addRecipe(<catwalks:steelgrate>, <gregtech:gt.metaitem.01:17305>, <gregtech:gt.metaitem.01:24890> * 0, 80, 20);


recipes.addShapeless(<catwalks:blowtorch>, [<ore:craftingToolScrewdriver>.noReturn()]);
