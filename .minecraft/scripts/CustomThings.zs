#==============#
# CustomThings #
#==============#

#==================================================================#
#Imports
import minetweaker.oredict.IOreDictEntry;
import minetweaker.item.IItemStack;
import mods.gregtech.AlloySmelter;
import mods.gregtech.ArcFurnace;
import mods.gregtech.Assembler;
import mods.gregtech.BlastFurnace;
import mods.gregtech.Centrifuge;
import mods.gregtech.ChemicalBath;
import mods.gregtech.ChemicalReactor;
import mods.gregtech.Electrolyzer;
import mods.gregtech.Extruder;
import mods.gregtech.FluidExtractor;
import mods.gregtech.ForgeHammer;
import mods.gregtech.FormingPress;
import mods.gregtech.ImplosionCompressor;
import mods.gregtech.Mixer;
import mods.gregtech.PlasmaArcFurnace;
import mods.gregtech.PrecisionLaser;
import mods.gregtech.Pulverizer;
import mods.gregtech.VacuumFreezer;
import mods.ic2.Compressor;
import mods.nei.NEI;

print("Initializing 'CustomThings.zs'...");

#==================================================================#
#Wafer Tier 3
PrecisionLaser.addRecipe(<customthings:item:9>, <gregtech:gt.metaitem.03:32042>, <gregtech:gt.metaitem.01:24405> * 0, 1200, 1920);

#==================================================================#
#MORE COAL
Compressor.addRecipe(<customthings:block0>, <gregtech:gt.blockgem3:4> * 9);
Compressor.addRecipe(<customthings:block0:1>, <customthings:block0> * 9);
Compressor.addRecipe(<customthings:block0:2>, <customthings:block0:1> * 9);
Compressor.addRecipe(<customthings:block0:3>, <customthings:block0:2> * 9);
Compressor.addRecipe(<customthings:block0:4>, <customthings:block0:3> * 9);

Compressor.addRecipe(<customthings:block0:5>, <minecraft:coal_block> * 9);
Compressor.addRecipe(<customthings:block0:6>, <customthings:block0:5> * 9);
Compressor.addRecipe(<customthings:block0:7>, <customthings:block0:6> * 9);
Compressor.addRecipe(<customthings:block0:8>, <customthings:block0:7> * 9);
Compressor.addRecipe(<customthings:block0:9>, <customthings:block0:8> * 9);

Compressor.addRecipe(<customthings:block0:10>, <impact:DecorateBlock:1> * 9);
Compressor.addRecipe(<customthings:block0:11>, <customthings:block0:10> * 9);
Compressor.addRecipe(<customthings:block0:12>, <customthings:block0:11> * 9);
Compressor.addRecipe(<customthings:block0:13>, <customthings:block0:12> * 9);
Compressor.addRecipe(<customthings:block0:14>, <customthings:block0:13> * 9);

furnace.setFuel(<customthings:block0>, 160000);
furnace.setFuel(<customthings:block0:1>, 1600000);
furnace.setFuel(<customthings:block0:2>, 16000000);
furnace.setFuel(<customthings:block0:3>, 160000000);
furnace.setFuel(<customthings:block0:4>, 1600000000);

furnace.setFuel(<customthings:block0:5>, 160000);
furnace.setFuel(<customthings:block0:6>, 1600000);
furnace.setFuel(<customthings:block0:7>, 16000000);
furnace.setFuel(<customthings:block0:8>, 160000000);
furnace.setFuel(<customthings:block0:9>, 1600000000);

furnace.setFuel(<customthings:block0:10>, 320000);
furnace.setFuel(<customthings:block0:11>, 3200000);
furnace.setFuel(<customthings:block0:12>, 32000000);
furnace.setFuel(<customthings:block0:13>, 320000000);
furnace.setFuel(<customthings:block0:14>, 3200000000);

#==================================================================#

recipes.remove(<gregtech:gt.metaitem.01:32300>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:gt.metaitem.01:32300>, <liquid:steel.molten> * 576, null, false, 80);
Assembler.addRecipe(<gregtech:gt.metaitem.01:32300>, <ore:plateSteel>*4, <gregtech:gt.integrated_circuit:4>*0, null, 40, 8);

#???
recipes.addShaped(<OpenComputers:assembler>, [
		[<gregtech:gt.metaitem.01:32650>,<gregtech:gt.metaitem.03:32102>,<gregtech:gt.metaitem.01:32650>],
		[<ore:plateAluminium>,<gregtech:gt.blockcasings:3>,<ore:plateAluminium>],
		[<OpenComputers:item:25>,<gregtech:gt.metaitem.01:32650>,<OpenComputers:item:25>]
	]
);

#==================================================================#

print("Initialized 'CustomThings.zs'");
