#Author: Spartak1997
import mods.gregtech.Centrifuge;
import mods.gregtech.CircuitAssembler;
import mods.gregtech.CuttingSaw;
import mods.gregtech.Extruder;
import mods.gregtech.ForgeHammer;
import mods.gregtech.Mixer;
import mods.gregtech.PyrolyseOven;
import mods.gregtech.WireAssembler;

// --- Simple Generators
recipes.remove(<gregtech:gt.blockmachines:960>);
recipes.remove(<gregtech:gt.blockmachines:961>);
recipes.remove(<gregtech:gt.blockmachines:962>);

recipes.addShaped(<gregtech:gt.blockmachines:960>, [
[<spartakcore:item.ULVPiston>, <ore:circuitPrimitive>, <spartakcore:item.ULVPiston>], 
[<spartakcore:item.ULVMotor>,<gregtech:gt.blockmachines:10>,<spartakcore:item.ULVMotor>], 
[<ore:gearGtWroughtIron>,<ore:cableGt01Lead>,<ore:gearGtWroughtIron>]]);

recipes.addShaped(<gregtech:gt.blockmachines:961>, [
[<ore:circuitPrimitive>, <ore:rotorLead>, <ore:circuitPrimitive>], 
[<ore:rotorLead>,<gregtech:gt.blockmachines:10>,<ore:rotorLead>], 
[<spartakcore:item.ULVMotor>,<ore:cableGt01Lead>,<spartakcore:item.ULVMotor>]]);

recipes.addShaped(<gregtech:gt.blockmachines:962>, [
[<ore:pipeSmallLead>, <ore:circuitPrimitive>, <ore:pipeSmallLead>], 
[<ore:rotorLead>,<gregtech:gt.blockmachines:10>,<ore:rotorLead>], 
[<spartakcore:item.ULVMotor>,<ore:cableGt01Lead>,<spartakcore:item.ULVMotor>]]);

<gregtech:gt.blockmachines:960>.displayName = "First Combustion Generator";
<gregtech:gt.blockmachines:961>.displayName = "First Gas Generator";
<gregtech:gt.blockmachines:962>.displayName = "First Steam Generator";

recipes.remove(<gregtech:gt.blockmachines:13025>);
recipes.remove(<gregtech:gt.blockmachines:13026>);
recipes.remove(<gregtech:gt.blockmachines:13027>);

// --- Accelerated Frame
recipes.remove(<miscutils:frameAccelerated>);

// --- Mutagenic Frame
recipes.remove(<miscutils:frameMutagenic>);

// --- Working Frame
recipes.remove(<miscutils:frameBusy>);

// --- Decaying Frame
recipes.remove(<miscutils:frameDecaying>);

// --- Slowing Frame
recipes.remove(<miscutils:frameSlowing>);

// --- Stabilizing Frame
recipes.remove(<miscutils:frameStabilizing>);

// --- Arborists Frame
recipes.remove(<miscutils:frameArborists>);

// --- Tumbaga Dust
//recipes.remove(<miscutils:itemDustTumbaga>);
recipes.addShapeless(<miscutils:itemDustTumbaga>*9, [<ore:dustGold>, <ore:dustGold>, <ore:dustGold>, <ore:dustGold>, <ore:dustGold>, <ore:dustGold>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);

recipes.addShaped(<miscutils:MU-metaitem.01:32032>, [
[<ore:cableGt01Lead>, <ore:rotorPotin>, <gregtech:gt.metaitem.01:28879>], 
[<ore:craftingToolScrewdriver>, <ore:pipeSmallLead>, <ore:craftingToolWrench>], 
[<gregtech:gt.metaitem.01:28879>, <miscutils:MU-metaitem.01:32033>, <ore:cableGt01Lead>]]);
recipes.addShapeless(<gregtech:gt.metaitem.01:32610>, [<miscutils:MU-metaitem.01:32032>, <ore:cableGt01Tin>, <ore:foilSteel>, <gregtech:gt.metaitem.01:32600>]);


//Tantal
recipes.addShaped(<gregtech:gt.metaitem.01:32499>*2, [
[null, <ore:foilManganese>, null], 
[<ore:foilManganese>,<ore:dustTantalum>,<ore:foilManganese>], 
[<ore:boltIron>,null,<ore:boltIron>]]);

//BBF
recipes.remove(<gregtech:gt.blockmachines:108>);

//EBF
recipes.remove(<gregtech:gt.blockmachines:1000>);
recipes.addShaped(<gregtech:gt.blockmachines:1000>, [
[<gregtech:gt.blockmachines:671>, <gregtech:gt.blockmachines:671>, <gregtech:gt.blockmachines:671>], 
[<ore:plateDoubleTumbaga>, <gregtech:gt.blockcasings:11>, <ore:plateDoubleTumbaga>], 
[<ore:circuitBasic>, <ore:cableGt02Tin>, <ore:circuitBasic>]]);

//Freezer
recipes.remove(<gregtech:gt.blockmachines:1002>);
recipes.addShaped(<gregtech:gt.blockmachines:1002>, [
[<gregtech:gt.metaitem.01:32612>, <gregtech:gt.metaitem.01:32612>, <gregtech:gt.metaitem.01:32612>], 
[<ore:plateDoublePotin>, <gregtech:gt.blockcasings2:1>, <ore:plateDoublePotin>], 
[<ore:circuitData>, <ore:cableGt02Gold>, <ore:circuitData>]]);

//SP
recipes.remove(<gregtech:gt.metaitem.01:32750>);
recipes.addShaped(<gregtech:gt.metaitem.01:32750>, [
[<gregtech:gt.metaitem.03:32033>, <IC2:blockAlloyGlass>, <gregtech:gt.metaitem.03:32033>], 
[<ore:circuitBasic>, <ore:plateAlloyCarbon>, <ore:circuitBasic>], 
[<ore:wireGt01RedAlloy>, <ore:plateDoubleAluminium>, <ore:wireGt01RedAlloy>]]);
recipes.remove(<gregtech:gt.metaitem.01:32751>);
recipes.addShaped(<gregtech:gt.metaitem.01:32751>, [
[<gregtech:gt.metaitem.01:32750>, <gregtech:gt.metaitem.03:32033>, <gregtech:gt.metaitem.01:32750>], 
[<ore:circuitGood>, <ore:plateGalliumArsenide>, <ore:circuitGood>], 
[<ore:wireGt01Tin>, <ore:plateDoubleStainlessSteel>, <ore:wireGt01Tin>]]);
recipes.remove(<gregtech:gt.metaitem.01:32752>);
recipes.addShaped(<gregtech:gt.metaitem.01:32752>, [
[<gregtech:gt.metaitem.01:32751>, <gregtech:gt.metaitem.03:32034>, <gregtech:gt.metaitem.01:32751>], 
[<ore:circuitAdvanced>, <ore:plateDoubleGalliumArsenide>, <ore:circuitAdvanced>], 
[<ore:wireGt01Cobalt>, <ore:plateDoubleHastelloyW>, <ore:wireGt01Cobalt>]]);
recipes.remove(<gregtech:gt.metaitem.01:32753>);
recipes.addShaped(<gregtech:gt.metaitem.01:32753>, [
[<gregtech:gt.metaitem.01:32752>,<gregtech:gt.metaitem.01:32752>,<gregtech:gt.metaitem.01:32752>], 
[<ore:circuitData>, <ore:plateTripleGalliumArsenide>, <ore:circuitData>], 
[<ore:wireGt01SuperconductorMV>, <ore:plateDoubleIncoloyMA956>, <ore:wireGt01SuperconductorMV>]]);

// --- Advanced Solar Panel
recipes.addShaped(<gregtech:gt.metaitem.01:32752>, [
[<ore:craftingToolCrowbar>, <AdvancedSolarPanel:BlockAdvSolarPanel>, <ore:craftingToolScrewdriver>],
[<ore:craftingToolWrench>, <ore:craftingToolHardHammer>, <ore:craftingToolFile>]]);

// --- Hybrid Solar Panel
recipes.addShaped(<gregtech:gt.metaitem.01:32753>, [
[<ore:craftingToolCrowbar>, <AdvancedSolarPanel:BlockAdvSolarPanel:1>, <ore:craftingToolScrewdriver>],
[<ore:craftingToolWrench>, <ore:craftingToolHardHammer>, <ore:craftingToolFile>]]);

// --- Ultimate Hybrid Solar Panel
recipes.addShaped(<gregtech:gt.metaitem.01:32754>, [
[<ore:craftingToolCrowbar>, <AdvancedSolarPanel:BlockAdvSolarPanel:2>, <ore:craftingToolScrewdriver>],
[<ore:craftingToolWrench>, <ore:craftingToolHardHammer>, <ore:craftingToolFile>]]);

// --- Apatite Stick
ForgeHammer.addRecipe(<gregtech:gt.metaitem.02:22530>, <ore:stickApatite>*2, 55, 16);
recipes.addShaped(<gregtech:gt.metaitem.02:22530>, [[<ore:stickApatite>,<ore:craftingToolHardHammer>,<ore:stickApatite>]]);

ForgeHammer.addRecipe(<gregtech:gt.metaitem.02:22526>, <ore:stickLapis>*2, 55, 16);
recipes.addShaped(<gregtech:gt.metaitem.02:22526>, [[<ore:stickLapis>,<ore:craftingToolHardHammer>,<ore:stickLapis>]]);

// --- KGR Energetic Alloy
recipes.remove(<miscutils:itemEnergeticRotorBlade>);
recipes.addShaped(<miscutils:itemEnergeticRotorBlade>, [
[<ore:plateEnergeticAlloy>,<ore:plateEnergeticAlloy>,<ore:plateEnergeticAlloy>],
[<ore:plateEnergeticAlloy>,<ore:ringStainlessSteel>,<ore:plateEnergeticAlloy>],
[<ore:plateEnergeticAlloy>,<ore:plateEnergeticAlloy>,<ore:plateEnergeticAlloy>]]);

// --- KGR TungstenSteel
recipes.remove(<miscutils:itemTungstenSteelRotorBlade>);
recipes.addShaped(<miscutils:itemTungstenSteelRotorBlade>, [
[<ore:plateTungstenSteel>,<ore:plateTungstenSteel>,<ore:plateTungstenSteel>],
[<ore:plateTungstenSteel>,<ore:ringOsmium>,<ore:plateTungstenSteel>],
[<ore:plateTungstenSteel>,<ore:plateTungstenSteel>,<ore:plateTungstenSteel>]]);

// --- KGR VibrantAlloy
recipes.remove(<miscutils:itemVibrantRotorBlade>);
recipes.addShaped(<miscutils:itemVibrantRotorBlade>, [
[<ore:plateVibrantAlloy>,<ore:plateVibrantAlloy>,<ore:plateVibrantAlloy>],
[<ore:plateVibrantAlloy>,<ore:ringEuropium>,<ore:plateVibrantAlloy>],
[<ore:plateVibrantAlloy>,<ore:plateVibrantAlloy>,<ore:plateVibrantAlloy>]]);

// --- KGR Iridium
recipes.remove(<miscutils:itemwcarbonrotor:1>);
recipes.remove(<miscutils:itemIridiumRotorBlade>);

// --- Gt++ rotors
Extruder.addRecipe(<miscutils:itemRotorTumbaga>, <ore:ingotTumbaga>*5, <gregtech:gt.metaitem.01:32375> * 0, 200, 60);
Extruder.addRecipe(<miscutils:itemRotorPotin>, <ore:ingotPotin>*5, <gregtech:gt.metaitem.01:32375> * 0, 200, 60);
Extruder.addRecipe(<miscutils:itemRotorEglinSteel>, <ore:ingotEglinSteel>*5, <gregtech:gt.metaitem.01:32375> * 0, 200, 60);
Extruder.addRecipe(<miscutils:itemRotorNitinol60>, <ore:ingotNitinol60>*5, <gregtech:gt.metaitem.01:32375> * 0, 200, 7680);
Extruder.addRecipe(<miscutils:itemRotorStellite>, <ore:ingotStellite>*5, <gregtech:gt.metaitem.01:32375> * 0, 200, 1920);
Extruder.addRecipe(<miscutils:itemRotorHastelloyW>, <ore:ingotHastelloyW>*5, <gregtech:gt.metaitem.01:32375> * 0, 200, 480);
Extruder.addRecipe(<miscutils:itemRotorTriniumNaquadahCarbonite>, <ore:ingotTriniumNaquadahCarbonite>*5, <gregtech:gt.metaitem.01:32375> * 0, 200, 30720);
Extruder.addRecipe(<miscutils:itemRotorArceusAlloy2B>, <ore:ingotArceusAlloy2B>*5, <gregtech:gt.metaitem.01:32375> * 0, 200, 122880);
Extruder.addRecipe(<miscutils:itemRotorCinobiteA243>, <ore:ingotCinobiteA243>*5, <gregtech:gt.metaitem.01:32375> * 0, 200, 122880);
Extruder.addRecipe(<miscutils:itemRotorPikyonium64B>, <ore:ingotPikyonium64B>*5, <gregtech:gt.metaitem.01:32375> * 0, 200, 122880);
Extruder.addRecipe(<miscutils:itemRotorAbyssalAlloy>, <ore:ingotAbyssalAlloy>*5, <gregtech:gt.metaitem.01:32375> * 0, 200, 1966080);
Extruder.addRecipe(<miscutils:itemRotorZirconiumCarbide>, <ore:ingotZirconiumCarbide>*5, <gregtech:gt.metaitem.01:32375> * 0, 200, 60);
Extruder.addRecipe(<miscutils:itemRotorIncoloy020>, <ore:ingotIncoloy020>*5, <gregtech:gt.metaitem.01:32375> * 0, 200, 480);

// --- Pyrolise Oven
PyrolyseOven.addRecipe(<minecraft:coal:1>*24, <liquid:fluid.coalgas> * 1440, 20, <miscutils:blockRainforestOakLog>*20, <liquid:steam> * 1000, 1440, 30);
PyrolyseOven.addRecipe(<minecraft:coal:1>*20, <liquid:woodtar> * 1500, 9, <miscutils:blockRainforestOakLog>*16, null, 740, 64);
PyrolyseOven.addRecipe(<minecraft:coal:1>*20, <liquid:creosote> * 4000, 1, <miscutils:blockRainforestOakLog>*16, null, 740, 64);
PyrolyseOven.addRecipe(<minecraft:coal:1>*20, <liquid:woodgas> * 1500, 5, <miscutils:blockRainforestOakLog>*16, null, 740, 64);
PyrolyseOven.addRecipe(<minecraft:coal:1>*20, <liquid:woodvinegar> * 3000, 7, <miscutils:blockRainforestOakLog>*16, null, 740, 64);
PyrolyseOven.addRecipe(<minecraft:coal:1>*20, <liquid:creosote> * 4000, 2, <miscutils:blockRainforestOakLog>*16, <liquid:nitrogen> * 1000, 320, 96);
PyrolyseOven.addRecipe(<minecraft:coal:1>*20, <liquid:woodtar> * 1500, 10, <miscutils:blockRainforestOakLog>*16, <liquid:nitrogen> * 1000, 320, 96);
PyrolyseOven.addRecipe(<minecraft:coal:1>*20, <liquid:charcoal_byproducts> * 4000, 4, <miscutils:blockRainforestOakLog>*16, <liquid:nitrogen> * 1000, 320, 96);
PyrolyseOven.addRecipe(<minecraft:coal:1>*20, <liquid:woodgas> * 1500, 6, <miscutils:blockRainforestOakLog>*16, <liquid:nitrogen> * 1000, 320, 96);
PyrolyseOven.addRecipe(<minecraft:coal:1>*20, <liquid:woodvinegar> * 3000, 8, <miscutils:blockRainforestOakLog>*16, <liquid:nitrogen> * 1000, 320, 96);
PyrolyseOven.addRecipe(<gregtech:gt.metaitem.01:2815>*4, <liquid:liquid_heavy_oil> * 200, 3, <miscutils:blockRainforestOakLog>*16, null, 320, 192);

// --- Batteries Tooltips for Tiers ---


// --- LV Tier
<gregtech:gt.metaitem.01:32510>.addTooltip(format.red("LV-tier"));
<gregtech:gt.metaitem.01:32511>.addTooltip(format.gold("LV-tier"));
<gregtech:gt.metaitem.01:32517>.addTooltip(format.yellow("LV-tier"));
<gregtech:gt.metaitem.01:32518>.addTooltip(format.darkRed("LV-tier"));
<gregtech:gt.metaitem.01:32519>.addTooltip(format.green("LV-tier"));
<gregtech:gt.metaitem.03:32200>.addTooltip(format.aqua("LV-tier"));

// --- MV Tier
<gregtech:gt.metaitem.01:32520>.addTooltip(format.red("MV-tier"));
<gregtech:gt.metaitem.01:32521>.addTooltip(format.gold("MV-tier"));
<gregtech:gt.metaitem.01:32527>.addTooltip(format.yellow("MV-tier"));
<gregtech:gt.metaitem.01:32528>.addTooltip(format.darkRed("MV-tier"));
<gregtech:gt.metaitem.01:32529>.addTooltip(format.green("MV-tier"));
<gregtech:gt.metaitem.03:32201>.addTooltip(format.aqua("MV-tier"));

// --- HV Tier
<gregtech:gt.metaitem.01:32530>.addTooltip(format.red("HV-tier"));
<gregtech:gt.metaitem.01:32531>.addTooltip(format.gold("HV-tier"));
<gregtech:gt.metaitem.01:32537>.addTooltip(format.yellow("HV-tier"));
<gregtech:gt.metaitem.01:32538>.addTooltip(format.darkRed("HV-tier"));
<gregtech:gt.metaitem.01:32539>.addTooltip(format.green("HV-tier"));
<IC2:itemBatCrystal:*>.addTooltip(format.darkBlue("HV-tier"));
<gregtech:gt.metaitem.03:32202>.addTooltip(format.aqua("HV-tier"));

// --- EV Tier
<gregtech:gt.metaitem.01:32540>.addTooltip(format.green("EV-tier"));
<IC2:itemBatLamaCrystal:*>.addTooltip(format.darkBlue("EV-tier"));
<gregtech:gt.metaitem.03:32203>.addTooltip(format.aqua("EV-tier"));
<miscutils:MU-metaitem.01:32050>.addTooltip(format.gray("EV-tier"));
<miscutils:MU-metaitem.01:32052>.addTooltip(format.gray("EV-tier"));
<miscutils:MU-metaitem.01:32054>.addTooltip(format.gray("EV-tier"));

// --- IV Tier
<gregtech:gt.metaitem.01:32545>.addTooltip(format.green("IV-tier"));
<gregtech:gt.metaitem.01:32597>.addTooltip(format.gold("IV-tier"));
<gregtech:gt.metaitem.03:32204>.addTooltip(format.aqua("IV-tier"));
<AFSU:ALC:*>.addTooltip(format.darkBlue("IV-tier"));

// --- LuV Tier
<gregtech:gt.metaitem.01:32550>.addTooltip(format.green("LuV-tier"));
<gregtech:gt.metaitem.01:32599>.addTooltip(format.gold("LuV-tier"));
<miscutils:MU-metaitem.01:32066>.addTooltip(format.gray("LuV-tier"));

// --- ZPM Tier
<gregtech:gt.metaitem.01:32555>.addTooltip(format.green("ZPM-tier"));
<gregtech:gt.metaitem.01:32736>.addTooltip(format.gold("ZPM-tier"));
<gregtech:gt.metaitem.01:32598>.addTooltip(format.red("ZPM-tier"));
<miscutils:MU-metaitem.01:32068>.addTooltip(format.gray("ZPM-tier"));

// --- UV Tier
<gregtech:gt.metaitem.01:32560>.addTooltip(format.green("UV-tier"));
<gregtech:gt.metaitem.01:32737>.addTooltip(format.gold("UV-tier"));
<gregtech:gt.metaitem.03:32205>.addTooltip(format.darkRed("UV-tier"));
<miscutils:MU-metaitem.01:32070>.addTooltip(format.gray("UV-tier"));

// --- UHV Tier
<gregtech:gt.metaitem.01:32570>.addTooltip(format.green("UHV-tier"));
<gregtech:gt.metaitem.01:32605>.addTooltip(format.red("UHV-tier"));
<gregtech:gt.metaitem.03:32206>.addTooltip(format.darkRed("UHV-tier"));

// --- UEV Tier
<gregtech:gt.metaitem.01:32575>.addTooltip(format.green("UEV-tier"));
<gregtech:gt.metaitem.03:32207>.addTooltip(format.darkRed("UEV-tier"));

// --- UIV Tier
<gregtech:gt.metaitem.01:32580>.addTooltip(format.green("UIV-tier"));

// --- UMV Tier
//<gregtech:gt.metaitem.01:32585>.addTooltip(format.green("UMV-tier"));
<gregtech:gt.metaitem.01:32738>.addTooltip(format.gold("UMV-tier"));

// --- UXV Tier
//<gregtech:gt.metaitem.01:32590>.addTooltip(format.green("UXV-tier"));

// --- Wood Pulp
recipes.addShapeless(<gregtech:gt.metaitem.01:2809> * 2, [<ore:craftingToolMortar>, <ore:logWood>]);

// --- Brick Dust
recipes.addShapeless(<gregtech:gt.metaitem.01:1625>, [<ore:craftingToolMortar>, <minecraft:brick>]);

// --- Long Plastic Rood
recipes.addShaped(<gregtech:gt.metaitem.02:22874>, [[<ore:stickPlastic>, <ore:craftingToolHardHammer>, <ore:stickPlastic>]]);

// --- Flour
recipes.addShaped(<gregtech:gt.metaitem.01:2881>, [
[<ore:cropBarley>, null, null],
[<ore:craftingToolMortar>, null, null]]);
// -
recipes.addShaped(<gregtech:gt.metaitem.01:2881>, [
[<ore:cropWheat>, null, null],
[<ore:craftingToolMortar>, null, null]]);
// -
recipes.addShaped(<gregtech:gt.metaitem.01:2881>, [
[<ore:cropRye>, null, null],
[<ore:craftingToolMortar>, null, null]]);
// -
recipes.addShaped(<gregtech:gt.metaitem.01:2881>, [
[<ore:cropOats>, null, null],
[<ore:craftingToolMortar>, null, null]]);

// --- Rainforest Oak Fix
recipes.addShapeless(<minecraft:planks>*2,
[<miscutils:blockRainforestOakLog>]);
recipes.addShaped(<minecraft:planks>*4, [
[<ore:craftingToolSaw>],
[<miscutils:blockRainforestOakLog>]]);
CuttingSaw.addRecipe([<minecraft:planks>*4, <gregtech:gt.metaitem.01:2809> * 2], <miscutils:blockRainforestOakLog>, <liquid:water> * 5, 400, 8);
CuttingSaw.addRecipe([<minecraft:planks>*4, <gregtech:gt.metaitem.01:2809> * 2], <miscutils:blockRainforestOakLog>, <liquid:ic2distilledwater> * 3, 400, 8);
CuttingSaw.addRecipe([<minecraft:planks>*6, <gregtech:gt.metaitem.01:2809>], <miscutils:blockRainforestOakLog>, <liquid:lubricant> * 1, 200, 8);

// --- Accelerated Frame
mods.forestry.Carpenter.addRecipe(60, <liquid:molten.redstone> * 576, 
[<gregtech:gt.metaitem.02:22303>, <gregtech:gt.metaitem.01:23303>, <gregtech:gt.metaitem.02:22303>, 
<gregtech:gt.metaitem.01:23303>, <gregtech:gt.metaitem.01:29303>, <gregtech:gt.metaitem.01:23303>, 
<gregtech:gt.metaitem.02:22303>, <gregtech:gt.metaitem.01:23303>, <gregtech:gt.metaitem.02:22303>],
<Forestry:frameImpregnated>, <miscutils:frameAccelerated>);

// --- Mutagenic Frame
mods.forestry.Carpenter.addRecipe(60, <liquid:molten.redstone> * 576, 
[<gregtech:gt.metaitem.02:22097>, <gregtech:gt.metaitem.01:23101>, <gregtech:gt.metaitem.02:22097>, 
<gregtech:gt.metaitem.01:23101>, <gregtech:gt.metaitem.01:29101>, <gregtech:gt.metaitem.01:23101>, 
<gregtech:gt.metaitem.02:22097>, <gregtech:gt.metaitem.01:23101>, <gregtech:gt.metaitem.02:22097>],
<Forestry:frameImpregnated>, <miscutils:frameMutagenic>);

// --- Working Frame
mods.forestry.Carpenter.addRecipe(60, <liquid:molten.redstone> * 576, 
[<gregtech:gt.metaitem.02:22349>, <gregtech:gt.metaitem.01:23349>, <gregtech:gt.metaitem.02:22349>, 
<gregtech:gt.metaitem.01:23349>, <minecraft:nether_star>, <gregtech:gt.metaitem.01:23349>, 
<gregtech:gt.metaitem.02:22349>, <gregtech:gt.metaitem.01:23349>, <gregtech:gt.metaitem.02:22349>],
<Forestry:frameImpregnated>, <miscutils:frameBusy>);

// --- Decaying Frame
mods.forestry.Carpenter.addRecipe(60, <liquid:molten.redstone> * 576, 
[<gregtech:gt.metaitem.02:22304>, <gregtech:gt.metaitem.01:23304>, <gregtech:gt.metaitem.02:22304>, 
<gregtech:gt.metaitem.01:23304>, <gregtech:gt.metaitem.01:29304>, <gregtech:gt.metaitem.01:23304>, 
<gregtech:gt.metaitem.02:22304>, <gregtech:gt.metaitem.01:23304>, <gregtech:gt.metaitem.02:22304>],
<Forestry:frameImpregnated>, <miscutils:frameDecaying>);

// --- Slowing Frame
mods.forestry.Carpenter.addRecipe(60, <liquid:molten.redstone> * 576, 
[<miscutils:itemRodLongTumbaga>, <miscutils:itemRodTumbaga>, <miscutils:itemRodLongTumbaga>, 
<miscutils:itemRodTumbaga>, <gregtech:gt.metaitem.01:29303>, <miscutils:itemRodTumbaga>, 
<miscutils:itemRodLongTumbaga>, <miscutils:itemRodTumbaga>, <miscutils:itemRodLongTumbaga>],
<Forestry:frameImpregnated>, <miscutils:frameSlowing>);

// --- Stabilizing Frame
mods.forestry.Carpenter.addRecipe(60, <liquid:molten.redstone> * 576, 
[<gregtech:gt.metaitem.02:22317>, <gregtech:gt.metaitem.01:23317>, <gregtech:gt.metaitem.02:22317>, 
<gregtech:gt.metaitem.01:23317>, <gregtech:gt.metaitem.01:29317>, <gregtech:gt.metaitem.01:23317>, 
<gregtech:gt.metaitem.02:22317>, <gregtech:gt.metaitem.01:23317>, <gregtech:gt.metaitem.02:22317>],
<Forestry:frameImpregnated>, <miscutils:frameStabilizing>);

// --- Arborists Frame
mods.forestry.Carpenter.addRecipe(60, <liquid:molten.redstone> * 576, 
[<gregtech:gt.metaitem.02:22889>, <gregtech:gt.metaitem.01:23889>, <gregtech:gt.metaitem.02:22889>, 
<gregtech:gt.metaitem.01:23889>, <minecraft:paper>, <gregtech:gt.metaitem.01:23889>, 
<gregtech:gt.metaitem.02:22889>, <gregtech:gt.metaitem.01:23889>, <gregtech:gt.metaitem.02:22889>],
<Forestry:frameImpregnated>, <miscutils:frameArborists>);

// --- Cable fix
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30662>, [<ore:wireGt01Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30662>, [<ore:wireGt01Grisium>, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30662>, [<ore:wireGt01Grisium>, <ore:dustSmallPolyvinylChloride>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30662>, [<ore:wireGt01Grisium>, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30662>, [<ore:wireGt01Grisium>, <ore:dustSmallPolyvinylChloride>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30662>, [<ore:wireGt01Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30662>, [<ore:wireGt01Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 144, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30663>, [<ore:wireGt02Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30663>, [<ore:wireGt02Grisium>, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30663>, [<ore:wireGt02Grisium>, <ore:dustSmallPolyvinylChloride>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30663>, [<ore:wireGt02Grisium>, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30663>, [<ore:wireGt02Grisium>, <ore:dustSmallPolyvinylChloride>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30663>, [<ore:wireGt02Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30663>, [<ore:wireGt02Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 144, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30664>, [<ore:wireGt04Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30664>, [<ore:wireGt04Grisium>, <ore:dustSmallPolydimethylsiloxane>*2], <liquid:molten.styrenebutadienerubber> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30664>, [<ore:wireGt04Grisium>, <ore:dustSmallPolyvinylChloride>*2], <liquid:molten.styrenebutadienerubber> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30664>, [<ore:wireGt04Grisium>, <ore:dustSmallPolydimethylsiloxane>*2], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30664>, [<ore:wireGt04Grisium>, <ore:dustSmallPolyvinylChloride>*2], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30664>, [<ore:wireGt04Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 216, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30664>, [<ore:wireGt04Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 288, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30665>, [<ore:wireGt08Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 216, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30665>, [<ore:wireGt08Grisium>, <ore:dustSmallPolydimethylsiloxane>*3], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30665>, [<ore:wireGt08Grisium>, <ore:dustSmallPolyvinylChloride>*3], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30665>, [<ore:wireGt08Grisium>, <ore:dustSmallPolydimethylsiloxane>*3], <liquid:molten.silicone> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30665>, [<ore:wireGt08Grisium>, <ore:dustSmallPolyvinylChloride>*3], <liquid:molten.silicone> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30665>, [<ore:wireGt08Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 324, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30665>, [<ore:wireGt08Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 432, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30666>, [<ore:wireGt12Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 288, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30666>, [<ore:wireGt12Grisium>, <ore:dustSmallPolydimethylsiloxane>*4], <liquid:molten.styrenebutadienerubber> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30666>, [<ore:wireGt12Grisium>, <ore:dustSmallPolyvinylChloride>*4], <liquid:molten.styrenebutadienerubber> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30666>, [<ore:wireGt12Grisium>, <ore:dustSmallPolydimethylsiloxane>*4], <liquid:molten.silicone> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30666>, [<ore:wireGt12Grisium>, <ore:dustSmallPolyvinylChloride>*4], <liquid:molten.silicone> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30666>, [<ore:wireGt12Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 432, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30666>, [<ore:wireGt12Grisium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 576, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30673>, [<ore:wireGt01Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30673>, [<ore:wireGt01Zirconium>, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30673>, [<ore:wireGt01Zirconium>, <ore:dustSmallPolyvinylChloride>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30673>, [<ore:wireGt01Zirconium>, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30673>, [<ore:wireGt01Zirconium>, <ore:dustSmallPolyvinylChloride>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30673>, [<ore:wireGt01Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30673>, [<ore:wireGt01Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 144, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30674>, [<ore:wireGt02Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30674>, [<ore:wireGt02Zirconium>, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30674>, [<ore:wireGt02Zirconium>, <ore:dustSmallPolyvinylChloride>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30674>, [<ore:wireGt02Zirconium>, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30674>, [<ore:wireGt02Zirconium>, <ore:dustSmallPolyvinylChloride>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30674>, [<ore:wireGt02Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30674>, [<ore:wireGt02Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 144, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30675>, [<ore:wireGt04Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30675>, [<ore:wireGt04Zirconium>, <ore:dustSmallPolydimethylsiloxane>*2], <liquid:molten.styrenebutadienerubber> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30675>, [<ore:wireGt04Zirconium>, <ore:dustSmallPolyvinylChloride>*2], <liquid:molten.styrenebutadienerubber> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30675>, [<ore:wireGt04Zirconium>, <ore:dustSmallPolydimethylsiloxane>*2], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30675>, [<ore:wireGt04Zirconium>, <ore:dustSmallPolyvinylChloride>*2], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30675>, [<ore:wireGt04Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 216, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30675>, [<ore:wireGt04Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 288, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30676>, [<ore:wireGt08Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 216, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30676>, [<ore:wireGt08Zirconium>, <ore:dustSmallPolydimethylsiloxane>*3], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30676>, [<ore:wireGt08Zirconium>, <ore:dustSmallPolyvinylChloride>*3], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30676>, [<ore:wireGt08Zirconium>, <ore:dustSmallPolydimethylsiloxane>*3], <liquid:molten.silicone> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30676>, [<ore:wireGt08Zirconium>, <ore:dustSmallPolyvinylChloride>*3], <liquid:molten.silicone> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30676>, [<ore:wireGt08Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 324, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30676>, [<ore:wireGt08Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 432, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30677>, [<ore:wireGt12Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 288, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30677>, [<ore:wireGt12Zirconium>, <ore:dustSmallPolydimethylsiloxane>*4], <liquid:molten.styrenebutadienerubber> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30677>, [<ore:wireGt12Zirconium>, <ore:dustSmallPolyvinylChloride>*4], <liquid:molten.styrenebutadienerubber> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30677>, [<ore:wireGt12Zirconium>, <ore:dustSmallPolydimethylsiloxane>*4], <liquid:molten.silicone> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30677>, [<ore:wireGt12Zirconium>, <ore:dustSmallPolyvinylChloride>*4], <liquid:molten.silicone> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30677>, [<ore:wireGt12Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 432, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30677>, [<ore:wireGt12Zirconium>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 576, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30695>, [<ore:wireGt01TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30695>, [<ore:wireGt01TriniumTitaniumAlloy>, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30695>, [<ore:wireGt01TriniumTitaniumAlloy>, <ore:dustSmallPolyvinylChloride>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30695>, [<ore:wireGt01TriniumTitaniumAlloy>, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30695>, [<ore:wireGt01TriniumTitaniumAlloy>, <ore:dustSmallPolyvinylChloride>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30695>, [<ore:wireGt01TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30695>, [<ore:wireGt01TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 144, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30696>, [<ore:wireGt02TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30696>, [<ore:wireGt02TriniumTitaniumAlloy>, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30696>, [<ore:wireGt02TriniumTitaniumAlloy>, <ore:dustSmallPolyvinylChloride>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30696>, [<ore:wireGt02TriniumTitaniumAlloy>, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30696>, [<ore:wireGt02TriniumTitaniumAlloy>, <ore:dustSmallPolyvinylChloride>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30696>, [<ore:wireGt02TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30696>, [<ore:wireGt02TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 144, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30697>, [<ore:wireGt04TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30697>, [<ore:wireGt04TriniumTitaniumAlloy>, <ore:dustSmallPolydimethylsiloxane>*2], <liquid:molten.styrenebutadienerubber> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30697>, [<ore:wireGt04TriniumTitaniumAlloy>, <ore:dustSmallPolyvinylChloride>*2], <liquid:molten.styrenebutadienerubber> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30697>, [<ore:wireGt04TriniumTitaniumAlloy>, <ore:dustSmallPolydimethylsiloxane>*2], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30697>, [<ore:wireGt04TriniumTitaniumAlloy>, <ore:dustSmallPolyvinylChloride>*2], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30697>, [<ore:wireGt04TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 216, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30697>, [<ore:wireGt04TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 288, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30698>, [<ore:wireGt08TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 216, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30698>, [<ore:wireGt08TriniumTitaniumAlloy>, <ore:dustSmallPolydimethylsiloxane>*3], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30698>, [<ore:wireGt08TriniumTitaniumAlloy>, <ore:dustSmallPolyvinylChloride>*3], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30698>, [<ore:wireGt08TriniumTitaniumAlloy>, <ore:dustSmallPolydimethylsiloxane>*3], <liquid:molten.silicone> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30698>, [<ore:wireGt08TriniumTitaniumAlloy>, <ore:dustSmallPolyvinylChloride>*3], <liquid:molten.silicone> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30698>, [<ore:wireGt08TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 324, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30698>, [<ore:wireGt08TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 432, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30699>, [<ore:wireGt12TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 288, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30699>, [<ore:wireGt12TriniumTitaniumAlloy>, <ore:dustSmallPolydimethylsiloxane>*4], <liquid:molten.styrenebutadienerubber> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30699>, [<ore:wireGt12TriniumTitaniumAlloy>, <ore:dustSmallPolyvinylChloride>*4], <liquid:molten.styrenebutadienerubber> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30699>, [<ore:wireGt12TriniumTitaniumAlloy>, <ore:dustSmallPolydimethylsiloxane>*4], <liquid:molten.silicone> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30699>, [<ore:wireGt12TriniumTitaniumAlloy>, <ore:dustSmallPolyvinylChloride>*4], <liquid:molten.silicone> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30699>, [<ore:wireGt12TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 432, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30699>, [<ore:wireGt12TriniumTitaniumAlloy>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 576, 100, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30684>, [<ore:wireGt01HG1223>, <ore:dustSmallPolydimethylsiloxane>, <ore:foilPolyphenyleneSulfide>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30684>, [<ore:wireGt01HG1223>, <ore:dustSmallPolyvinylChloride>, <ore:foilPolyphenyleneSulfide>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30684>, [<ore:wireGt01HG1223>, <ore:foilPolyphenyleneSulfide>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30684>, [<ore:wireGt01HG1223>, <ore:dustSmallPolyvinylChloride>, <ore:foilPolyphenyleneSulfide>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30684>, [<ore:wireGt01HG1223>, <ore:dustSmallPolydimethylsiloxane>, <ore:foilPolyphenyleneSulfide>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30684>*4, [<ore:wireGt01HG1223>*4, <ore:dustPolydimethylsiloxane>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.styrenebutadienerubber> * 144, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30684>*4, [<ore:wireGt01HG1223>*4, <ore:dustPolydimethylsiloxane>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.silicone> * 144, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30684>*4, [<ore:wireGt01HG1223>*4, <ore:dustPolyvinylChloride>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.styrenebutadienerubber> * 144, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30684>*4, [<ore:wireGt01HG1223>*4, <ore:dustPolyvinylChloride>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.silicone> * 144, 400, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30685>, [<ore:wireGt02HG1223>, <ore:dustSmallPolydimethylsiloxane>, <ore:foilPolyphenyleneSulfide>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30685>, [<ore:wireGt02HG1223>, <ore:dustSmallPolyvinylChloride>, <ore:foilPolyphenyleneSulfide>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30685>, [<ore:wireGt02HG1223>, <ore:foilPolyphenyleneSulfide>, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30685>, [<ore:wireGt02HG1223>, <ore:dustSmallPolyvinylChloride>, <ore:foilPolyphenyleneSulfide>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30685>, [<ore:wireGt02HG1223>, <ore:dustSmallPolydimethylsiloxane>, <ore:foilPolyphenyleneSulfide>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30685>*4, [<ore:wireGt02HG1223>*4, <ore:dustPolydimethylsiloxane>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.styrenebutadienerubber> * 144, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30685>*4, [<ore:wireGt02HG1223>*4, <ore:dustPolydimethylsiloxane>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.silicone> * 144, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30685>*4, [<ore:wireGt02HG1223>*4, <ore:dustPolyvinylChloride>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.styrenebutadienerubber> * 144, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30685>*4, [<ore:wireGt02HG1223>*4, <ore:dustPolyvinylChloride>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.silicone> * 144, 400, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30686>, [<ore:wireGt04HG1223>, <ore:dustSmallPolydimethylsiloxane>*2, <ore:foilPolyphenyleneSulfide>*2], <liquid:molten.styrenebutadienerubber> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30686>, [<ore:wireGt04HG1223>, <ore:dustSmallPolyvinylChloride>*2, <ore:foilPolyphenyleneSulfide>*2], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30686>, [<ore:wireGt04HG1223>, <ore:foilPolyphenyleneSulfide>*2, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30686>, [<ore:wireGt04HG1223>, <ore:dustSmallPolyvinylChloride>*2, <ore:foilPolyphenyleneSulfide>*2], <liquid:molten.styrenebutadienerubber> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30686>, [<ore:wireGt04HG1223>, <ore:dustSmallPolydimethylsiloxane>*2, <ore:foilPolyphenyleneSulfide>*2], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30686>*2, [<ore:wireGt04HG1223>*2, <ore:dustPolydimethylsiloxane>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.styrenebutadienerubber> * 144, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30686>*2, [<ore:wireGt04HG1223>*2, <ore:dustPolydimethylsiloxane>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.silicone> * 144, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30686>*2, [<ore:wireGt04HG1223>*2, <ore:dustPolyvinylChloride>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.styrenebutadienerubber> * 144, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30686>*2, [<ore:wireGt04HG1223>*2, <ore:dustPolyvinylChloride>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.silicone> * 144, 400, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30687>, [<ore:wireGt08HG1223>, <ore:dustSmallPolydimethylsiloxane>*3, <ore:foilPolyphenyleneSulfide>*3], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30687>, [<ore:wireGt08HG1223>, <ore:dustSmallPolyvinylChloride>*3, <ore:foilPolyphenyleneSulfide>*3], <liquid:molten.silicone> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30687>, [<ore:wireGt08HG1223>, <ore:foilPolyphenyleneSulfide>*3, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 216, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30687>, [<ore:wireGt08HG1223>, <ore:dustSmallPolyvinylChloride>*3, <ore:foilPolyphenyleneSulfide>*3], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30687>, [<ore:wireGt08HG1223>, <ore:dustSmallPolydimethylsiloxane>*3, <ore:foilPolyphenyleneSulfide>*3], <liquid:molten.silicone> * 108, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30687>*4, [<ore:wireGt08HG1223>*4, <ore:dustPolydimethylsiloxane>*3, <ore:foilPolyphenyleneSulfide>*12], <liquid:molten.styrenebutadienerubber> * 432, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30687>*4, [<ore:wireGt08HG1223>*4, <ore:dustPolydimethylsiloxane>*3, <ore:foilPolyphenyleneSulfide>*12], <liquid:molten.silicone> * 432, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30687>*4, [<ore:wireGt08HG1223>*4, <ore:dustPolyvinylChloride>*3, <ore:foilPolyphenyleneSulfide>*12], <liquid:molten.styrenebutadienerubber> * 432, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30687>*4, [<ore:wireGt08HG1223>*4, <ore:dustPolyvinylChloride>*3, <ore:foilPolyphenyleneSulfide>*12], <liquid:molten.silicone> * 432, 400, 8);

WireAssembler.addRecipe(<gregtech:gt.blockmachines:30688>, [<ore:wireGt12HG1223>, <ore:dustPolyvinylChloride>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.silicone> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30688>, [<ore:wireGt12HG1223>, <ore:foilPolyphenyleneSulfide>*4, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 288, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30688>, [<ore:wireGt12HG1223>, <ore:dustPolyvinylChloride>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.styrenebutadienerubber> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30688>, [<ore:wireGt12HG1223>, <ore:dustSmallPolydimethylsiloxane>*4, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.silicone> * 144, 100, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30688>, [<ore:wireGt12HG1223>, <ore:dustPolydimethylsiloxane>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.styrenebutadienerubber> * 432, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30688>, [<ore:wireGt12HG1223>, <ore:dustPolydimethylsiloxane>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.silicone> * 144, 400, 8);
WireAssembler.addRecipe(<gregtech:gt.blockmachines:30688>, [<ore:wireGt12HG1223>, <ore:dustPolyvinylChloride>, <ore:foilPolyphenyleneSulfide>*4], <liquid:molten.styrenebutadienerubber> * 144, 400, 8);

// --- Superconductor recipes
WireAssembler.addRecipe(<gregtech:gt.blockcasings:15>, [<ore:wireGt02SuperconductorIV>*64, <ore:foilNiobiumTitanium>*64], <liquid:molten.refinedtrinium> * 5760, 4800, 7680, true);
WireAssembler.addRecipe(<gregtech:gt.blockcasings:15>, [<ore:wireGt02SuperconductorLuV>*32, <ore:foilNiobiumTitanium>*32], <liquid:molten.refinedtrinium> * 4320, 2400, 30720, true);
WireAssembler.addRecipe(<gregtech:gt.blockcasings:15>, [<ore:wireGt02SuperconductorZPM>*16, <ore:foilNiobiumTitanium>*16], <liquid:molten.refinedtrinium> * 2880, 1200, 122880, true);
WireAssembler.addRecipe(<gregtech:gt.blockcasings:15>, [<ore:wireGt02SuperconductorUV>*8, <ore:foilNiobiumTitanium>*8], <liquid:molten.refinedtrinium> * 1440, 600, 500000, true);
WireAssembler.addRecipe(<gregtech:gt.blockcasings:15>, [<ore:wireGt01Superconductor>*8, <ore:foilNiobiumTitanium>*4], <liquid:molten.refinedtrinium> * 720, 300, 2000000, true);

// --- Deep Iron
Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1032>, <gregtech:gt.metaitem.01:1032>, <gregtech:gt.metaitem.01:1032>, <miscutils:itemDustSmallTrinium>], null, <gregtech:gt.metaitem.01:2829>, null, null, [10000, 10000, 10000, 10000], 200, 30720);

// --- Naquadah Alloy
Mixer.addRecipe(<gregtech:gt.metaitem.01:2325>*4, null, [<ore:dustNaquadah>*2, <ore:dustTrinium>, <ore:dustCarbon>, <gregtech:gt.integrated_circuit:2>*0], null, 200, 30720);

// --- Orichalcum
Centrifuge.addRecipe([<miscutils:itemDustSmallTrinium>,<miscutils:itemDustSmallTrinium>,<miscutils:itemDustSmallTrinium>,<gregtech:gt.metaitem.01:1389>], null, <ore:dustOrichalcum>, null, null, [10000, 10000, 10000, 10000], 300, 122880);

// --- Motors
mods.gregtech.AssemblyLine.addRecipe(<gregtech:gt.metaitem.01:32604>, 140000, [<gregtech:gt.metaitem.02:22356>, <gregtech:gt.metaitem.02:22374>*2, <gregtech:gt.metaitem.01:28341>*4, <gregtech:gt.metaitem.01:25341>*16, <gregtech:gt.metaitem.02:19345>*64, <gregtech:gt.metaitem.02:19345>*64, <gregtech:gt.metaitem.02:19345>*64, <gregtech:gt.metaitem.02:19345>*64, <gregtech:gt.blockmachines:1766>*2], [<liquid:molten.solderingalloy> * 144, <liquid:lubricant> * 250], <gregtech:gt.metaitem.01:32606>, 500, 6000);
mods.gregtech.AssemblyLine.addRecipe(<gregtech:gt.metaitem.01:32606>, 160000, [<gregtech:gt.metaitem.01:23393>, <gregtech:gt.metaitem.02:22317>*4, <gregtech:gt.metaitem.01:28884>*6, <gregtech:gt.metaitem.01:25884>*32, <gregtech:gt.metaitem.02:19321>*64, <gregtech:gt.metaitem.02:19321>*64, <gregtech:gt.metaitem.02:19321>*64, <gregtech:gt.metaitem.02:19321>*64, <gregtech:gt.blockmachines:1788>*2], [<liquid:molten.solderingalloy> * 288, <liquid:lubricant> * 750], <gregtech:gt.metaitem.01:32607>, 700, 24000);
mods.gregtech.AssemblyLine.addRecipe(<gregtech:gt.metaitem.01:32607>, 180000, [<gregtech:gt.metaitem.02:23393>, <gregtech:gt.metaitem.02:22329>*6, <gregtech:gt.metaitem.01:28389>*8, <gregtech:gt.metaitem.01:25389>*64, <gregtech:gt.metaitem.02:19103>*64, <gregtech:gt.metaitem.02:19103>*64, <gregtech:gt.metaitem.02:19103>*64, <gregtech:gt.metaitem.02:19103>*64, <gregtech:gt.blockmachines:1808>*2], [<liquid:molten.solderingalloy> * 1296, <liquid:lubricant> * 2000, <liquid:molten.naquadria> * 1296], <gregtech:gt.metaitem.01:32608>, 800, 100000);
