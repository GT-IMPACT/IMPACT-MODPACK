#==============#
# SpartakCore #
#==============#

#==================================================================#
#Imports
import mods.gregtech.Assembler;
import mods.gregtech.AssemblyLine;
import mods.gregtech.Centrifuge;
import mods.gregtech.Electrolyzer;
import mods.gregtech.ImplosionCompressor;
import mods.gregtech.Pulverizer;
import mods.gregtech.Sifter;
import mods.ic2.Compressor;
import mods.nei.NEI;

print("Initializing 'SpartakCore.zs'...");

#==================================================================#

// --- Remove Recipes

//Heavy Rocket Engine (Tier 4)
recipes.remove(<spartakcore:item.HeavyDutyRocketEngineTier4>);

//Heavy Rocket Engine (Tier 5)
recipes.remove(<spartakcore:item.HeavyDutyRocketEngineTier5>);

//Heavy Rocket Engine (Tier 6)
recipes.remove(<spartakcore:item.HeavyDutyRocketEngineTier6>);

//Heavy Rocket Engine (Tier 7)
recipes.remove(<spartakcore:item.HeavyDutyRocketEngineTier7>);

//Heavy Rocket Engine (Tier 8)
recipes.remove(<spartakcore:item.HeavyDutyRocketEngineTier8>);


//Rocket Engine (Tier 4)
recipes.addShaped(<spartakcore:item.HeavyDutyRocketEngineTier4> , [
[<spartakcore:item.HeavyDutyPlateTier4>, <ore:pipeTinyNiobiumTitanium>, <spartakcore:item.HeavyDutyPlateTier4>],
[<spartakcore:item.HeavyDutyPlateTier4>, <gregtech:gt.metaitem.01:32645>, <spartakcore:item.HeavyDutyPlateTier4>],
[<spartakcore:item.Tier4Booster>, <GalacticraftMars:item.itemBasicAsteroids:1>, <spartakcore:item.Tier4Booster>]]);

//Rocket Engine (Tier 5)
recipes.addShaped(<spartakcore:item.HeavyDutyRocketEngineTier5> , [
[<spartakcore:item.HeavyDutyPlateTier5>, <ore:pipeTinyEnderium>, <spartakcore:item.HeavyDutyPlateTier5>],
[<spartakcore:item.HeavyDutyPlateTier5>, <gregtech:gt.metaitem.01:32646>, <spartakcore:item.HeavyDutyPlateTier5>],
[<spartakcore:item.Tier5Booster>, <spartakcore:item.HeavyDutyRocketEngineTier4>, <spartakcore:item.Tier5Booster>]]);

//Rocket Engine (Tier 6)
recipes.addShaped(<spartakcore:item.HeavyDutyRocketEngineTier6> , [
[<spartakcore:item.HeavyDutyPlateTier6>, <ore:pipeTinyNaquadah>, <spartakcore:item.HeavyDutyPlateTier6>],
[<spartakcore:item.HeavyDutyPlateTier6>, <gregtech:gt.metaitem.01:32647>, <spartakcore:item.HeavyDutyPlateTier6>],
[<spartakcore:item.Tier6Booster>, <spartakcore:item.HeavyDutyRocketEngineTier5>, <spartakcore:item.Tier6Booster>]]);

//Rocket Engine (Tier 7)
recipes.addShaped(<spartakcore:item.HeavyDutyRocketEngineTier7> , [
[<spartakcore:item.HeavyDutyPlateTier7>, <ore:pipeTinyDuranium>, <spartakcore:item.HeavyDutyPlateTier7>],
[<spartakcore:item.HeavyDutyPlateTier7>, <gregtech:gt.metaitem.01:32648>, <spartakcore:item.HeavyDutyPlateTier7>],
[<spartakcore:item.Tier7Booster>, <spartakcore:item.HeavyDutyRocketEngineTier6>, <spartakcore:item.Tier7Booster>]]);

//Rocket Engine (Tier 8)
recipes.addShaped(<spartakcore:item.HeavyDutyRocketEngineTier8> , [
[<spartakcore:item.HeavyDutyPlateTier8>, <ore:pipeTinyNeutronium>, <spartakcore:item.HeavyDutyPlateTier8>],
[<spartakcore:item.HeavyDutyPlateTier8>, <gregtech:gt.metaitem.01:32649>, <spartakcore:item.HeavyDutyPlateTier8>],
[<spartakcore:item.Tier8Booster>, <spartakcore:item.HeavyDutyRocketEngineTier7>, <spartakcore:item.Tier8Booster>]]);