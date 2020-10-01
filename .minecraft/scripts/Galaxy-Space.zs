#==============#
# Galaxy-Space #
#==============#

#==================================================================#
#Imports
import mods.gregtech.AssemblyLine;
import mods.gregtech.Centrifuge;
import mods.gregtech.Electrolyzer;
import mods.gregtech.ImplosionCompressor;
import mods.gregtech.Pulverizer;
import mods.gregtech.Sifter;
import mods.ic2.Compressor;
import mods.nei.NEI;

print("Initializing 'Galaxy-Space.zs'...");

#==================================================================#

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

// --- Small Fuel Canister
recipes.addShaped(<GalaxySpace:item.ModuleSmallFuelCanister>, [
[<ore:screwHSLA>, <ore:craftingToolScrewdriver>, <ore:screwHSLA>],
[<GalaxySpace:item.CompressedSDHD120>, <GalaxySpace:item.ModuleSmallCanister>, <GalaxySpace:item.CompressedSDHD120>],
[<ore:screwHSLA>, <ore:craftingToolHardHammer>, <ore:screwHSLA>]]);

// --- Blank Fuel Tank
recipes.addShaped(<GalaxySpace:item.ModuleSmallCanister>, [
[<GalacticraftCore:item.basicItem:9>, <ore:ringSteel>, <GalacticraftCore:item.basicItem:9>],
[<GalacticraftCore:item.basicItem:9>, <ore:craftingToolWrench>, <GalacticraftCore:item.basicItem:9>],
[<GalacticraftCore:item.basicItem:9>, <ore:ringSteel>, <GalacticraftCore:item.basicItem:9>]]);

#==================================================================#

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

//Glowstones
Centrifuge.addRecipe([<minecraft:glowstone_dust>, <gregtech:gt.metaitem.01:340>, <gregtech:gt.metaitem.01:913>, <gregtech:gt.metaitem.01:8>], null, <GalaxySpace:item.GlowstoneDusts>, null, null, [10000, 7500, 6000, 5000], 400, 120);
Centrifuge.addRecipe([<minecraft:glowstone_dust>, <gregtech:gt.metaitem.01:22>, <gregtech:gt.metaitem.01:81>, <gregtech:gt.metaitem.01:921>], null, <GalaxySpace:item.GlowstoneDusts:1>, null, null, [10000, 7500, 6000, 5000], 500, 256);
Centrifuge.addRecipe([<minecraft:glowstone_dust>, <gregtech:gt.metaitem.01:417>, <gregtech:gt.metaitem.01:84>, <gregtech:gt.metaitem.01:30>], null, <GalaxySpace:item.GlowstoneDusts:2>, null, null, [10000, 7500, 6000, 5000], 600, 480);
Centrifuge.addRecipe([<minecraft:glowstone_dust>, <gregtech:gt.metaitem.01:35>, <gregtech:gt.metaitem.01:922>, <gregtech:gt.metaitem.01:391>], null, <GalaxySpace:item.GlowstoneDusts:3>, null, null, [10000, 7500, 6000, 5000], 700, 1024);
Centrifuge.addRecipe([<minecraft:glowstone_dust>, <gregtech:gt.metaitem.01:96>, <gregtech:gt.metaitem.01:98>, <gregtech:gt.metaitem.01:100>], null, <GalaxySpace:item.GlowstoneDusts:4>, null, null, [10000, 7500, 6000, 5000], 800, 1920);

// --- Nei overriding Stuff ---




// --- Compressed Lead Plate
NEI.overrideName(<GalaxySpace:item.CompressedPlates:3>, "Compressed Lead Plate");

// --- Compressed Nickel Plate
NEI.overrideName(<GalaxySpace:item.CompressedPlates:6>, "Compressed Nickel Plate");

#==================================================================#

print("Initialized 'Galaxy-Space.zs'");