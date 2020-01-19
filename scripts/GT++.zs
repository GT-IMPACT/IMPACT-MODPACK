#==========#
# GT++ #
#==========#

#===============================================#
#Imports
import mods.gregtech.Centrifuge;
import mods.gregtech.CircuitAssembler;
import mods.gregtech.CuttingSaw;
import mods.gregtech.Extruder;
import mods.gregtech.FluidExtractor;
import mods.gregtech.ForgeHammer;
import mods.gregtech.Mixer;
import mods.gregtech.PyrolyseOven;
import mods.gregtech.WireAssembler;
import mods.larger_workbenches.LargeCrafting;

print("Initializing 'GT++.zs'...");

#===============================================#
#Variables
var motorEV 		= <gregtech:gt.metaitem.01:32603>;
var motorIV 		= <gregtech:gt.metaitem.01:32604>;
var motorLUV 		= <gregtech:gt.metaitem.01:32606>;

var pumpEV			= <gregtech:gt.metaitem.01:32613>;
var pumpIV			= <gregtech:gt.metaitem.01:32614>;
var pumpLuV			= <gregtech:gt.metaitem.01:32620>;

var conveyerEV 		= <gregtech:gt.metaitem.01:32633>;
var conveyerIV 		= <gregtech:gt.metaitem.01:32634>;
var conveyerLUV 	= <gregtech:gt.metaitem.01:32636>;
var conveyerZPM 	= <gregtech:gt.metaitem.01:32637>;

var pistonEV 		= <gregtech:gt.metaitem.01:32643>;
var pistonIV 		= <gregtech:gt.metaitem.01:32644>;
var pistonLuV 		= <gregtech:gt.metaitem.01:32645>;

var robotArmIV 		= <gregtech:gt.metaitem.01:32654>;
var robotArmLUV 	= <gregtech:gt.metaitem.01:32655>;
var robotArmZPM 	= <gregtech:gt.metaitem.01:32656>;

var emitterZPM		= <gregtech:gt.metaitem.01:32686>;

var sensorZPM		= <gregtech:gt.metaitem.01:32696>;

var fieldgenIV 		= <gregtech:gt.metaitem.01:32674>;
var fieldgenLUV 	= <gregtech:gt.metaitem.01:32675>;

var HullHV 			= <gregtech:gt.blockmachines:13>;
var HullEV 			= <gregtech:gt.blockmachines:14>;
var HullIV 			= <gregtech:gt.blockmachines:15>;
var HullLuV 		= <gregtech:gt.blockmachines:16>;

#===============================================#

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

// --- Potin Rotor
recipes.addShaped(<miscutils:itemRotorPotin>, [
[<ore:platePotin>,<ore:craftingToolHardHammer>,<ore:platePotin>],
[<ore:screwPotin>,<ore:ringPotin>,<ore:craftingToolFile>],
[<ore:platePotin>,<ore:craftingToolScrewdriver>,<ore:platePotin>]]);

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

#==================================================================#
#Industial Centrifuge
recipes.remove(<gregtech:gt.blockmachines:790>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:790>, [
		[<ore:plateDoubleMaragingSteel250>, <ore:plateDoubleInconel792>, <ore:plateDoubleMaragingSteel250>, <ore:frameGtTitanium>, <ore:plateDoubleMaragingSteel250>, <ore:plateDoubleInconel792>, <ore:plateDoubleMaragingSteel250>],
		[<ore:plateDoubleInconel792>, <ore:circuitElite>, <ore:stickLongTumbaga>, <ore:frameGtTitanium>, <ore:stickLongTumbaga>, <ore:circuitElite>, <ore:plateDoubleInconel792>],
		[<ore:plateDoubleMaragingSteel250>, <ore:stickLongTumbaga>, motorIV, <gregtech:gt.blockcasings:5>, motorIV, <ore:stickLongTumbaga>, <ore:plateDoubleMaragingSteel250>],
		[<ore:frameGtTitanium>, <ore:frameGtTitanium>, <gregtech:gt.blockcasings:5>, <gregtech:gt.blockmachines:12193>, <gregtech:gt.blockcasings:5>, <ore:frameGtTitanium>, <ore:frameGtTitanium>],
		[<ore:plateDoubleMaragingSteel250>, <ore:stickLongTumbaga>, motorIV, <gregtech:gt.blockcasings:5>, motorIV, <ore:stickLongTumbaga>, <ore:plateDoubleMaragingSteel250>],
		[<ore:plateDoubleInconel792>, <ore:circuitElite>, <ore:stickLongTumbaga>, <ore:frameGtTitanium>, <ore:stickLongTumbaga>, <ore:circuitElite>, <ore:plateDoubleInconel792>],
		[<ore:plateDoubleMaragingSteel250>, <ore:plateDoubleInconel792>, <ore:plateDoubleMaragingSteel250>, <ore:frameGtTitanium>, <ore:plateDoubleMaragingSteel250>, <ore:plateDoubleInconel792>, <ore:plateDoubleMaragingSteel250>]
	]
);

#==================================================================#
#Industrial Coke Oven
recipes.remove(<gregtech:gt.blockmachines:791>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:791>, [
		[<ore:plateDoubleInconel792>, <ore:plateDoubleInconel792>, <ore:frameGtPotin>, <ore:plateDoubleInconel792>, <ore:plateDoubleInconel792>],
		[<ore:plateDoubleInconel792>, <ore:circuitData>, <Railcraft:machine.alpha:7>, <ore:circuitData>, <ore:plateDoubleInconel792>],
		[<ore:frameGtPotin>, <Railcraft:machine.alpha:7>, HullHV, <Railcraft:machine.alpha:7>, <ore:frameGtPotin>],
		[<ore:plateDoubleInconel792>, <ore:circuitData>, <Railcraft:machine.alpha:7>, <ore:circuitData>, <ore:plateDoubleInconel792>],
		[<ore:plateDoubleInconel792>, <ore:plateDoubleInconel792>, <ore:frameGtPotin>, <ore:plateDoubleInconel792>, <ore:plateDoubleInconel792>]
	]
);

#==================================================================#
#Industrial Electrolyzer
recipes.remove(<gregtech:gt.blockmachines:796>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:796>, [
		[<ore:plateDoubleChrome>, <ore:plateDoubleStellite>, <ore:plateDoubleStellite>, <ore:plateDoubleChrome>, <ore:plateDoubleStellite>, <ore:plateDoubleStellite>, <ore:plateDoubleChrome>],
		[<ore:plateDoubleStellite>, <ore:frameGtIncoloy020>, <ore:circuitElite>, <ore:stickLongChrome>, <ore:circuitElite>, <ore:frameGtIncoloy020>, <ore:plateDoubleStellite>],
		[<ore:plateDoubleStellite>, <ore:circuitElite>, <ore:wireGt08Platinum>, <ore:stickLongChrome>, <ore:wireGt08Platinum>, <ore:circuitElite>, <ore:plateDoubleStellite>],
		[<ore:plateDoubleChrome>, <ore:stickLongChrome>, <ore:stickLongChrome>, <gregtech:gt.blockmachines:12194>, <ore:stickLongChrome>, <ore:stickLongChrome>, <ore:plateDoubleChrome>],
		[<ore:plateDoubleStellite>, <ore:circuitElite>, <ore:wireGt08Platinum>, <ore:stickLongChrome>, <ore:wireGt08Platinum>, <ore:circuitElite>, <ore:plateDoubleStellite>],
		[<ore:plateDoubleStellite>, <ore:frameGtIncoloy020>, <ore:circuitElite>, <ore:stickLongChrome>, <ore:circuitElite>, <ore:frameGtIncoloy020>, <ore:plateDoubleStellite>],
		[<ore:plateDoubleChrome>, <ore:plateDoubleStellite>, <ore:plateDoubleStellite>, <ore:plateDoubleChrome>, <ore:plateDoubleStellite>, <ore:plateDoubleStellite>, <ore:plateDoubleChrome>]
	]
);

#==================================================================#
#Industrial Material Press
recipes.remove(<gregtech:gt.blockmachines:792>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:792>, [
		[<ore:plateDoubleTitanium>, <ore:plateDoubleTantalloy60>, <ore:frameGtTumbaga>, <ore:plateDoubleTantalloy60>, <ore:plateDoubleTitanium>],
		[<ore:plateDoubleTantalloy60>, pistonEV, <ore:gearGtTitanium>, pistonEV, <ore:plateDoubleTantalloy60>],
		[<ore:frameGtTumbaga>, <ore:circuitData>, <gregtech:gt.blockmachines:224>, <ore:circuitData>, <ore:frameGtTumbaga>],
		[<ore:plateDoubleTantalloy60>, pistonEV, <ore:gearGtTitanium>, pistonEV, <ore:plateDoubleTantalloy60>],
		[<ore:plateDoubleTitanium>, <ore:plateDoubleTantalloy60>, <ore:frameGtTumbaga>, <ore:plateDoubleTantalloy60>, <ore:plateDoubleTitanium>]
	]
);

#==================================================================#
#Industrial Maceration Stack
recipes.remove(<gregtech:gt.blockmachines:797>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:797>, [
		[<ore:plateDoubleTungtenCarbide>, <ore:plateDoubleNitinol60>, <ore:plateDoubleNitinol60>, <ore:frameGtPalladium>, <ore:plateDoubleNitinol60>, <ore:plateDoubleNitinol60>, <ore:plateDoubleTungtenCarbide>],
		[<ore:plateDoubleNitinol60>, pistonIV, <ore:circuitElite>, <ore:frameGtPalladium>, <ore:circuitElite>, pistonIV, <ore:plateDoubleNitinol60>],
		[<ore:plateDoubleNitinol60>, <ore:circuitElite>, <gregtech:gt.metaitem.01:32723>, <gregtech:gt.blockcasings:5>, <gregtech:gt.metaitem.01:32723>, <ore:circuitElite>, <ore:plateDoubleNitinol60>],
		[<ore:frameGtPalladium>, <ore:frameGtPalladium>, <gregtech:gt.blockcasings:5>, <gregtech:gt.blockmachines:305>, <gregtech:gt.blockcasings:5>, <ore:frameGtPalladium>, <ore:frameGtPalladium>],
		[<ore:plateDoubleNitinol60>, <ore:circuitElite>, <gregtech:gt.metaitem.01:32723>, <gregtech:gt.blockcasings:5>, <gregtech:gt.metaitem.01:32723>, <ore:circuitElite>, <ore:plateDoubleNitinol60>],
		[<ore:plateDoubleNitinol60>, motorIV, <ore:circuitElite>, <ore:frameGtPalladium>, <ore:circuitElite>, motorIV, <ore:plateDoubleNitinol60>],
		[<ore:plateDoubleTungtenCarbide>, <ore:plateDoubleNitinol60>, <ore:plateDoubleNitinol60>, <ore:frameGtPalladium>, <ore:plateDoubleNitinol60>, <ore:plateDoubleNitinol60>, <ore:plateDoubleTungtenCarbide>]
	]
);

#==================================================================#
#Industrial Wire Factory
recipes.remove(<gregtech:gt.blockmachines:798>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:798>, [
		[<ore:plateDoubleZeron100>, <ore:plateDoubleBlueSteel>, <ore:plateDoubleBlueSteel>, <ore:frameGtTantalloy60>, <ore:plateDoubleBlueSteel>, <ore:plateDoubleBlueSteel>, <ore:plateDoubleZeron100>],
		[<ore:plateDoubleBlueSteel>, <ore:circuitElite>, motorIV, <ore:frameGtTantalloy60>, motorIV, <ore:circuitElite>, <ore:plateDoubleBlueSteel>],
		[<ore:plateDoubleBlueSteel>, motorIV, <gregtech:gt.blockcasings:5>, <gregtech:gt.blockcasings2:4>, <gregtech:gt.blockcasings:5>, motorIV, <ore:plateDoubleBlueSteel>],
		[<ore:frameGtTantalloy60>, <ore:frameGtTantalloy60>, <gregtech:gt.blockcasings2:4>, <gregtech:gt.blockmachines:355>, <gregtech:gt.blockcasings2:4>, <ore:frameGtTantalloy60>, <ore:frameGtTantalloy60>],
		[<ore:plateDoubleBlueSteel>, motorIV, <gregtech:gt.blockcasings:5>, <gregtech:gt.blockcasings2:4>, <gregtech:gt.blockcasings:5>, motorIV, <ore:plateDoubleBlueSteel>],
		[<ore:plateDoubleBlueSteel>, <ore:circuitElite>, motorIV, <ore:frameGtTantalloy60>, motorIV, <ore:circuitElite>, <ore:plateDoubleBlueSteel>],
		[<ore:plateDoubleZeron100>, <ore:plateDoubleBlueSteel>, <ore:plateDoubleBlueSteel>, <ore:frameGtTantalloy60>, <ore:plateDoubleBlueSteel>, <ore:plateDoubleBlueSteel>, <ore:plateDoubleZeron100>]
	]
);

#==================================================================#
#Industrial Blast Smelter
recipes.remove(<gregtech:gt.blockmachines:810>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:810>, [
		[<ore:plateDoubleZirconiumCarbide>, <ore:plateDoubleZirconiumCarbide>, <ore:frameGtTitanium>, <ore:plateDoubleZirconiumCarbide>, <ore:plateDoubleZirconiumCarbide>],
		[<ore:plateDoubleZirconiumCarbide>, <ore:circuitData>, <ore:wireGt08Gold>, <ore:circuitData>, <ore:plateDoubleZirconiumCarbide>],
		[<ore:frameGtTitanium>, <ore:wireGt08Gold>, <gregtech:gt.blockmachines:204>, <ore:wireGt08Gold>, <ore:frameGtTitanium>],
		[<ore:plateDoubleZirconiumCarbide>, <ore:circuitData>, <ore:wireGt08Gold>, <ore:circuitData>, <ore:plateDoubleZirconiumCarbide>],
		[<ore:plateDoubleZirconiumCarbide>, <ore:plateDoubleZirconiumCarbide>, <ore:frameGtTitanium>, <ore:plateDoubleZirconiumCarbide>, <ore:plateDoubleZirconiumCarbide>]
	]
);

#==================================================================#
#Industrial Sieve
recipes.remove(<gregtech:gt.blockmachines:840>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:840>, [
		[<ore:plateDoubleEglinSteel>, <ore:plateDoubleEglinSteel>, <ore:frameGtStainlessSteel>, <ore:plateDoubleEglinSteel>, <ore:plateDoubleEglinSteel>],
		[<ore:plateDoubleEglinSteel>, <gregtech:gt.metaitem.01:32729>, <gregtech:gt.metaitem.01:32729>, <gregtech:gt.metaitem.01:32729>, <ore:plateDoubleEglinSteel>],
		[<ore:frameGtStainlessSteel>, <ore:circuitData>, <gregtech:gt.blockmachines:644>, <ore:circuitData>, <ore:frameGtStainlessSteel>],
		[<ore:plateDoubleEglinSteel>, pistonEV, pistonEV, pistonEV, <ore:plateDoubleEglinSteel>],
		[<ore:plateDoubleEglinSteel>, <ore:plateDoubleEglinSteel>, <ore:frameGtStainlessSteel>, <ore:plateDoubleEglinSteel>, <ore:plateDoubleEglinSteel>]
	]
);

#==================================================================#
#Thermal Centrifuge
recipes.remove(<gregtech:gt.blockmachines:849>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:849>, [
		[<ore:plateDoubleRedSteel>, <ore:plateDoubleRedSteel>, <ore:gearGtTalonite>, <ore:plateDoubleRedSteel>, <ore:plateDoubleRedSteel>],
		[<ore:plateDoubleRedSteel>, <ore:circuitData>, <ore:stickLongTalonite>, <ore:circuitData>, <ore:plateDoubleRedSteel>],
		[<ore:gearGtTalonite>, <ore:stickLongTalonite>, <gregtech:gt.blockmachines:384>, <ore:stickLongTalonite>, <ore:gearGtTalonite>],
		[<ore:plateDoubleRedSteel>, <ore:circuitData>, <ore:stickLongTalonite>, <ore:circuitData>, <ore:plateDoubleRedSteel>],
		[<ore:plateDoubleRedSteel>, <ore:plateDoubleRedSteel>, <ore:gearGtTalonite>, <ore:plateDoubleRedSteel>, <ore:plateDoubleRedSteel>]
	]
);

#==================================================================#
#Industrial Washer
recipes.remove(<gregtech:gt.blockmachines:850>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:850>, [
		[<ore:plateDoubleGrisium>, <ore:plateDoubleGrisium>, <ore:pipeHugeStainlessSteel>, <ore:plateDoubleGrisium>, <ore:plateDoubleGrisium>],
		[<ore:plateDoubleGrisium>, pumpEV, <ore:pipeHugeStainlessSteel>, pumpEV, <ore:plateDoubleGrisium>],
		[<ore:plateDoubleTalonite>, <ore:circuitData>, <gregtech:gt.blockmachines:394>, <ore:circuitData>, <ore:plateDoubleTalonite>],
		[<ore:plateDoubleGrisium>, <ore:rotorTalonite>, <ore:circuitData>, motorEV, <ore:plateDoubleGrisium>],
		[<ore:plateDoubleGrisium>, <ore:plateDoubleGrisium>, <ore:plateDoubleTalonite>, <ore:plateDoubleGrisium>, <ore:plateDoubleGrisium>]
	]
);

#==================================================================#
#Industrial Cutter
recipes.remove(<gregtech:gt.blockmachines:992>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:992>, [
		[<ore:plateDoubleMaragingSteel300>, <ore:plateDoubleMaragingSteel300>, <ore:plateDoubleStellite>, <ore:plateDoubleStellite>, <ore:plateDoubleStellite>, <ore:plateDoubleMaragingSteel300>, <ore:plateDoubleMaragingSteel300>],
		[<ore:plateDoubleMaragingSteel300>, <ore:stickLongMaragingSteel250>, <ore:frameGtPalladium>, <ore:frameGtPalladium>, <ore:frameGtPalladium>, <ore:stickLongMaragingSteel250>, <ore:plateDoubleMaragingSteel300>],
		[<ore:plateDoubleNitinol60>, <gregtech:gt.metaitem.01:32721>, motorLUV, <ore:circuitMaster>, motorLUV, <gregtech:gt.metaitem.01:32721>, <ore:plateDoubleNitinol60>],
		[<ore:plateDoubleNitinol60>, <gregtech:gt.metaitem.01:32721>, <ore:circuitMaster>, <gregtech:gt.blockmachines:256>, <ore:circuitMaster>, <gregtech:gt.metaitem.01:32721>, <ore:plateDoubleNitinol60>],
		[<ore:plateDoubleNitinol60>, <gregtech:gt.metaitem.01:32721>, motorLUV, <ore:circuitMaster>, motorLUV, <gregtech:gt.metaitem.01:32721>, <ore:plateDoubleNitinol60>],
		[<ore:plateDoubleMaragingSteel300>, <ore:stickLongMaragingSteel250>, <ore:frameGtPalladium>, <ore:frameGtPalladium>, <ore:frameGtPalladium>, <ore:stickLongMaragingSteel250>, <ore:plateDoubleMaragingSteel300>],
		[<ore:plateDoubleMaragingSteel300>, <ore:plateDoubleMaragingSteel300>, <ore:plateDoubleStellite>, <ore:plateDoubleStellite>, <ore:plateDoubleStellite>, <ore:plateDoubleMaragingSteel300>, <ore:plateDoubleMaragingSteel300>]
	]
);

#==================================================================#
#Industrial Extruder
recipes.remove(<gregtech:gt.blockmachines:859>);
LargeCrafting.addShaped(1, <gregtech:gt.blockmachines:859>, [
		[<ore:plateDoubleInconel690>, <ore:plateDoubleInconel690>, <ore:plateDoubleTalonite>, <ore:plateDoubleInconel690>, <ore:plateDoubleInconel690>],
		[<ore:plateDoubleInconel690>, pistonEV, <ore:circuitData>, pistonEV, <ore:plateDoubleInconel690>],
		[<ore:plateDoubleTalonite>, <ore:circuitData>, <gregtech:gt.blockmachines:284>, <ore:circuitData>, <ore:plateDoubleTalonite>],
		[<ore:plateDoubleInconel690>, conveyerEV, <ore:circuitData>, conveyerEV, <ore:plateDoubleInconel690>],
		[<ore:plateDoubleInconel690>, <ore:plateDoubleInconel690>, <ore:plateDoubleTalonite>, <ore:plateDoubleInconel690>, <ore:plateDoubleInconel690>]
	]
);

#==================================================================#
#Advanced Vacuum Freezer
recipes.remove(<gregtech:gt.blockmachines:910>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:910>, [
		[<ore:plateDoubleHG1223>, <ore:plateDoubleHG1223>, <ore:plateDoubleNitinol60>, <ore:plateDoubleNitinol60>, <ore:plateDoubleNitinol60>, <ore:plateDoubleHG1223>, <ore:plateDoubleHG1223>],
		[<ore:plateDoubleHG1223>, <ore:frameGtMaragingSteel300>, pumpIV, <ore:frameGtMaragingSteel300>, pumpIV, <ore:frameGtMaragingSteel300>, <ore:plateDoubleHG1223>],
		[<ore:plateDoubleNitinol60>, pumpIV, <ore:gearGtTungstenSteel>, fieldgenIV, <ore:gearGtTungstenSteel>, pumpIV, <ore:plateDoubleNitinol60>],
		[<ore:plateDoubleNitinol60>, <ore:frameGtMaragingSteel300>, <ore:circuitElite>, <gregtech:gt.blockmachines:1002>, <ore:circuitElite>, <ore:frameGtMaragingSteel300>, <ore:plateDoubleNitinol60>],
		[<ore:plateDoubleNitinol60>, pumpIV, <ore:gearGtTungstenSteel>, <miscutils:MU-metaitem.01:32055>, <ore:gearGtTungstenSteel>, pumpIV, <ore:plateDoubleNitinol60>],
		[<ore:plateDoubleHG1223>, <ore:frameGtMaragingSteel300>, pumpIV, <ore:frameGtMaragingSteel300>, pumpIV, <ore:frameGtMaragingSteel300>, <ore:plateDoubleHG1223>],
		[<ore:plateDoubleHG1223>, <ore:plateDoubleHG1223>, <ore:plateDoubleNitinol60>, <ore:plateDoubleNitinol60>, <ore:plateDoubleNitinol60>, <ore:plateDoubleHG1223>, <ore:plateDoubleHG1223>]
	]
);

#==================================================================#
#Advanced Blast Furnace
recipes.remove(<gregtech:gt.blockmachines:963>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:963>, [
		[<ore:plateDoubleHastelloyN>, <ore:plateDoubleHastelloyN>, <ore:plateDoubleHastelloyW>, <ore:plateDoubleHastelloyW>, <ore:plateDoubleHastelloyW>, <ore:plateDoubleHastelloyN>, <ore:plateDoubleHastelloyN>],
		[<ore:plateDoubleHastelloyN>, <ore:frameGtHastelloyX>, robotArmIV, <ore:frameGtHastelloyX>, robotArmIV, <ore:frameGtHastelloyX>, <ore:plateDoubleHastelloyN>],
		[<ore:plateDoubleHastelloyW>, robotArmIV, <ore:gearGtTungstenSteel>, fieldgenIV, <ore:gearGtTungstenSteel>, robotArmIV, <ore:plateDoubleHastelloyW>],
		[<ore:plateDoubleHastelloyW>, <ore:frameGtHastelloyX>, <ore:circuitElite>, <gregtech:gt.blockmachines:1000>, <ore:circuitElite>, <ore:frameGtHastelloyX>, <ore:plateDoubleHastelloyW>],
		[<ore:plateDoubleHastelloyW>, robotArmIV, <ore:gearGtTungstenSteel>, <miscutils:MU-metaitem.01:32055>, <ore:gearGtTungstenSteel>, robotArmIV, <ore:plateDoubleHastelloyW>],
		[<ore:plateDoubleHastelloyN>, <ore:frameGtHastelloyX>, robotArmIV, <ore:frameGtHastelloyX>, robotArmIV, <ore:frameGtHastelloyX>, <ore:plateDoubleHastelloyN>],
		[<ore:plateDoubleHastelloyN>, <ore:plateDoubleHastelloyN>, <ore:plateDoubleHastelloyW>, <ore:plateDoubleHastelloyW>, <ore:plateDoubleHastelloyW>, <ore:plateDoubleHastelloyN>, <ore:plateDoubleHastelloyN>]
	]
);

#==================================================================#
#Advanced Implosion Compressor
recipes.remove(<gregtech:gt.blockmachines:964>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:964>, [
		[<ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>, <IC2:itemPartIridium>, <IC2:itemPartIridium>, <IC2:itemPartIridium>, <ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>],
		[<ore:plateDoubleCinobiteA243>, <ore:frameGtStellite>, pistonIV, <ore:frameGtStellite>, pistonIV, <ore:frameGtStellite>, <ore:plateDoubleCinobiteA243>],
		[<IC2:itemPartIridium>, pistonIV, <ore:gearGtTungstenSteel>, fieldgenIV, <ore:gearGtTungstenSteel>, pistonIV, <IC2:itemPartIridium>],
		[<IC2:itemPartIridium>, <ore:frameGtStellite>, <ore:circuitElite>, <gregtech:gt.blockmachines:1001>, <ore:circuitElite>, <ore:frameGtStellite>, <IC2:itemPartIridium>],
		[<IC2:itemPartIridium>, pistonIV, <ore:gearGtTungstenSteel>, <miscutils:MU-metaitem.01:32055>, <ore:gearGtTungstenSteel>, pistonIV, <IC2:itemPartIridium>],
		[<ore:plateDoubleCinobiteA243>, <ore:frameGtStellite>, pistonIV, <ore:frameGtStellite>, pistonIV, <ore:frameGtStellite>, <ore:plateDoubleCinobiteA243>],
		[<ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>, <IC2:itemPartIridium>, <IC2:itemPartIridium>, <IC2:itemPartIridium>, <ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>]
	]
);

#==================================================================#
#Industrial Mixing Machine
recipes.remove(<gregtech:gt.blockmachines:811>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:811>, [
		[<ore:plateDoubleStaballoy>, <ore:plateDoubleStaballoy>, <ore:plateDoubleZirconiumCarbide>, <ore:plateDoubleZirconiumCarbide>, <ore:plateDoubleZirconiumCarbide>, <ore:plateDoubleStaballoy>, <ore:plateDoubleStaballoy>],
		[<ore:plateDoubleStaballoy>, <ore:rotorNitinol60>, <ore:stickLongMaragingSteel300>, <ore:stickLongMaragingSteel300>, <ore:stickLongMaragingSteel300>, <ore:rotorNitinol60>, <ore:plateDoubleStaballoy>],
		[<ore:plateDoubleZirconiumCarbide>, <ore:stickLongMaragingSteel300>, motorLUV, <ore:circuitMaster>, motorLUV, <ore:stickLongMaragingSteel300>, <ore:plateDoubleZirconiumCarbide>],
		[<ore:plateDoubleZirconiumCarbide>, <ore:stickLongMaragingSteel300>, <ore:gearGtHSSG>, <gregtech:gt.blockmachines:586>, <ore:gearGtHSSG>, <ore:stickLongMaragingSteel300>, <ore:plateDoubleZirconiumCarbide>],
		[<ore:plateDoubleZirconiumCarbide>, <ore:stickLongMaragingSteel300>, motorLUV, <ore:circuitMaster>, motorLUV, <ore:stickLongMaragingSteel300>, <ore:plateDoubleZirconiumCarbide>],
		[<ore:plateDoubleStaballoy>, <ore:rotorNitinol60>, <ore:stickLongMaragingSteel300>, <ore:stickLongMaragingSteel300>, <ore:stickLongMaragingSteel300>, <ore:rotorNitinol60>, <ore:plateDoubleStaballoy>],
		[<ore:plateDoubleStaballoy>, <ore:plateDoubleStaballoy>, <ore:plateDoubleZirconiumCarbide>, <ore:plateDoubleZirconiumCarbide>, <ore:plateDoubleZirconiumCarbide>, <ore:plateDoubleStaballoy>, <ore:plateDoubleStaballoy>]
	]
);

#==================================================================#
#Industrial MultiMachine
recipes.remove(<gregtech:gt.blockmachines:860>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:860>, [
		[<ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleStaballoy>, <ore:plateDoubleStaballoy>, <ore:plateDoubleStaballoy>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>],
		[<ore:plateDoubleTungstenSteel>, <ore:frameGtStellite>, <ore:circuitElite>, <ore:frameGtStellite>, <ore:circuitElite>, <ore:frameGtStellite>, <ore:plateDoubleTungstenSteel>],
		[<ore:plateDoubleStaballoy>, pumpLuV, <ore:frameGtStellite>, <ore:circuitMaster>, <ore:frameGtStellite>, pistonLuV, <ore:plateDoubleStaballoy>],
		[<ore:plateDoubleStaballoy>, robotArmLUV, <ore:circuitMaster>, HullLuV, <ore:circuitMaster>, robotArmLUV, <ore:plateDoubleStaballoy>],
		[<ore:plateDoubleStaballoy>, conveyerLUV, <ore:frameGtStellite>, <ore:circuitMaster>, <ore:frameGtStellite>, conveyerLUV, <ore:plateDoubleStaballoy>],
		[<ore:plateDoubleTungstenSteel>, <ore:frameGtStellite>, <ore:circuitElite>, <ore:frameGtStellite>, <ore:circuitElite>, <ore:frameGtStellite>, <ore:plateDoubleTungstenSteel>],
		[<ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleStaballoy>, <ore:plateDoubleStaballoy>, <ore:plateDoubleStaballoy>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>]
	]
);

#==================================================================#
#Amazon Warehousing Depot
recipes.remove(<gregtech:gt.blockmachines:942>);
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:942>, [
		[<ore:plateDoubleArceusAlloy2B>, <ore:plateDoubleArceusAlloy2B>, <ore:frameGtHSSG>, <ore:frameGtHSSG>, <ore:frameGtHSSG>, <ore:plateDoubleArceusAlloy2B>, <ore:plateDoubleArceusAlloy2B>],
		[<ore:plateDoubleArceusAlloy2B>, robotArmLUV, conveyerLUV, <ore:pipeLargeOsmium>, conveyerLUV, robotArmLUV, <ore:plateDoubleArceusAlloy2B>],
		[<ore:frameGtHSSG>, conveyerLUV, <ore:circuitMaster>, <ore:pipeLargeOsmium>, <ore:circuitMaster>, conveyerLUV, <ore:frameGtHSSG>],
		[<ore:frameGtHSSG>, <ore:pipeLargeOsmium>, <ore:pipeLargeOsmium>, <gregtech:gt.blockmachines:406>, <ore:pipeLargeOsmium>, <ore:pipeLargeOsmium>, <ore:frameGtHSSG>],
		[<ore:frameGtHSSG>, conveyerLUV, <ore:circuitMaster>, <miscutils:MU-metaitem.01:32055>, <ore:circuitMaster>, conveyerLUV, <ore:frameGtHSSG>],
		[<ore:plateDoubleArceusAlloy2B>, robotArmLUV, conveyerLUV, fieldgenLUV, conveyerLUV, robotArmLUV, <ore:plateDoubleArceusAlloy2B>],
		[<ore:plateDoubleArceusAlloy2B>, <ore:plateDoubleArceusAlloy2B>, <ore:frameGtHSSG>, <ore:frameGtHSSG>, <ore:frameGtHSSG>, <ore:plateDoubleArceusAlloy2B>, <ore:plateDoubleArceusAlloy2B>]
	]
);

#==================================================================#
#Large Scale Auto Aasembler
LargeCrafting.addShaped(3, <gregtech:gt.blockmachines:876>, [
		[<ore:plateDoublePikyonium64B>, <ore:plateDoublePikyonium64B>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleOsmiridium>, <ore:plateDoublePikyonium64B>, <ore:plateDoublePikyonium64B>],
		[<ore:plateDoublePikyonium64B>, robotArmZPM, <ore:circuitUltimate>, <ore:frameGtArceusAlloy2B>, <ore:circuitUltimate>, robotArmZPM, <ore:plateDoublePikyonium64B>],
		[<ore:plateDoubleOsmiridium>, <ore:circuitUltimate>, robotArmZPM, <miscutils:itemCircuitLFTR>, robotArmZPM, <ore:circuitUltimate>, <ore:plateDoubleOsmiridium>],
		[<ore:plateDoubleOsmiridium>, <ore:frameGtArceusAlloy2B>, <miscutils:itemCircuitLFTR>, <gregtech:gt.blockmachines:217>, <miscutils:itemCircuitLFTR>, <ore:frameGtArceusAlloy2B>, <ore:plateDoubleOsmiridium>],
		[<ore:plateDoubleOsmiridium>, <ore:circuitUltimate>, conveyerZPM, <miscutils:MU-metaitem.01:32055>, conveyerZPM, <ore:circuitUltimate>, <ore:plateDoubleOsmiridium>],
		[<ore:plateDoublePikyonium64B>, conveyerZPM, <ore:circuitUltimate>, <ore:frameGtArceusAlloy2B>, <ore:circuitUltimate>, conveyerZPM, <ore:plateDoublePikyonium64B>],
		[<ore:plateDoublePikyonium64B>, <ore:plateDoublePikyonium64B>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleOsmiridium>, <ore:plateDoubleOsmiridium>, <ore:plateDoublePikyonium64B>, <ore:plateDoublePikyonium64B>]
	]
);

#==================================================================#
#Pyrotheum
FluidExtractor.addRecipe(null, <ore:dustPyrotheum>, <liquid:pyrotheum> * 144, 10000, 200, 48);

#Cryotheum
FluidExtractor.addRecipe(null, <ore:dustCryotheum>, <liquid:cryotheum> * 144, 10000, 200, 48);

#==================================================================#

print("Initialized 'GT++.zs'");
