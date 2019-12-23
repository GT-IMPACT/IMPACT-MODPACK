// --- Created By DreamMasterXXL --- 


// --- Mod Import ---


import mods.gregtech.Assembler;

import mods.ic2.Compressor;
import mods.gregtech.Centrifuge;
import mods.gregtech.Electrolyzer;
import mods.gregtech.ImplosionCompressor;
import mods.gregtech.Pulverizer;
import mods.nei.NEI;



// --- Remove Recipes





// --- Lead Boots
recipes.remove(<GalaxySpace:item.lead_boots>);

// --- Lead Chestplate
recipes.remove(<GalaxySpace:item.lead_plate>);

// --- Lead Helmet
recipes.remove(<GalaxySpace:item.lead_helmet>);

// --- Lead Leggings
recipes.remove(<GalaxySpace:item.lead_leg>);

// --- Cobaltum Boots
recipes.remove(<GalaxySpace:item.cobaltum_boots>);

// --- Cobaltum Chestplate
recipes.remove(<GalaxySpace:item.cobaltum_plate>);

// --- Cobaltum Helmet
recipes.remove(<GalaxySpace:item.cobaltum_helmet>);

// --- Cobaltum Leggings
recipes.remove(<GalaxySpace:item.cobaltum_leg>);

// --- Lead Battery
recipes.remove(<GalaxySpace:item.LeadBattery:*>);

// --- Solar Flares
recipes.remove(<GalaxySpace:item.SolarFlares:1>);

// --- Part Solar Flares
recipes.remove(<GalaxySpace:item.SolarFlares>);

// --- Solar Wind Panel
recipes.remove(<GalaxySpace:solarwindpanel>);

// --- Quant Bow
recipes.remove(<GalaxySpace:item.QuantBow>);

// --- Electrical Jetpack
recipes.remove(<GalaxySpace:item.JetPack:*>);

// --- Geothermal Generator
recipes.remove(<GalaxySpace:geothermalgenerator>);

// --- Fuel Generator
recipes.remove(<GalaxySpace:fuelgenerator>);

// --- Assembly Machine
recipes.remove(<GalaxySpace:assemblymachine>);

// --- Converter Surface
recipes.remove(<GalaxySpace:convertersurface>);

// --- Plasma Sword
recipes.remove(<GalaxySpace:item.plasmasword:*>);

// --- Plasma Pickaxe
recipes.remove(<GalaxySpace:item.plasmapickaxe:*>);

// --- Plasma Axe
recipes.remove(<GalaxySpace:item.plasmaaxe:*>);

// --- Plasma Hoe
recipes.remove(<GalaxySpace:item.plasmahoe:*>);

// --- Plasma Shovel
recipes.remove(<GalaxySpace:item.plasmashovel:*>);

// --- Thermal Cloth Tier 2
recipes.remove(<GalaxySpace:item.ThermalClothT2>);

// --- Thermal Helmet Tier 2
recipes.remove(<GalaxySpace:item.ThermalPaddingT2>);

// --- Thermal Chestplate Tier 2
recipes.remove(<GalaxySpace:item.ThermalPaddingT2:1>);

// --- Thermal Leggings Tier 2
recipes.remove(<GalaxySpace:item.ThermalPaddingT2:2>);

// --- Thermal Boots Tier 2
recipes.remove(<GalaxySpace:item.ThermalPaddingT2:3>);

// --- Ceres Glowstone
recipes.remove(<GalaxySpace:ceresglowstone>);

// --- IO Glowstone
recipes.remove(<GalaxySpace:ioglowstone>);

// --- Enceladus Glowstone
recipes.remove(<GalaxySpace:enceladusglowstone>);

// --- Proteus Glowstone
recipes.remove(<GalaxySpace:proteusglowstone>);

// --- Pluto Glowstone
recipes.remove(<GalaxySpace:plutoglowstone>);

// --- Durable Nose Cone Tier 2
recipes.remove(<GalaxySpace:item.RocketParts>);

// --- Durable Engine Tier 2
recipes.remove(<GalaxySpace:item.RocketParts:1>);

// --- Durable Booster Tier 2
recipes.remove(<GalaxySpace:item.RocketParts:2>);

// --- Durable Fins Tier 2
recipes.remove(<GalaxySpace:item.RocketParts:3>);

// --- Decorate Lead
recipes.remove(<GalaxySpace:metalsblock>);

// --- Decorate Adamantite
recipes.remove(<GalaxySpace:metalsblock:1>);

// --- Decorate Cobaltum
recipes.remove(<GalaxySpace:metalsblock:2>);

// --- Decorate Magnesium
recipes.remove(<GalaxySpace:metalsblock:3>);

// --- Decorate Mithril
recipes.remove(<GalaxySpace:metalsblock:4>);

// --- Decorate Nickel
recipes.remove(<GalaxySpace:metalsblock:5>);

// --- Decorate Oriharukon
recipes.remove(<GalaxySpace:metalsblock:6>);

// --- Decorate Platinum
recipes.remove(<GalaxySpace:metalsblock:7>);

// --- Decorate Wolfranium
recipes.remove(<GalaxySpace:metalsblock:8>);

// --- Decorate Copper
recipes.remove(<GalaxySpace:metalsblock:9>);

// --- Future Glass
recipes.remove(<GalaxySpace:futureglass>);

// --- Advanced Machine Frame
recipes.remove(<GalaxySpace:machineframes>);

// --- Hybride Solar Panel
recipes.remove(<GalaxySpace:solarPanel>);

// --- Advanced Energy Cluster
recipes.remove(<GalaxySpace:storagemoduleT3>);

// --- Advanced Oxygen Module
recipes.remove(<GalaxySpace:oxstoragemoduleT2>);

// --- Methane Gas Canister
recipes.remove(<GalacticraftMars:item.methaneCanisterPartial:1>);

// --- Lander 2
recipes.remove(<GalaxySpace:item.ModuleLander2>);

// --- Lander 3
recipes.remove(<GalaxySpace:item.ModuleLander3>);




// --- Add Recipes


// --- Lead Boots
recipes.addShaped(<GalaxySpace:item.lead_boots>, [
[<ore:plateDesh>, null, <ore:plateDesh>],
[<ore:CompressedLead>, <ore:craftingToolHardHammer>, <ore:CompressedLead>],
[<ore:CompressedLead>, null, <ore:CompressedLead>]]);

// --- Lead Chestplate
recipes.addShaped(<GalaxySpace:item.lead_plate>, [
[<ore:CompressedLead>, <ore:craftingToolHardHammer>, <ore:CompressedLead>],
[<ore:CompressedLead>, <ore:plateDesh>, <ore:CompressedLead>],
[<ore:CompressedLead>, null, <ore:CompressedLead>]]);

// --- Lead Helmet
recipes.addShaped(<GalaxySpace:item.lead_helmet>, [
[<ore:CompressedLead>, <ore:CompressedLead>, <ore:CompressedLead>],
[<ore:CompressedLead>, <ore:craftingToolHardHammer>, <ore:CompressedLead>],
[<ore:plateDesh>, null, <ore:plateDesh>]]);

// --- Lead Leggings
recipes.addShaped(<GalaxySpace:item.lead_leg>, [
[<ore:CompressedLead>, <ore:CompressedLead>, <ore:CompressedLead>],
[<ore:CompressedLead>, <ore:plateDesh>, <ore:CompressedLead>],
[<ore:CompressedLead>, <ore:craftingToolHardHammer>, <ore:CompressedLead>]]);

// --- Solar Flares
recipes.addShaped(<GalaxySpace:item.SolarFlares:1>, [
[<ore:compressedDesh>, <GalaxySpace:item.SolarFlares>, <ore:compressedDesh>],
[<GalaxySpace:item.SolarFlares>, <ore:compressedTitanium>, <GalaxySpace:item.SolarFlares>],
[<ore:compressedDesh>, <GalaxySpace:item.SolarFlares>, <ore:compressedDesh>]]);

// --- Part Solar Flares
recipes.addShaped(<GalaxySpace:item.SolarFlares>, [
[<ore:compressedIron>, <GalacticraftCore:item.steelPole>, <ore:compressedIron>],
[<GalacticraftCore:item.steelPole>, <GalacticraftCore:item.basicItem:1>, <GalacticraftCore:item.steelPole>],
[<GalacticraftCore:item.steelPole>, <ore:compressedSteel>, <GalacticraftCore:item.steelPole>]]);

// --- Solar Wind Panel
recipes.addShaped(<GalaxySpace:solarwindpanel>, [
[<ore:compressedTitanium>, <GalaxySpace:item.SolarFlares>, <ore:compressedTitanium>],
[<GalacticraftCore:tile.aluminumWire:1>, <GalacticraftCore:item.steelPole>, <GalacticraftCore:tile.aluminumWire:1>],
[<gregtech:gt.metaitem.01:32600>, <customthings:item:9>, <gregtech:gt.metaitem.01:32690>]]);

// --- Cobaltum Boots
recipes.addShaped(<GalaxySpace:item.cobaltum_boots>, [
[<ore:plateDesh>, null, <ore:plateDesh>],
[<ore:CompressedCobaltum>, <ore:craftingToolHardHammer>, <ore:CompressedCobaltum>],
[<ore:CompressedCobaltum>, null, <ore:CompressedCobaltum>]]);

// --- Cobaltum Chestplate
recipes.addShaped(<GalaxySpace:item.cobaltum_plate>, [
[<ore:CompressedCobaltum>, <ore:craftingToolHardHammer>, <ore:CompressedCobaltum>],
[<ore:CompressedCobaltum>, <ore:plateDesh>, <ore:CompressedCobaltum>],
[<ore:CompressedCobaltum>, <ore:CompressedCobaltum>, <ore:CompressedCobaltum>]]);

// --- Cobaltum Helmet
recipes.addShaped(<GalaxySpace:item.cobaltum_helmet>, [
[<ore:CompressedCobaltum>, <ore:CompressedCobaltum>, <ore:CompressedCobaltum>],
[<ore:CompressedCobaltum>, <ore:craftingToolHardHammer>, <ore:CompressedCobaltum>],
[<ore:plateDesh>, null, <ore:plateDesh>]]);

// --- Cobaltum Leggings
recipes.addShaped(<GalaxySpace:item.cobaltum_leg>, [
[<ore:CompressedCobaltum>, <ore:CompressedCobaltum>, <ore:CompressedCobaltum>],
[<ore:CompressedCobaltum>, <ore:plateDesh>, <ore:CompressedCobaltum>],
[<ore:CompressedCobaltum>, <ore:craftingToolHardHammer>, <ore:CompressedCobaltum>]]);

// --- Plasma Sword
recipes.addShaped(<GalaxySpace:item.plasmasword>.withTag({electricity: 0.0 as float}), [
[<ore:plateDesh>, <ore:CompressedCobaltum>, <ore:plateDesh>],
[<ore:craftingToolFile>, <ore:CompressedCobaltum>, <ore:craftingToolHardHammer>],
[<ore:plateDesh>, <GalaxySpace:item.LeadBattery:100>.withTag({electricity: 0.0 as float}), <GalacticraftCore:tile.aluminumWire:1>]]);

// --- Plasma Pickaxe
recipes.addShaped(<GalaxySpace:item.plasmapickaxe>.withTag({electricity: 0.0 as float}), [
[<ore:CompressedCobaltum>, <ore:CompressedCobaltum>, <ore:CompressedCobaltum>],
[<ore:craftingToolFile>, <GalacticraftCore:item.steelPole>, <ore:craftingToolHardHammer>],
[<ore:plateDesh>, <GalaxySpace:item.LeadBattery:100>.withTag({electricity: 0.0 as float}), <GalacticraftCore:tile.aluminumWire:1>]]);

// --- Plasma Axe
recipes.addShaped(<GalaxySpace:item.plasmaaxe>.withTag({electricity: 0.0 as float}), [
[<ore:CompressedCobaltum>, <ore:CompressedCobaltum>, <ore:craftingToolHardHammer>],
[<ore:CompressedCobaltum>,<GalacticraftCore:item.steelPole>, <ore:plateDesh>],
[<ore:craftingToolFile>, <GalaxySpace:item.LeadBattery:100>.withTag({electricity: 0.0 as float}), <GalacticraftCore:tile.aluminumWire:1>]]);

// --- Plasma Hoe
recipes.addShaped(<GalaxySpace:item.plasmahoe>.withTag({electricity: 0.0 as float}), [
[<ore:CompressedCobaltum>, <ore:CompressedCobaltum>, <ore:craftingToolHardHammer>],
[<ore:craftingToolFile>, <GalacticraftCore:item.steelPole>, <ore:plateDesh>],
[<GalacticraftCore:tile.aluminumWire:1>, <GalaxySpace:item.LeadBattery:100>.withTag({electricity: 0.0 as float}), <ore:plateDesh>]]);

// --- Plasma Shovel
recipes.addShaped(<GalaxySpace:item.plasmashovel>.withTag({electricity: 0.0 as float}), [
[<ore:craftingToolFile>, <ore:CompressedCobaltum>, <ore:craftingToolHardHammer>],
[<ore:plateDesh>, <GalacticraftCore:item.steelPole>, <ore:plateDesh>],
[<GalacticraftCore:tile.aluminumWire:1>, <GalaxySpace:item.LeadBattery:100>.withTag({electricity: 0.0 as float}), <GalacticraftCore:tile.aluminumWire:1>]]);

// --- Quant Bow
//recipes.addShaped(<GalaxySpace:item.QuantBow>, [
//[<ore:stickLongLead>, <dreamcraft:item.MytrylCrystal>, <TConstruct:bowstring:2>],
//[<dreamcraft:item.MysteriousCrystal>, null, <TConstruct:bowstring:2>],
//[<ore:stickLongLead>, <dreamcraft:item.MytrylCrystal>, <TConstruct:bowstring:2>]]);

// --- Compressed Raw Alloy SDHC-120
recipes.addShaped(<customthings:item:15>, [
[<ore:screwStainlessSteel>, <ore:craftingToolScrewdriver>, <ore:screwStainlessSteel>],
[<GalaxySpace:item.CompressedDualBronze>, <GalacticraftCore:item.basicItem:9>, <GalaxySpace:item.CompressedDualAluminium>],
[<ore:screwStainlessSteel>, <ore:craftingToolHardHammer>, <ore:screwStainlessSteel>]]);

// --- Thermal Cloth Tier 2
Assembler.addRecipe(<GalaxySpace:item.ThermalClothT2>, [<ore:foilMeteoricSteel> * 4, <ore:foilTitanium> * 4, <ore:wireFineTungsten> * 4, <GalacticraftMars:item.itemBasicAsteroids:7>], <liquid:molten.polycaprolactam> * 576, 200, 7680);

// --- Decorate Lead
recipes.addShaped(<GalaxySpace:metalsblock>, [
[<ore:craftingToolHardHammer>, <ore:CompressedLead>, null],
[<ore:CompressedLead>, <ore:stone>, <ore:CompressedLead>],
[null, <ore:CompressedLead>, <ore:craftingToolWrench>]]);

// --- Decorate Adamantite
recipes.addShaped(<GalaxySpace:metalsblock:1>, [
[<ore:craftingToolHardHammer>, <ore:CompressedAdamantite>, null],
[<ore:CompressedAdamantite>, <ore:stone>, <ore:CompressedAdamantite>],
[null, <ore:CompressedAdamantite>, <ore:craftingToolWrench>]]);

// --- Decorate Cobaltum
recipes.addShaped(<GalaxySpace:metalsblock:2>, [
[<ore:craftingToolHardHammer>, <ore:CompressedCobaltum>, null],
[<ore:CompressedCobaltum>, <ore:stone>, <ore:CompressedCobaltum>],
[null, <ore:CompressedCobaltum>, <ore:craftingToolWrench>]]);

// --- Decorate Magnesium
recipes.addShaped(<GalaxySpace:metalsblock:3>, [
[<ore:craftingToolHardHammer>, <ore:CompressedMagnesium>, null],
[<ore:CompressedMagnesium>, <ore:stone>, <ore:CompressedMagnesium>],
[null, <ore:CompressedMagnesium>, <ore:craftingToolWrench>]]);

// --- Decorate Mithril
recipes.addShaped(<GalaxySpace:metalsblock:4>, [
[<ore:craftingToolHardHammer>, <ore:CompressedMithril>, null],
[<ore:CompressedMithril>, <ore:stone>, <ore:CompressedMithril>],
[null, <ore:CompressedMithril>, <ore:craftingToolWrench>]]);

// --- Decorate Nickel
recipes.addShaped(<GalaxySpace:metalsblock:5>, [
[<ore:craftingToolHardHammer>, <ore:CompressedNickel>, null],
[<ore:CompressedNickel>, <ore:stone>, <ore:CompressedNickel>],
[null, <ore:CompressedNickel>, <ore:craftingToolWrench>]]);

// --- Decorate Oriharukon
recipes.addShaped(<GalaxySpace:metalsblock:6>, [
[<ore:craftingToolHardHammer>, <ore:CompressedOriharukon>, null],
[<ore:CompressedOriharukon>, <ore:stone>, <ore:CompressedOriharukon>],
[null, <ore:CompressedOriharukon>, <ore:craftingToolWrench>]]);

// --- Decorate Platinum
recipes.addShaped(<GalaxySpace:metalsblock:7>, [
[<ore:craftingToolHardHammer>, <ore:CompressedPlatinum>, null],
[<ore:CompressedPlatinum>, <ore:stone>, <ore:CompressedPlatinum>],
[null, <ore:CompressedPlatinum>, <ore:craftingToolWrench>]]);

// --- Decorate Wolfranium
recipes.addShaped(<GalaxySpace:metalsblock:8>, [
[<ore:craftingToolHardHammer>, <GalaxySpace:item.CompressedPlates:9>, null],
[<GalaxySpace:item.CompressedPlates:9>, <ore:stone>, <GalaxySpace:item.CompressedPlates:9>],
[null, <GalaxySpace:item.CompressedPlates:9>, <ore:craftingToolWrench>]]);

// --- Decorate Copper
recipes.addShaped(<GalaxySpace:metalsblock:9>, [
[<ore:craftingToolHardHammer>, <ore:compressedCopper>, null],
[<ore:compressedCopper>, <ore:stone>, <ore:compressedCopper>],
[null, <ore:compressedCopper>, <ore:craftingToolWrench>]]);

// --- Advanced Machine Frame
recipes.addShaped(<GalaxySpace:machineframes>, [
[<GalaxySpace:item.CompressedPlates:4>, <customthings:item:9>, <GalaxySpace:item.CompressedPlates:4>],
[<GalacticraftCore:tile.aluminumWire:1>, <gregtech:gt.blockcasings4>, <GalacticraftCore:tile.aluminumWire:1>],
[<GalaxySpace:item.CompressedPlates:4>, <customthings:item:9>, <GalaxySpace:item.CompressedPlates:4>]]);

// --- Hybride Solar Panel
recipes.addShaped(<GalaxySpace:solarPanel>, [
[<GalaxySpace:item.CompressedPlates:2>, <GalacticraftCore:item.basicItem:1>, <GalaxySpace:item.CompressedPlates:2>],
[<GalacticraftCore:tile.aluminumWire:1>, <GalaxySpace:machineframes>, <GalacticraftCore:tile.aluminumWire:1>],
[<gregtech:gt.metaitem.01:32601>, <customthings:item:9>, <gregtech:gt.metaitem.01:32691>]]);

// --- Advanced Energy Cluster
recipes.addShaped(<GalaxySpace:storagemoduleT3>, [
[<GalaxySpace:item.CompressedPlates:9>, <GalacticraftCore:tile.machineTiered:8>, <GalaxySpace:item.CompressedPlates:9>],
[<customthings:item:9>, <GalaxySpace:machineframes>, <customthings:item:9>],
[<GalaxySpace:item.CompressedPlates:9>, <GalacticraftCore:tile.machineTiered:8>, <GalaxySpace:item.CompressedPlates:9>]]);

// --- Advanced Oxygen Module
recipes.addShaped(<GalaxySpace:oxstoragemoduleT2>, [
[<GalacticraftCore:tile.machine2:8>, <GalacticraftCore:item.oxygenConcentrator>, <GalacticraftCore:tile.machine2:8>],
[<GalacticraftCore:tile.oxygenPipe>, <GalaxySpace:machineframes>, <GalacticraftCore:tile.oxygenPipe>],
[<GalacticraftCore:tile.machine2:8>, <customthings:item:9>, <GalacticraftCore:tile.machine2:8>]]);

// --- Lander 2
recipes.addShaped(<GalaxySpace:item.ModuleLander2>, [
[<ore:foilGold>, <GalacticraftCore:item.parachute:*>, <ore:foilGold>],
[<GalacticraftCore:item.canvas>, <GalaxySpace:item.ModuleLander>, <GalacticraftCore:item.canvas>],
[<ore:foilGold>, <GalacticraftCore:item.canvas>, <ore:foilGold>]]);

// --- Lander 3
recipes.addShaped(<GalaxySpace:item.ModuleLander3>, [
[<GalacticraftMars:item.null:5>, <GalacticraftMars:item.null:5>, <GalacticraftMars:item.null:5>],
[<GalacticraftCore:item.steelPole>, <GalaxySpace:item.ModuleLander2>, <GalacticraftCore:item.steelPole>],
[<GalacticraftMars:item.null:5>, <GalacticraftMars:item.null:5>, <GalacticraftMars:item.null:5>]]);

// --- Space Suit Helmet
recipes.addShaped(<GalaxySpace:item.spacesuit_helmet>, [
[<GalaxySpace:item.CompressedSDHD120>, <GalaxySpace:item.lead_helmet>, <GalaxySpace:item.CompressedSDHD120>],
[<GalaxySpace:item.CompressedSDHD120>, <GalacticraftCore:item.oxygenMask>, <GalaxySpace:item.CompressedSDHD120>],
[<GalacticraftMars:item.null:5>, <GalacticraftCore:item.oxygenConcentrator>, <GalacticraftMars:item.null:5>]]);

// --- Space Suit Chestplate
recipes.addShaped(<GalaxySpace:item.spacesuit_plate>, [
[<GalaxySpace:item.CompressedSDHD120>, <GalaxySpace:item.lead_plate>, <GalaxySpace:item.CompressedSDHD120>],
[<GalaxySpace:item.CompressedSDHD120>, <GalaxySpace:item.CompressedPlates:2>, <GalaxySpace:item.CompressedSDHD120>],
[<GalaxySpace:item.CompressedSDHD120>, <GalacticraftMars:item.null:5>, <GalaxySpace:item.CompressedSDHD120>]]);

// --- Space Suit Leggings
recipes.addShaped(<GalaxySpace:item.spacesuit_leg>, [
[<GalaxySpace:item.CompressedSDHD120>, <GalaxySpace:item.lead_leg>, <GalaxySpace:item.CompressedSDHD120>],
[<GalaxySpace:item.CompressedPlates:2>, <GalaxySpace:item.CompressedSDHD120>, <GalaxySpace:item.CompressedPlates:2>],
[<GalaxySpace:item.CompressedPlates:2>, <GalacticraftMars:item.null:5>, <GalaxySpace:item.CompressedPlates:2>]]);

// --- Space Suit Boots
recipes.addShaped(<GalaxySpace:item.spacesuit_boots>, [
[<GalaxySpace:item.CompressedSDHD120>, <GalaxySpace:item.lead_boots>, <GalaxySpace:item.CompressedSDHD120>],
[<GalaxySpace:item.CompressedSDHD120>, <GalacticraftMars:item.null:5>, <GalaxySpace:item.CompressedSDHD120>],
[<GalaxySpace:item.CompressedPlates:2>, <GalacticraftMars:item.null:5>, <GalaxySpace:item.CompressedPlates:2>]]);



// --- Assembler Recipes




// --- Lead Battery
Assembler.addRecipe(<GalaxySpace:item.LeadBattery:100>.withTag({electricity: 0.0 as float}), <GalacticraftCore:item.battery:*>, <gregtech:gt.integrated_circuit:1>, <liquid:molten.lead> * 6000, 100, 120);

// --- Thermal Helmet Tier 2
Assembler.addRecipe(<GalaxySpace:item.ThermalPaddingT2>, <GalaxySpace:item.ThermalClothT2> * 5, <gregtech:gt.integrated_circuit:5> * 0, 1500, 7680);

// --- Thermal Chestplate Tier 2
Assembler.addRecipe(<GalaxySpace:item.ThermalPaddingT2:1>, <GalaxySpace:item.ThermalClothT2> * 8, <gregtech:gt.integrated_circuit:8> * 0, 2400, 7680);

// --- Thermal Leggings Tier 2
Assembler.addRecipe(<GalaxySpace:item.ThermalPaddingT2:2>, <GalaxySpace:item.ThermalClothT2> * 7, <gregtech:gt.integrated_circuit:7> * 0, 2100, 7680);

// --- Thermal Boots Tier 2
Assembler.addRecipe(<GalaxySpace:item.ThermalPaddingT2:3>, <GalaxySpace:item.ThermalClothT2> * 4, <gregtech:gt.integrated_circuit:4> * 0, 1200, 7680);

// --- Future Glass
Assembler.addRecipe(<GalaxySpace:futureglass>, <minecraft:glass>, <gregtech:gt.metaitem.01:23884> * 8, 200, 480);

// --- Space Suit Jetpack
Assembler.addRecipe(<GalaxySpace:item.spacesuit_jetplate>.withTag({electricity: 0.0 as float}), [<GalaxySpace:item.spacesuit_plate>, <IC2:itemArmorJetpackElectric:1>, <GalaxySpace:item.CompressedPlates:2>*4], <liquid:molten.platinum> * 1440, 600, 1920);

// --- Space Suit Gravity Boots
Assembler.addRecipe(<GalaxySpace:item.spacesuit_gravityboots>, [<GalaxySpace:item.spacesuit_boots>, <GalaxySpace:item.CompressedPlates:4> * 2, <GalaxySpace:item.CompressedPlates:2>*4], <liquid:molten.platinum> * 1440, 600, 1920);

// --- Space Suit Sensor Glasses
Assembler.addRecipe(<GalaxySpace:item.spacesuit_helmetglasses>, [<GalaxySpace:item.spacesuit_helmet>, <GalacticraftCore:item.sensorGlasses>, <GalaxySpace:item.CompressedPlates:2>*4], <liquid:molten.platinum> * 1440, 600, 1920);



// --- Compressor Recipes ---




// --- Ceres Glowstone
Compressor.addRecipe(<GalaxySpace:ceresglowstone>, <GalaxySpace:item.GlowstoneDusts> * 4);

// --- IO Glowstone
Compressor.addRecipe(<GalaxySpace:ioglowstone>, <GalaxySpace:item.GlowstoneDusts:1> * 4);

// --- Enceladus Glowstone
Compressor.addRecipe(<GalaxySpace:enceladusglowstone>, <GalaxySpace:item.GlowstoneDusts:2> * 4);

// --- Proteus Glowstone
Compressor.addRecipe(<GalaxySpace:proteusglowstone>, <GalaxySpace:item.GlowstoneDusts:3> * 4);

// --- Pluto Glowstone
Compressor.addRecipe(<GalaxySpace:plutoglowstone>, <GalaxySpace:item.GlowstoneDusts:4> * 4);






// --- Pulverizer Recipes ---



// --- Ceres Glowstone Dust
Pulverizer.addRecipe([<GalaxySpace:item.GlowstoneDusts> * 4], <GalaxySpace:ceresglowstone>, [10000], 300, 2);

// --- IO Glowstone Dust
Pulverizer.addRecipe([<GalaxySpace:item.GlowstoneDusts:1> * 4], <GalaxySpace:ioglowstone:1>, [10000], 300, 2);

// --- Enceladus Glowstone Dust
Pulverizer.addRecipe([<GalaxySpace:item.GlowstoneDusts:2> * 4], <GalaxySpace:enceladusglowstone:2>, [10000], 300, 2);

// --- Proteus Glowstone Dust
Pulverizer.addRecipe([<GalaxySpace:item.GlowstoneDusts:3> * 4], <GalaxySpace:proteusglowstone:3>, [10000], 300, 2);

// --- Pluto Glowstone Dust
Pulverizer.addRecipe([<GalaxySpace:item.GlowstoneDusts:4> * 4], <GalaxySpace:plutoglowstone:4>, [10000], 300, 2);


// --- Rocks
Pulverizer.addRecipe([<customthings:item:52>, <gregtech:gt.metaitem.01:1918>, <gregtech:gt.metaitem.01:1081>, <gregtech:gt.metaitem.01:1975>], <GalaxySpace:mercuryblocks>, [10000, 3000, 2000, 1200], 400, 256);
Pulverizer.addRecipe([<customthings:item:52>, <gregtech:gt.metaitem.01:1918>, <gregtech:gt.metaitem.01:1081>, <gregtech:gt.metaitem.01:1975>], <GalaxySpace:mercuryblocks:1>, [10000, 3000, 2000, 1200], 400, 256);
Pulverizer.addRecipe([<customthings:item:52>, <gregtech:gt.metaitem.01:1918>, <gregtech:gt.metaitem.01:1081>, <gregtech:gt.metaitem.01:1975>], <GalaxySpace:mercuryblocks:2>, [10000, 3000, 2000, 1200], 400, 256);

Pulverizer.addRecipe([<customthings:item:42>, <gregtech:gt.metaitem.01:1340>, <gregtech:gt.metaitem.01:1008>, <gregtech:gt.metaitem.01:1913>], <GalaxySpace:ceresblocks>, [10000, 5000, 2500, 2000], 400, 120);
Pulverizer.addRecipe([<customthings:item:42>, <gregtech:gt.metaitem.01:1340>, <gregtech:gt.metaitem.01:1008>, <gregtech:gt.metaitem.01:1913>], <GalaxySpace:ceresblocks:1>, [10000, 5000, 2500, 2000], 400, 120);

Pulverizer.addRecipe([<customthings:item:64>, <gregtech:gt.metaitem.01:1840>, <gregtech:gt.metaitem.01:1910>, <gregtech:gt.metaitem.01:1359>], <GalaxySpace:venusblocks>, [10000, 4500, 2500, 1500], 400, 256);
Pulverizer.addRecipe([<customthings:item:64>, <gregtech:gt.metaitem.01:1840>, <gregtech:gt.metaitem.01:1910>, <gregtech:gt.metaitem.01:1359>], <GalaxySpace:venusblocks:1>, [10000, 4500, 2500, 1500], 400, 256);

Pulverizer.addRecipe([<customthings:item:43>, <gregtech:gt.metaitem.01:1908>, <gregtech:gt.metaitem.01:1923>], <GalaxySpace:deimosblocks>, [10000, 5000, 2500], 400, 64);
Pulverizer.addRecipe([<customthings:item:43>, <gregtech:gt.metaitem.01:1908>, <gregtech:gt.metaitem.01:1923>], <GalaxySpace:deimosblocks:1>, [10000, 5000, 2500], 400, 64);

Pulverizer.addRecipe([<customthings:item:55>, <gregtech:gt.metaitem.01:1917>, <gregtech:gt.metaitem.01:1871>], <GalaxySpace:phobosblocks>, [10000, 5000, 2500], 400, 64);
Pulverizer.addRecipe([<customthings:item:55>, <gregtech:gt.metaitem.01:1917>, <gregtech:gt.metaitem.01:1871>], <GalaxySpace:phobosblocks:1>, [10000, 5000, 2500], 400, 64);
Pulverizer.addRecipe([<customthings:item:55>, <gregtech:gt.metaitem.01:1917>, <gregtech:gt.metaitem.01:1871>], <GalaxySpace:phobosblocks:2>, [10000, 5000, 2500], 400, 64);

Pulverizer.addRecipe([<customthings:item:48>, <gregtech:gt.metaitem.01:1028>, <gregtech:gt.metaitem.01:1825>], <GalaxySpace:ganymedeblocks>, [10000, 3500, 1000], 400, 120);
Pulverizer.addRecipe([<customthings:item:48>, <gregtech:gt.metaitem.01:1028>, <gregtech:gt.metaitem.01:1825>], <GalaxySpace:ganymedeblocks:1>, [10000, 3500, 1000], 400, 120);

Pulverizer.addRecipe([<customthings:item:46>, <gregtech:gt.metaitem.01:1702>, <gregtech:gt.metaitem.01:1526>], <GalaxySpace:europagrunt:1>, [10000, 5000, 2500], 400, 120);
Pulverizer.addRecipe([<customthings:item:47>, <gregtech:gt.metaitem.01:1837>, <gregtech:gt.metaitem.01:1032>], <GalaxySpace:europagrunt>, [10000, 5000, 2500], 400, 120);
Pulverizer.addRecipe([<customthings:item:47>, <gregtech:gt.metaitem.01:1837>, <gregtech:gt.metaitem.01:1032>], <GalaxySpace:europageyser>, [10000, 9000, 7500], 400, 120);
Pulverizer.addRecipe([<customthings:item:46>, <gregtech:gt.metaitem.01:1702>, <gregtech:gt.metaitem.01:1526>], <GalaxySpace:europaunderwatergeyser>, [10000, 9000, 7500], 400, 120);

Pulverizer.addRecipe([<customthings:item:50>, <gregtech:gt.metaitem.01:1022>, <gregtech:gt.metaitem.01:1921>, <gregtech:gt.metaitem.01:1081>], <GalaxySpace:ioblocks>, [10000, 5000, 2500, 1500], 400, 256);
Pulverizer.addRecipe([<customthings:item:50>, <gregtech:gt.metaitem.01:1815>, <gregtech:gt.metaitem.01:1022>, <gregtech:gt.metaitem.01:1921>], <GalaxySpace:ioblocks:2>, [10000, 5000, 3500, 2000], 400, 256);

Pulverizer.addRecipe([<customthings:item:37>, <customthings:item:81>, <gregtech:gt.metaitem.01:1830>], <GalaxySpace:callistoblocks:1>, [10000, 1500, 2500], 400, 120);
Pulverizer.addRecipe([<customthings:item:81>, <customthings:item:37>, <gregtech:gt.metaitem.01:1830>], <GalaxySpace:callistoblocks>, [10000, 1500, 2500], 400, 120);

Pulverizer.addRecipe([<customthings:item:44>, <gregtech:gt.metaitem.01:1417>, <gregtech:gt.metaitem.01:1030>, <gregtech:gt.metaitem.01:1084>], <GalaxySpace:enceladusblocks>, [10000, 4000, 2000, 1000], 400, 480);
Pulverizer.addRecipe([<customthings:item:45>, <gregtech:gt.metaitem.01:1030>, <gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:1083>], <GalaxySpace:enceladusblocks:1>, [10000, 3000, 2000, 1000], 400, 480);

Pulverizer.addRecipe([<customthings:item:61>, <gregtech:gt.metaitem.01:1034>, <gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:1083>], <GalaxySpace:titanblocks>, [10000, 4500, 3000, 2000], 400, 480);
Pulverizer.addRecipe([<customthings:item:61>, <gregtech:gt.metaitem.01:1034>, <gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:1083>], <GalaxySpace:titanblocks:1>, [10000, 4500, 3000, 2000], 400, 480);
Pulverizer.addRecipe([<customthings:item:61>, <gregtech:gt.metaitem.01:1034>, <gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:1083>], <GalaxySpace:titanblocks:2>, [10000, 4500, 3000, 2000], 400, 480);

Pulverizer.addRecipe([<customthings:item:54>, <gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:1083>, <gregtech:gt.metaitem.01:1324>], <GalaxySpace:oberonblocks>, [10000, 2000, 1000, 850], 400, 480);
Pulverizer.addRecipe([<customthings:item:54>, <gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:1083>, <gregtech:gt.metaitem.01:1324>], <GalaxySpace:oberonblocks:1>, [10000, 2000, 1000, 850], 400, 480);
Pulverizer.addRecipe([<customthings:item:54>, <gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:1083>, <gregtech:gt.metaitem.01:1324>], <GalaxySpace:oberonblocks:2>, [10000, 2000, 1000, 850], 400, 480);

Pulverizer.addRecipe([<customthings:item:53>, <gregtech:gt.metaitem.01:1057>, <gregtech:gt.metaitem.01:1840>, <gregtech:gt.metaitem.01:1084>], <GalaxySpace:mirandablocks>, [10000, 2500, 1500, 1000], 400, 480);
Pulverizer.addRecipe([<customthings:item:53>, <gregtech:gt.metaitem.01:1057>, <gregtech:gt.metaitem.01:1840>, <gregtech:gt.metaitem.01:1084>], <GalaxySpace:mirandablocks:1>, [10000, 2500, 1500, 1000], 400, 480);
Pulverizer.addRecipe([<customthings:item:53>, <gregtech:gt.metaitem.01:1057>, <gregtech:gt.metaitem.01:1840>, <gregtech:gt.metaitem.01:1084>], <GalaxySpace:mirandablocks:2>, [10000, 2500, 1500, 1000], 400, 480);

Pulverizer.addRecipe([<customthings:item:62>, <gregtech:gt.metaitem.01:1086>, <gregtech:gt.metaitem.01:1067>, <gregtech:gt.metaitem.01:1891>], <GalaxySpace:tritonblocks>, [10000, 5000, 2500, 1000], 400, 1024);
Pulverizer.addRecipe([<customthings:item:62>, <gregtech:gt.metaitem.01:1086>, <gregtech:gt.metaitem.01:1067>, <gregtech:gt.metaitem.01:1891>], <GalaxySpace:tritonblocks:1>, [10000, 5000, 2500, 1000], 400, 1024);
Pulverizer.addRecipe([<customthings:item:62>, <gregtech:gt.metaitem.01:1086>, <gregtech:gt.metaitem.01:1067>, <gregtech:gt.metaitem.01:1891>], <GalaxySpace:tritonblocks:2>, [10000, 5000, 2500, 1000], 400, 1024);

Pulverizer.addRecipe([<customthings:item:58>, <gregtech:gt.metaitem.01:1035>, <gregtech:gt.metaitem.01:1922>, <gregtech:gt.metaitem.01:1391>], <GalaxySpace:proteusblocks>, [10000, 5000, 2500, 1000], 400, 1024);
Pulverizer.addRecipe([<customthings:item:58>, <gregtech:gt.metaitem.01:1035>, <gregtech:gt.metaitem.01:1922>, <gregtech:gt.metaitem.01:1391>], <GalaxySpace:proteusblocks:1>, [10000, 5000, 2500, 1000], 400, 1024);
Pulverizer.addRecipe([<customthings:item:58>, <gregtech:gt.metaitem.01:1035>, <gregtech:gt.metaitem.01:1922>, <gregtech:gt.metaitem.01:1391>], <GalaxySpace:proteusblocks:2>, [10000, 5000, 2500, 1000], 400, 1024);

Pulverizer.addRecipe([<customthings:item:56>, <gregtech:gt.metaitem.01:1096>, <gregtech:gt.metaitem.01:1098>, <gregtech:gt.metaitem.01:1100>], <GalaxySpace:plutoblocks>, [10000, 5000, 2500, 1250], 400, 1920);
Pulverizer.addRecipe([<customthings:item:56>, <gregtech:gt.metaitem.01:1096>, <gregtech:gt.metaitem.01:1098>, <gregtech:gt.metaitem.01:1100>], <GalaxySpace:plutoblocks:1>, [10000, 5000, 2500, 1250], 400, 1920);
Pulverizer.addRecipe([<customthings:item:56>, <gregtech:gt.metaitem.01:1096>, <gregtech:gt.metaitem.01:1098>, <gregtech:gt.metaitem.01:1100>], <GalaxySpace:plutoblocks:2>, [10000, 5000, 2500, 1250], 400, 1920);
Pulverizer.addRecipe([<customthings:item:56>, <gregtech:gt.metaitem.01:1096>, <gregtech:gt.metaitem.01:1098>, <gregtech:gt.metaitem.01:1100>], <GalaxySpace:plutoblocks:3>, [10000, 5000, 2500, 1250], 400, 1920);
Pulverizer.addRecipe([<customthings:item:56>, <gregtech:gt.metaitem.01:1096>, <gregtech:gt.metaitem.01:1098>, <gregtech:gt.metaitem.01:1100>], <GalaxySpace:plutoblocks:4>, [10000, 5000, 2500, 1250], 400, 1920);
Pulverizer.addRecipe([<customthings:item:57>, <gregtech:gt.metaitem.01:1098>, <gregtech:gt.metaitem.01:1100>, <gregtech:gt.metaitem.01:1416>], <GalaxySpace:plutoblocks:5>, [10000, 5000, 2500, 850], 400, 1920);

Pulverizer.addRecipe([<customthings:item:49>, <gregtech:gt.metaitem.01:1351>, <gregtech:gt.metaitem.01:1324>, <gregtech:gt.metaitem.01:1506>], <GalaxySpace:haumeablocks>, [10000, 5000, 2500, 850], 400, 1920);

Pulverizer.addRecipe([<customthings:item:51>, <gregtech:gt.metaitem.01:1527>, <gregtech:gt.metaitem.01:1528>, <gregtech:gt.metaitem.01:1416>], <GalaxySpace:makemakegrunt>, [10000, 2500, 2500, 1000], 400, 1920);
Pulverizer.addRecipe([<customthings:item:51>, <gregtech:gt.metaitem.01:1527>, <gregtech:gt.metaitem.01:1528>, <gregtech:gt.metaitem.01:1416>], <GalaxySpace:makemakegrunt:1>, [10000, 2500, 2500, 1000], 400, 1920);

Pulverizer.addRecipe([<customthings:item:34>, <gregtech:gt.metaitem.01:1047>, <gregtech:gt.metaitem.01:1045>, <gregtech:gt.metaitem.01:1037>], <GalaxySpace:barnardaFgrunt>, [10000, 2500, 2000, 1500], 400, 4096);
Pulverizer.addRecipe([<customthings:item:34>, <gregtech:gt.metaitem.01:1047>, <gregtech:gt.metaitem.01:1045>, <gregtech:gt.metaitem.01:1037>], <GalaxySpace:barnardaFsubgrunt>, [10000, 2500, 2000, 1500], 400, 4096);

Pulverizer.addRecipe([<customthings:item:33>, <gregtech:gt.metaitem.01:1037>, <gregtech:gt.metaitem.01:1045>, <gregtech:gt.metaitem.01:1047>], <GalaxySpace:barnardaEsubgrunt>, [10000, 2500, 2000, 1500], 400, 4096);
Pulverizer.addRecipe([<customthings:item:33>, <gregtech:gt.metaitem.01:1037>, <gregtech:gt.metaitem.01:1045>, <gregtech:gt.metaitem.01:1047>], <GalaxySpace:barnardaEsubgrunt>, [10000, 2500, 2000, 1500], 400, 4096);

Pulverizer.addRecipe([<customthings:item:41>, <gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:1326>, <gregtech:gt.metaitem.01:1975>], <GalaxySpace:acentauribbgrunt>, [10000, 5000, 3000, 1000], 400, 4096);
Pulverizer.addRecipe([<customthings:item:40>, <gregtech:gt.metaitem.01:1083>, <gregtech:gt.metaitem.01:1326>, <gregtech:gt.metaitem.01:1129>], <GalaxySpace:acentauribbgrunt>, [10000, 5000, 3000, 500], 400, 4096);

Pulverizer.addRecipe([<customthings:item:59>, <gregtech:gt.metaitem.01:1526>, <gregtech:gt.metaitem.01:1530>, <gregtech:gt.metaitem.01:1506>], <GalaxySpace:tcetieblocks>, [10000, 2500, 2000, 1500], 400, 4096);
Pulverizer.addRecipe([<customthings:item:59>, <gregtech:gt.metaitem.01:1526>, <gregtech:gt.metaitem.01:1530>, <gregtech:gt.metaitem.01:1506>], <GalaxySpace:tcetieblocks:1>, [10000, 2500, 2000, 1500], 400, 4096);
Pulverizer.addRecipe([<customthings:item:59>, <gregtech:gt.metaitem.01:1526>, <gregtech:gt.metaitem.01:1530>, <gregtech:gt.metaitem.01:1506>], <GalaxySpace:tcetieblocks:2>, [10000, 2500, 2000, 1500], 400, 4096);

Pulverizer.addRecipe([<customthings:item:63>, <gregtech:gt.metaitem.01:1097>, <gregtech:gt.metaitem.01:1101>, <gregtech:gt.metaitem.01:1070>], <GalaxySpace:vegabgrunt>, [10000, 5000, 3000, 1500], 400, 4096);
Pulverizer.addRecipe([<customthings:item:63>, <gregtech:gt.metaitem.01:1097>, <gregtech:gt.metaitem.01:1101>, <gregtech:gt.metaitem.01:1070>], <GalaxySpace:vegabsubgrunt>, [10000, 5000, 3000, 1500], 400, 4096);

Pulverizer.addRecipe([<gregtech:gt.metaitem.01:2394>], <GalaxySpace:item.UnknowCrystal>, [10000], 200, 480);


// --- Dusts
//OutputArray, InputFluid, InputStack, InputCell, OutputFluid, OutputArrayChances, Time in Ticks, EnergyUsage
Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1029>, <gregtech:gt.metaitem.01:1841>, <gregtech:gt.metaitem.01:1975>, <gregtech:gt.metaitem.01:28>, <gregtech:gt.metaitem.01:516>, <gregtech:gt.metaitem.01:500>], null, <customthings:item:52>, null, <liquid:helium-3> * 50, [5000, 3000, 1000, 750, 500, 250], 1000, 256);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1340>, <gregtech:gt.metaitem.01:1008>, <gregtech:gt.metaitem.01:1085>, <gregtech:gt.metaitem.01:28>, <gregtech:gt.metaitem.01:81>, <gregtech:gt.metaitem.01:324>], null, <customthings:item:42>, null, null, [5000, 2500, 1000, 750, 500, 150], 800, 120);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1010>, <gregtech:gt.metaitem.01:1910>, <gregtech:gt.metaitem.01:1359>, <gregtech:gt.metaitem.01:509>, <gregtech:gt.metaitem.01:47>, <gregtech:gt.metaitem.01:975>], null, <customthings:item:64>, null, <liquid:carbondioxide> * 50, [10000, 3000, 1000, 750, 500, 250], 1000, 256);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1908>, <gregtech:gt.metaitem.01:1526>, <gregtech:gt.metaitem.01:1873>, <gregtech:gt.metaitem.01:822>, <gregtech:gt.metaitem.01:67>, <gregtech:gt.metaitem.01:841>], null, <customthings:item:43>, null, <liquid:sulfuricacid> * 50, [5000, 3000, 1000, 750, 650, 350], 600, 60);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1917>, <gregtech:gt.metaitem.01:1822>, <gregtech:gt.metaitem.01:1942>, <gregtech:gt.metaitem.01:884>, <gregtech:gt.metaitem.01:98>, <gregtech:gt.metaitem.01:100>], null, <customthings:item:55>, null, null, [5000, 2500, 1000, 750, 500, 150], 600, 60);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1028>, <gregtech:gt.metaitem.01:1825>, <gregtech:gt.metaitem.01:1830>, <gregtech:gt.metaitem.01:500>, <gregtech:gt.metaitem.01:98>, <gregtech:gt.metaitem.01:52>], null, <customthings:item:48>, null, null, [5000, 3000, 1000, 750, 600, 250], 800, 120);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1702>, <gregtech:gt.metaitem.01:1526>, <gregtech:gt.metaitem.01:1524>, <gregtech:gt.metaitem.01:417>, <gregtech:gt.metaitem.01:63>, <gregtech:gt.metaitem.01:324>], null, <customthings:item:46>, null, <liquid:oxygen> * 50, [5000, 2500, 1250, 750, 500, 150], 800, 120);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1837>, <gregtech:gt.metaitem.01:1032>, <gregtech:gt.metaitem.01:1526>, <gregtech:gt.metaitem.01:525>, <gregtech:gt.metaitem.01:63>, <gregtech:gt.metaitem.01:98>], null, <customthings:item:47>, null, <liquid:nitrogen> * 50, [5000, 3000, 1000, 750, 500, 300], 800, 120);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1022>, <gregtech:gt.metaitem.01:1921>, <gregtech:gt.metaitem.01:1081>, <gregtech:gt.metaitem.01:502>, <gregtech:gt.metaitem.01:351>, <gregtech:gt.metaitem.01:84>], null, <customthings:item:50>, null, <liquid:gas_sulfuricgas> * 50, [5000, 3000, 1000, 750, 500, 250], 1000, 256);

Centrifuge.addRecipe([<customthings:item:37>, <gregtech:gt.metaitem.01:1830>, <gregtech:gt.metaitem.01:1507>, <gregtech:gt.metaitem.01:513>, <gregtech:gt.metaitem.01:6>, <gregtech:gt.metaitem.01:81>], null, <customthings:item:81>, null, null, [1500, 3000, 1000, 900, 750, 250], 800, 120);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1417>, <gregtech:gt.metaitem.01:1030>, <gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:417>, <gregtech:gt.metaitem.01:101>, <gregtech:gt.metaitem.01:324>], null, <customthings:item:44>, null, <liquid:oxygen> * 50, [5000, 3000, 1000, 750, 400, 200], 1200, 480);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1030>, <gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:1083>, <gregtech:gt.metaitem.01:417>, <gregtech:gt.metaitem.01:101>, <gregtech:gt.metaitem.01:324>], null, <customthings:item:45>, null, <liquid:oxygen> * 50, [5000, 3000, 1000, 750, 400, 100], 1200, 480);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1034>, <gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:1083>, <gregtech:gt.metaitem.01:501>, <gregtech:gt.metaitem.01:37>, <gregtech:gt.metaitem.01:101>], null, <customthings:item:61>, null, null, [5000, 2500, 1000, 900, 500, 200], 1200, 480);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:1083>, <gregtech:gt.metaitem.01:1324>, <gregtech:gt.metaitem.01:97>, <gregtech:gt.metaitem.01:101>, <miscutils:itemDustTinyTrinium>], null, <customthings:item:54>, null, <liquid:argon> * 50, [4000, 2000, 800, 300, 150, 150], 1200, 480);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1057>, <gregtech:gt.metaitem.01:1840>, <gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:884>, <gregtech:gt.metaitem.01:30>, <gregtech:gt.metaitem.01:84>], null, <customthings:item:53>, null, <liquid:argon> * 50, [4000, 2000, 1000, 750, 500, 350], 1200, 480);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1086>, <gregtech:gt.metaitem.01:1067>, <gregtech:gt.metaitem.01:1891>, <gregtech:gt.metaitem.01:47>, <gregtech:gt.metaitem.01:45>, <gregtech:gt.metaitem.01:37>], null, <customthings:item:62>, null, null, [5000, 3000, 1000, 750, 500, 350], 1400, 1024);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1035>, <gregtech:gt.metaitem.01:1922>, <gregtech:gt.metaitem.01:1391>, <gregtech:gt.metaitem.01:500>, <gregtech:gt.metaitem.01:98>, <miscutils:itemDustTinyTrinium>], null, <customthings:item:58>, null, <liquid:radon> * 50, [5000, 2500, 1000, 750, 500, 350], 1400, 1024);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1096>, <gregtech:gt.metaitem.01:1098>, <miscutils:itemDustSmallTrinium>, <gregtech:gt.metaitem.01:416>, <gregtech:gt.metaitem.01:417>, <gregtech:gt.metaitem.01:324>], null, <customthings:item:56>, null, null, [5000, 2500, 1250, 750, 500, 400], 1600, 1920);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1098>, <gregtech:gt.metaitem.01:1100>, <gregtech:gt.metaitem.01:1416>, <gregtech:gt.metaitem.01:527>, <gregtech:gt.metaitem.01:528>, <gregtech:gt.metaitem.01:327>], null, <customthings:item:57>, null, null, [5000, 2500, 850, 500, 500, 300], 1600, 1920);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1351>, <gregtech:gt.metaitem.01:1324>, <gregtech:gt.metaitem.01:1506>, <gregtech:gt.metaitem.01:78>, <gregtech:gt.metaitem.01:62>, <gregtech:gt.metaitem.01:65>], null, <customthings:item:49>, null, null, [5000, 2500, 850, 750, 500, 450], 1600, 1920);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1527>, <gregtech:gt.metaitem.01:1528>, <gregtech:gt.metaitem.01:1416>, <gregtech:gt.metaitem.01:37>, <gregtech:gt.metaitem.01:45>, <gregtech:gt.metaitem.01:47>], null, <customthings:item:51>, null, null, [2500, 2500, 1000, 750, 500, 350], 1600, 1920);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1047>, <gregtech:gt.metaitem.01:1045>, <gregtech:gt.metaitem.01:1037>, <gregtech:gt.metaitem.01:129>, <gregtech:gt.metaitem.01:401>, <gregtech:gt.metaitem.01:976>], null, <customthings:item:34>, null, null, [2500, 2000, 1500, 750, 250, 250], 1800, 4096);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1037>, <gregtech:gt.metaitem.01:1045>, <gregtech:gt.metaitem.01:1047>, <gregtech:gt.metaitem.01:129>, <gregtech:gt.metaitem.01:401>, <gregtech:gt.metaitem.01:976>], null, <customthings:item:33>, null, null, [2500, 2000, 1500, 750, 250, 250], 1800, 4096);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1084>, <gregtech:gt.metaitem.01:1326>, <gregtech:gt.metaitem.01:1975>, <gregtech:gt.metaitem.01:84>, <gregtech:gt.metaitem.01:418>, <gregtech:gt.metaitem.01:401>], null, <customthings:item:41>, null, <liquid:mercury> * 100, [5000, 3000, 1000, 1000, 100, 50], 1800, 4096);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1083>, <gregtech:gt.metaitem.01:1326>, <gregtech:gt.metaitem.01:1129>, <gregtech:gt.metaitem.01:416>, <gregtech:gt.metaitem.01:418>, <gregtech:gt.metaitem.01:401>], null, <customthings:item:40>, null, <liquid:mercury> * 200, [5000, 2000, 500, 2500, 150, 80], 1800, 4096);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1526>, <gregtech:gt.metaitem.01:1530>, <gregtech:gt.metaitem.01:1506>, <gregtech:gt.metaitem.01:975>, <gregtech:gt.metaitem.01:401>, <miscutils:itemDustTinyTrinium>], null, <customthings:item:59>, null, null, [5000, 2500, 1000, 750, 150, 50], 1800, 4096);

Centrifuge.addRecipe([<gregtech:gt.metaitem.01:1097>, <gregtech:gt.metaitem.01:1101>, <gregtech:gt.metaitem.01:1070>, <gregtech:gt.metaitem.01:129>, <gregtech:gt.metaitem.01:327>, <gregtech:gt.metaitem.01:976>], null, <customthings:item:63>, null, null, [5000, 3000, 1500, 800, 500, 50], 1800, 4096);


Centrifuge.addRecipe([<IC2:itemFuelPlantBall>*64, <gregtech:gt.metaitem.01:2415>*16, <customthings:item:32>], null, <GalaxySpace:tcetiedandelions>*64, null, <liquid:alienbiomass> * 4000, [10000, 10000, 10000], 1800, 262144);
Centrifuge.addRecipe([<IC2:itemFuelPlantBall>*64, <gregtech:gt.metaitem.01:2415>*16, <customthings:item:32>], null, <GalaxySpace:tcetiedandelions:3>*64, null, <liquid:alienbiomass> * 4000, [10000, 10000, 10000], 1800, 262144);
Centrifuge.addRecipe([<IC2:itemFuelPlantBall>*64, <gregtech:gt.metaitem.01:2415>*16, <customthings:item:32>], null, <GalaxySpace:tcetiedandelions:4>*64, null, <liquid:alienbiomass> * 4000, [10000, 10000, 10000], 1800, 262144);
Centrifuge.addRecipe([<IC2:itemFuelPlantBall>*64, <gregtech:gt.metaitem.01:2415>*16, <customthings:item:32>], null, <GalaxySpace:tcetiedandelions:5>*64, null, <liquid:alienbiomass> * 4000, [10000, 10000, 10000], 1800, 262144);

//Glowstones
Centrifuge.addRecipe([<minecraft:glowstone_dust>, <gregtech:gt.metaitem.01:340>, <gregtech:gt.metaitem.01:913>, <gregtech:gt.metaitem.01:8>], null, <GalaxySpace:item.GlowstoneDusts>, null, null, [10000, 7500, 6000, 5000], 400, 120);
Centrifuge.addRecipe([<minecraft:glowstone_dust>, <gregtech:gt.metaitem.01:22>, <gregtech:gt.metaitem.01:81>, <gregtech:gt.metaitem.01:921>], null, <GalaxySpace:item.GlowstoneDusts:1>, null, null, [10000, 7500, 6000, 5000], 500, 256);
Centrifuge.addRecipe([<minecraft:glowstone_dust>, <gregtech:gt.metaitem.01:417>, <gregtech:gt.metaitem.01:84>, <gregtech:gt.metaitem.01:30>], null, <GalaxySpace:item.GlowstoneDusts:2>, null, null, [10000, 7500, 6000, 5000], 600, 480);
Centrifuge.addRecipe([<minecraft:glowstone_dust>, <gregtech:gt.metaitem.01:35>, <gregtech:gt.metaitem.01:922>, <gregtech:gt.metaitem.01:391>], null, <GalaxySpace:item.GlowstoneDusts:3>, null, null, [10000, 7500, 6000, 5000], 700, 1024);
Centrifuge.addRecipe([<minecraft:glowstone_dust>, <gregtech:gt.metaitem.01:96>, <gregtech:gt.metaitem.01:98>, <gregtech:gt.metaitem.01:100>], null, <GalaxySpace:item.GlowstoneDusts:4>, null, null, [10000, 7500, 6000, 5000], 800, 1920);

//OutputArray, OutputFluid, InputStack, InputCell, InputFluid, OutputArrayChances, Time in Ticks, EnergyUsage
Electrolyzer.addRecipe([<gregtech:gt.metaitem.01:2415>*9, <gregtech:gt.metaitem.02:32585>*3], <liquid:liquid_heavy_oil>*1000,  <customthings:item:32>*13, null, null, [10000, 10000], 400, 16380);

// --- Barnarda C
Centrifuge.addRecipe([<customthings:item:141>, <gregtech:gt.metaitem.01:129>, <minecraft:sand>], null, <GalaxySpace:barnardaCgrass>, null, null, [5000, 1000, 5000], 1600, 2000000);
Centrifuge.addRecipe([<customthings:item:141>, <gregtech:gt.metaitem.01:129>, <minecraft:sand>], null, <GalaxySpace:barnardaCdirt>, null, null, [2500, 1000, 5000], 1600, 2000000);

Centrifuge.addRecipe([<customthings:item:141>, <gregtech:gt.metaitem.01:2010>, <gregtech:gt.metaitem.01:2809>], null, <GalaxySpace:barnardaClog>, null, <liquid:methane> * 60,  [3750, 2500, 2500], 800, 2000000);

Compressor.addRecipe(<customthings:item:141>, <GalaxySpace:barnardaCsapling> * 8);

Centrifuge.addRecipe([<IC2:itemFuelPlantBall>*64, <customthings:item:141>*16, <gregtech:gt.metaitem.01:2415>*4], null, <GalaxySpace:barnardaCdandelion3>*64, null, <liquid:alienbiomass> * 1000, [10000, 10000, 10000], 1200, 2000000);
Centrifuge.addRecipe([<IC2:itemFuelPlantBall>*64, <customthings:item:141>*16, <gregtech:gt.metaitem.01:2415>*4], null, <GalaxySpace:barnardaCreed>*64, null, <liquid:alienbiomass> * 1000, [10000, 10000, 10000], 1200, 2000000);
Centrifuge.addRecipe([<IC2:itemFuelPlantBall>*64, <customthings:item:141>*16, <gregtech:gt.metaitem.01:2415>*4], null, <GalaxySpace:barnardaCdandelions>*64, null, <liquid:alienbiomass> * 1000, [10000, 10000, 10000], 1200, 2000000);
Centrifuge.addRecipe([<IC2:itemFuelPlantBall>*64, <customthings:item:141>*16, <gregtech:gt.metaitem.01:2415>*4], null, <GalaxySpace:barnardaCdandelions:1>*64, null, <liquid:alienbiomass> * 1000, [10000, 10000, 10000], 1200, 2000000);

//Sifter
//OutputArray, InputStack, OutputArrayChances, Time in Ticks, EnergyUsage
mods.gregtech.Sifter.addRecipe([<GalaxySpace:barnardaCdandelions>,<GalaxySpace:barnardaCdandelions:1>,<gregtech:gt.metaitem.01:1037>, <gregtech:gt.metaitem.01:1045>, <gregtech:gt.metaitem.01:1047>,<gregtech:gt.metaitem.01:129>,<gregtech:gt.metaitem.01:401>,<gregtech:gt.metaitem.01:976>,<minecraft:sand>], <GalaxySpace:barnardaCgrass>, [2500,2500,2500,2000,1500,900,250,250,5000], 80, 2000000);
mods.gregtech.Sifter.addRecipe([<GalaxySpace:barnardaCdandelions>,<GalaxySpace:barnardaCdandelions:1>,<gregtech:gt.metaitem.01:1037>, <gregtech:gt.metaitem.01:1045>, <gregtech:gt.metaitem.01:1047>,<gregtech:gt.metaitem.01:129>,<gregtech:gt.metaitem.01:401>,<gregtech:gt.metaitem.01:976>,<minecraft:sand>], <GalaxySpace:barnardaCdirt>, [2000,2000,2500,2000,1500,900,250,250,5000], 80, 2000000);

Pulverizer.addRecipe([<customthings:item:141>, <GalaxySpace:barnardaCdandelion3>], <GalaxySpace:barnardaCleaves>*8, [10000, 5000], 400, 122880);

// --- Nei overriding Stuff ---




// --- Compressed Lead Plate
NEI.overrideName(<GalaxySpace:item.CompressedPlates:3>, "Compressed Lead Plate");

// --- Compressed Nickel Plate
NEI.overrideName(<GalaxySpace:item.CompressedPlates:6>, "Compressed Nickel Plate");

