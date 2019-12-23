import mods.gregtech.Mixer;
import mods.gregtech.Assembler;
import mods.gregtech.AlloySmelter;

//Bonemeal-Charcoal Mixture
recipes.remove(<GregsLighting:bonemealAndCharcoal>);
Mixer.addRecipe(<GregsLighting:bonemealAndCharcoal>, null, [<ore:dustBone>, <minecraft:coal:1>], null, 80, 8);
Mixer.addRecipe(<GregsLighting:bonemealAndCharcoal>, null, [<ore:dustBone>, <minecraft:coal>], null, 80, 8);

recipes.addShaped(<GregsLighting:bonemealAndCharcoal>, [[<ore:gemCharcoal>, <ore:dustBone>], [<ore:craftingToolMortar>, null]]);
recipes.addShaped(<GregsLighting:bonemealAndCharcoal>, [[<ore:dustBone>, <ore:gemCoal>], [<ore:craftingToolMortar>, null]]);


//IC2 Filament Assembly
recipes.remove(<GregsLighting:ic2FilamentAssembly>);
recipes.addShaped(<GregsLighting:ic2FilamentAssembly>, [
[<ore:stickIron>, <ore:wireFineElectrum>, <ore:stickIron>], 
[<ore:stickIron>, <ore:craftingToolWireCutter>, <ore:stickIron>], 
[<ore:plateIron>, <ore:wireGt01Tin>, <ore:plateIron>]]);

//IC2 Floodlight Bulb
recipes.remove(<GregsLighting:glowstoneBulb>);
Assembler.addRecipe(<GregsLighting:glowstoneBulb>, <gregtech:gt.metaitem.03:32012>, <GregsLighting:ic2FilamentAssembly>, <liquid:molten.solderingalloy>*36, 160, 16);

//IC2 Electric Floodlight
recipes.remove(<GregsLighting:ic2ElectricFloodlight>);
recipes.addShaped(<GregsLighting:ic2ElectricFloodlight>, [
[<ore:plateAluminium>, <ore:lensGlass>, <ore:plateAluminium>],
[<ore:circuitBasic>, <GregsLighting:glowstoneBulb>, <ore:circuitBasic>],
[<ore:plateAluminium>, <ore:wireGt01Copper>, <ore:plateAluminium>]]);

//Floodlight
recipes.remove(<GregsLighting:floodlight>);
recipes.addShaped(<GregsLighting:floodlight>, [
[<ore:plateStainlessSteel>, <ore:lensDiamond>, <ore:plateStainlessSteel>],
[<ore:circuitGood>, <GregsLighting:glowingIngot>, <ore:circuitGood>],
[<ore:plateStainlessSteel>, <ore:plateRedAlloy>, <ore:plateStainlessSteel>]]);

//Glowing Alloy Ingot
recipes.remove(<GregsLighting:glowingIngot>);
AlloySmelter.addRecipe(<GregsLighting:glowingIngot>, <ore:ingotGold>, <minecraft:glowstone> * 8, 400, 48);

//Carbide Floodlight
recipes.remove(<GregsLighting:carbideFloodlight>);
recipes.addShaped(<GregsLighting:carbideFloodlight>, [
[<ore:plateSteel>, <gregtech:gt.metaitem.03:32012>, <ore:plateSteel>],
[<minecraft:iron_bars>, <GregsLighting:gasNozzle>, <minecraft:iron_bars>],
[<ore:plateSteel>, <gregtech:gt.blockcasings3:14>, <ore:plateSteel>]]);

//Gas Nozzle
recipes.remove(<GregsLighting:gasNozzle>);
recipes.addShaped(<GregsLighting:gasNozzle>*2, [
[null, <ore:ringSteel>, null],
[<ore:craftingToolFile>, <ore:pipeSmallSteel>, <ore:craftingToolHardHammer>],
[null, <minecraft:iron_bars>, null]]);