// --- Importing Stuff ---

import mods.nei.NEI;
import mods.gregtech.AlloySmelter;
import mods.gregtech.Assembler;

// --- Variables ---

val StorageComponent1K = <appliedenergistics2:item.ItemMultiMaterial:35>;
val StorageComponent4K = <appliedenergistics2:item.ItemMultiMaterial:36>;
val StorageComponent16K = <appliedenergistics2:item.ItemMultiMaterial:37>;
val StorageComponent64K = <appliedenergistics2:item.ItemMultiMaterial:38>;
val StorageComponent256K = <extracells:storage.component>;
val StorageComponent1024K = <extracells:storage.component:1>;
val StorageComponent4096K = <extracells:storage.component:2>;
val StorageComponent16384K = <extracells:storage.component:3>;

val FluidSComponent1K = <extracells:storage.component:4>;
val FluidSComponent4K = <extracells:storage.component:5>;
val FluidSComponent16K = <extracells:storage.component:6>;
val FluidSComponent64K = <extracells:storage.component:7>;
val FluidSComponent256K = <extracells:storage.component:8>;
val FluidSComponent1024K = <extracells:storage.component:9>;
val FluidSComponent4096K = <extracells:storage.component:10>;

val Storage256K = <extracells:storage.physical>;
val Storage1024K = <extracells:storage.physical:1>;
val Storage4096K = <extracells:storage.physical:2>;
val Storage16384K = <extracells:storage.physical:3>;
val BlockContainer = <extracells:storage.physical:4>;

val FluidStorage1K = <extracells:storage.fluid>;
val FluidStorage4K = <extracells:storage.fluid:1>;
val FluidStorage16K = <extracells:storage.fluid:2>;
val FluidStorage64K = <extracells:storage.fluid:3>;
val FluidStorage256K = <extracells:storage.fluid:4>;
val FluidStorage1024K = <extracells:storage.fluid:5>;
val FluidStorage4096K = <extracells:storage.fluid:6>;

val UStorageHousing = <appliedenergistics2:item.ItemMultiMaterial:39>;
val UAdvStorageHousing = <extracells:storage.casing>;
val UFluidStorageHousing = <extracells:storage.casing:1>;

val CertusCircuit = <appliedenergistics2:item.ItemMultiMaterial:23>;
var GoldCircuit = <appliedenergistics2:item.ItemMultiMaterial:22>;
val DiamondCircuit = <appliedenergistics2:item.ItemMultiMaterial:24>;
var NANDChip = <gregtech:gt.metaitem.01:32700>;
val BasicCircuit = <ore:circuitBasic>;
val GoodCircuit = <ore:circuitGood>;
val AdvCircuit = <ore:circuitAdvanced>;
val DataCircuit = <ore:circuitData>;
val DataControlCircuit = <ore:circuitElite>;
val EFlow = <ore:circuitMaster>;
val DataOrb = <ore:circuitUltimate>;
var SoCchip = <gregtech:gt.metaitem.03:32047>;
var ASoCchip = <gregtech:gt.metaitem.03:32049>;

val QuartziteScrew = <ore:screwQuartzite>;
val CertusScrew = <ore:screwCertusQuartz>;
val NQuartzScrew = <ore:screwNetherQuartz>;
val CertusPlate = <gregtech:gt.metaitem.01:17516>;
val AlPlate = <ore:plateAluminium>;
val TitaniumPlate = <ore:plateTitanium>;
val StainlessPlate = <ore:plateStainlessSteel>;
val ChromePlate = <ore:plateChrome>;
val TSteelPlate = <ore:plateTungstenSteel>;
val HSLAPlate = <ore:plateHSLA>;
val ReinforcedIridiumPlate = <ore:plateAlloyIridium>;
val GlassPane = <gregtech:gt.metaitem.01:17890>;

val Screwdriver = <ore:craftingToolScrewdriver>;
val SHammer = <ore:craftingToolSoftHammer>;
val HHammer = <ore:craftingToolHardHammer>;

var mPlatinum = <liquid:molten.platinum>;
var mEuropuim = <liquid:molten.europium>;
var mAmericium = <liquid:molten.americium>;
var mNeutronium = <liquid:molten.neutronium>;
var mPhoenixite = <liquid:molten.phoenixite>;

// --- Removing Recipes ---


// ||||| Cells |||||


// --- Storage Cell - 256K
recipes.remove(Storage256K);

// --- Storage Cell - 1024K
recipes.remove(Storage1024K);

// --- Storage Cell - 4096K
recipes.remove(Storage4096K);

// --- Storage Cell - 16384K
recipes.remove(Storage16384K);

// --- Storage Cell Component - 256K
recipes.remove(StorageComponent256K);

// --- Storage Cell Component - 1024K
recipes.remove(StorageComponent1024K);

// --- Storage Cell Component - 4096K
recipes.remove(StorageComponent4096K);

// --- Storage Cell Component - 16384K
recipes.remove(StorageComponent16384K);

// --- Universal Advanced Storage Housing
recipes.remove(UAdvStorageHousing);

//Certus Quartz Tank
recipes.remove(<extracells:certustank>);

//ME Fluid Pattern
recipes.remove(<extracells:pattern.fluid>);

//ME Fluid Export Bus
recipes.remove(<extracells:part.base>);

//ME Fluid Import Bus
recipes.remove(<extracells:part.base:1>);

//ME Fluid Storage Bus
recipes.remove(<extracells:part.base:2>);

//ME Fluid Terminal
recipes.remove(<extracells:part.base:3>);

//ME Fluid Level Emitter
recipes.remove(<extracells:part.base:4>);

//ME Fluid Annihilation Plane
recipes.remove(<extracells:part.base:5>);

//ME Fluid Formating Plane
recipes.remove(<extracells:part.base:6>);

//ME Drive Fixture
recipes.remove(<extracells:part.base:7>);

//ME Energy Cell Fixture
recipes.remove(<extracells:part.base:8>);

// ||||| Fluid Cells |||||


// --- Fluid Storage Cell - 1K
recipes.remove(FluidStorage1K);

// --- Fluid Storage Cell - 4K
recipes.remove(FluidStorage4K);

// --- Fluid Storage Cell - 16K
recipes.remove(FluidStorage16K);

// --- Fluid Storage Cell - 64K
recipes.remove(FluidStorage64K);

// --- Fluid Storage Cell - 256K
recipes.remove(FluidStorage256K);

// --- Fluid Storage Cell - 1024K
recipes.remove(FluidStorage1024K);

// --- Fluid Storage Cell - 4096K
recipes.remove(FluidStorage4096K);

// --- Fluid Storage Cell Component - 1K
recipes.remove(FluidSComponent1K);

// --- Fluid Storage Cell Component - 4K
recipes.remove(FluidSComponent4K);

// --- Fluid Storage Cell Component - 16K
recipes.remove(FluidSComponent16K);

// --- Fluid Storage Cell Component - 64K
recipes.remove(FluidSComponent64K);

// --- Fluid Storage Cell Component - 256K
recipes.remove(FluidSComponent256K);

// --- Fluid Storage Cell Component - 1024K
recipes.remove(FluidSComponent1024K);

// --- Fluid Storage Cell Component - 4096K
recipes.remove(FluidSComponent4096K);

// --- Universal Advanced Storage Housing
recipes.remove(UFluidStorageHousing);



// --- Adding Back Recipes ---


// ||||| Cells |||||


// --- Storage Cell - 256K
recipes.addShapeless(<extracells:storage.physical:0>, [<extracells:storage.component:0>, <extracells:storage.casing:0>]);

// --- Storage Cell - 1024K
recipes.addShapeless(<extracells:storage.physical:1>, [<extracells:storage.component:1>, <extracells:storage.casing:0>]);

// --- Storage Cell - 4096K
recipes.addShapeless(<extracells:storage.physical:2>, [<extracells:storage.component:2>, <extracells:storage.casing:0>]);

// --- Storage Cell - 16384K
recipes.addShapeless(<extracells:storage.physical:3>, [<extracells:storage.component:3>, <extracells:storage.casing:0>]);

// --- Storage Cell Component - 256K
Assembler.addRecipe(StorageComponent256K, [DataCircuit*4, StorageComponent64K*4, <customthings:item:152>, <gregtech:gt.metaitem.03:32041>,<gregtech:gt.integrated_circuit:1>*0], null, 200, 7680);
Assembler.addRecipe(StorageComponent256K, [DataCircuit*3, StorageComponent64K*4, <customthings:item:145>, <gregtech:gt.metaitem.03:32043>,<gregtech:gt.integrated_circuit:1>*0], null, 280, 30720);

Assembler.addRecipe(StorageComponent256K, [DataCircuit*3, StorageComponent64K*3, ASoCchip, <customthings:item:145>,<gregtech:gt.integrated_circuit:2>*0], mAmericium * 36, 30, 122880);
Assembler.addRecipe(StorageComponent256K, [StorageComponent64K*2, DataControlCircuit, <gregtech:gt.metaitem.03:32061>, <customthings:item:154>,<gregtech:gt.integrated_circuit:2>*0], mNeutronium * 36, 30, 500000);

// --- Storage Cell Component - 1024K
Assembler.addRecipe(StorageComponent1024K, [DataControlCircuit*4, StorageComponent256K*4, <customthings:item:152>, <gregtech:gt.metaitem.03:32041>,<gregtech:gt.integrated_circuit:1>*0], null, 220, 7680);
Assembler.addRecipe(StorageComponent1024K, [DataControlCircuit*3, StorageComponent256K*4, <customthings:item:145>, <gregtech:gt.metaitem.03:32043>,<gregtech:gt.integrated_circuit:1>*0], null, 300, 30720);

Assembler.addRecipe(StorageComponent1024K, [DataControlCircuit*3, StorageComponent256K*3, ASoCchip, <customthings:item:145>,<gregtech:gt.integrated_circuit:2>*0], mAmericium * 36, 30, 122880);
Assembler.addRecipe(StorageComponent1024K, [StorageComponent256K*2, EFlow, <gregtech:gt.metaitem.03:32061>, <customthings:item:154>,<gregtech:gt.integrated_circuit:2>*0], mNeutronium * 36, 30, 500000);

// --- Storage Cell Component - 4096K
Assembler.addRecipe(StorageComponent4096K, [EFlow*4, StorageComponent1024K*4, <customthings:item:150>, <gregtech:gt.metaitem.03:32041>,<gregtech:gt.integrated_circuit:1>*0], null, 240, 30720);
Assembler.addRecipe(StorageComponent4096K, [EFlow*3, StorageComponent1024K*4, <customthings:item:147>, <gregtech:gt.metaitem.03:32043>,<gregtech:gt.integrated_circuit:1>*0], null, 320, 122880);

Assembler.addRecipe(StorageComponent4096K, [EFlow*3, StorageComponent1024K*3, <gregtech:gt.metaitem.03:32061>, <customthings:item:147>,<gregtech:gt.integrated_circuit:2>*0], mNeutronium * 36, 30, 500000);
Assembler.addRecipe(StorageComponent4096K, [StorageComponent1024K*2, DataOrb, <gregtech:gt.metaitem.03:32063>, <customthings:item:156>,<gregtech:gt.integrated_circuit:2>*0], mPhoenixite * 36, 30, 2000000);

// --- Storage Cell Component - 16384K
Assembler.addRecipe(StorageComponent16384K, [DataOrb*4, StorageComponent4096K*4, <customthings:item:150>, <gregtech:gt.metaitem.03:32041>,<gregtech:gt.integrated_circuit:1>*0], null, 260, 30720);
Assembler.addRecipe(StorageComponent16384K, [DataOrb*3, StorageComponent4096K*4, <customthings:item:147>, <gregtech:gt.metaitem.03:32043>,<gregtech:gt.integrated_circuit:1>*0], null, 340, 122880);

Assembler.addRecipe(StorageComponent16384K, [DataOrb*3, StorageComponent4096K*3, <gregtech:gt.metaitem.03:32061>, <customthings:item:147>,<gregtech:gt.integrated_circuit:2>*0], mNeutronium * 36, 30, 500000);
Assembler.addRecipe(StorageComponent16384K, [StorageComponent4096K*2, <ore:circuitSuperconductor>, <gregtech:gt.metaitem.03:32063>, <customthings:item:156>,<gregtech:gt.integrated_circuit:2>*0], mPhoenixite * 36, 30, 2000000);

// --- Universal Advanced Storage Housing
recipes.addShapedMirrored(UAdvStorageHousing, [
[HHammer, GlassPane, CertusScrew],
[<ore:plateTriniumTitaniumAlloy>, UStorageHousing, <ore:plateTriniumTitaniumAlloy>],
[CertusScrew, <ore:plateHastelloyC276>, Screwdriver]]);
// - Alternative Recipe
recipes.addShapedMirrored(UAdvStorageHousing, [
[Screwdriver, GlassPane, CertusScrew],
[<ore:plateTriniumTitaniumAlloy>, UStorageHousing, <ore:plateTriniumTitaniumAlloy>],
[CertusScrew, <ore:plateHastelloyC276>, HHammer]]);


// ||||| Fluid Cells |||||


// --- Fluid Storage Cell - 1K
recipes.addShapeless(<extracells:storage.fluid:0>, [<extracells:storage.component:4>, <extracells:storage.casing:1>]);

// --- Fluid Storage Cell - 4K
recipes.addShapeless(<extracells:storage.fluid:1>, [<extracells:storage.component:5>, <extracells:storage.casing:1>]);

// --- Fluid Storage Cell - 16K
recipes.addShapeless(<extracells:storage.fluid:2>, [<extracells:storage.component:6>, <extracells:storage.casing:1>]);

// --- Fluid Storage Cell - 64K
recipes.addShapeless(<extracells:storage.fluid:3>, [<extracells:storage.component:7>, <extracells:storage.casing:1>]);

// --- Fluid Storage Cell - 256K
recipes.addShapeless(<extracells:storage.fluid:4>, [<extracells:storage.component:8>, <extracells:storage.casing:1>]);

// --- Fluid Storage Cell - 1024K
recipes.addShapeless(<extracells:storage.fluid:5>, [<extracells:storage.component:9>, <extracells:storage.casing:1>]);

// --- Fluid Storage Cell - 4096K
recipes.addShapeless(<extracells:storage.fluid:6>, [<extracells:storage.component:10>, <extracells:storage.casing:1>]);

// --- Fluid Storage Cell Component - 1K
var RAMchip = <gregtech:gt.metaitem.03:32039>;

Assembler.addRecipe(FluidSComponent1K, [RAMchip*4, <ore:dyeBlue>*4, <customthings:item:160>,<gregtech:gt.integrated_circuit:1>*0], null, 180, 480);
Assembler.addRecipe(FluidSComponent1K, [<gregtech:gt.metaitem.03:32041>*3, <ore:dyeBlue>*4, <customthings:item:159>,<gregtech:gt.integrated_circuit:1>*0], null, 240, 1920);

// --- Fluid Storage Cell Component - 4K
Assembler.addRecipe(FluidSComponent4K, [BasicCircuit*4, FluidSComponent1K*4, <customthings:item:160>,<gregtech:gt.metaitem.03:32039>,<gregtech:gt.integrated_circuit:1>*0], null, 200, 480);
Assembler.addRecipe(FluidSComponent4K, [BasicCircuit*3, FluidSComponent1K*4, <customthings:item:159>,<gregtech:gt.metaitem.03:32041>,<gregtech:gt.integrated_circuit:1>*0], null, 260, 1920);

// --- Fluid Storage Cell Component - 16K
Assembler.addRecipe(FluidSComponent16K, [GoodCircuit*4, FluidSComponent4K*4, <customthings:item:148>, <gregtech:gt.metaitem.03:32039>,<gregtech:gt.integrated_circuit:1>*0], null, 220, 1920);
Assembler.addRecipe(FluidSComponent16K, [GoodCircuit*3, FluidSComponent4K*4, <customthings:item:144>, <gregtech:gt.metaitem.03:32041>,<gregtech:gt.integrated_circuit:1>*0], null, 280, 7680);

Assembler.addRecipe(FluidSComponent16K, [RAMchip*32, <ore:dyeBlue>*32, SoCchip, <customthings:item:144>,<gregtech:gt.integrated_circuit:2>*0], mEuropuim * 36, 30, 30720);
Assembler.addRecipe(FluidSComponent16K, [<gregtech:gt.metaitem.03:32041>*16, <ore:dyeBlue>*16, <gregtech:gt.metaitem.03:32049>, <gregtech:gt.metaitem.01:32714>,<gregtech:gt.integrated_circuit:2>*0], mAmericium * 36, 30, 122880);

// --- Fluid Storage Cell Component - 64K
Assembler.addRecipe(FluidSComponent64K, [AdvCircuit*4, FluidSComponent16K*4, <customthings:item:148>, <gregtech:gt.metaitem.03:32039>,<gregtech:gt.integrated_circuit:1>*0], null, 240, 1920);
Assembler.addRecipe(FluidSComponent64K, [AdvCircuit*3, FluidSComponent16K*4, <customthings:item:144>, <gregtech:gt.metaitem.03:32041>,<gregtech:gt.integrated_circuit:1>*0], null, 300, 7680);

Assembler.addRecipe(FluidSComponent64K, [AdvCircuit*3, FluidSComponent16K*3, SoCchip, <customthings:item:144>,<gregtech:gt.integrated_circuit:2>*0], mEuropuim * 36, 30, 30720);
Assembler.addRecipe(FluidSComponent64K, [FluidSComponent16K*2, DataCircuit, ASoCchip, <gregtech:gt.metaitem.01:32714>,<gregtech:gt.integrated_circuit:2>*0], mAmericium * 36, 30, 122880);

// --- Fluid Storage Cell Component - 256K
Assembler.addRecipe(FluidSComponent256K, [DataCircuit*4, FluidSComponent64K*4, <customthings:item:149>, <gregtech:gt.metaitem.03:32041>,<gregtech:gt.integrated_circuit:1>*0], null, 260, 7680);
Assembler.addRecipe(FluidSComponent256K, [DataCircuit*3, FluidSComponent64K*4, <customthings:item:146>, <gregtech:gt.metaitem.03:32043>,<gregtech:gt.integrated_circuit:1>*0], null, 320, 30720);

Assembler.addRecipe(FluidSComponent256K, [DataCircuit*3, FluidSComponent64K*3, ASoCchip, <customthings:item:146>,<gregtech:gt.integrated_circuit:2>*0], mAmericium * 36, 30, 122880);
Assembler.addRecipe(FluidSComponent256K, [FluidSComponent64K*2, DataControlCircuit, <gregtech:gt.metaitem.03:32061>, <gregtech:gt.metaitem.01:32714>,<gregtech:gt.integrated_circuit:2>*0], mNeutronium * 36, 30, 500000);

// --- Fluid Storage Cell Component - 1024K
Assembler.addRecipe(FluidSComponent1024K, [DataControlCircuit*4, FluidSComponent256K*4, <customthings:item:149>, <gregtech:gt.metaitem.03:32041>,<gregtech:gt.integrated_circuit:1>*0], null, 280, 7680);
Assembler.addRecipe(FluidSComponent1024K, [DataControlCircuit*3, FluidSComponent256K*4, <customthings:item:146>, <gregtech:gt.metaitem.03:32043>,<gregtech:gt.integrated_circuit:1>*0], null, 340, 30720);

Assembler.addRecipe(FluidSComponent1024K, [DataControlCircuit*3, FluidSComponent256K*3, ASoCchip, <customthings:item:146>,<gregtech:gt.integrated_circuit:2>*0], mAmericium * 36, 30, 122880);
Assembler.addRecipe(FluidSComponent1024K, [FluidSComponent256K*2, EFlow, <gregtech:gt.metaitem.03:32061>, <gregtech:gt.metaitem.01:32714>,<gregtech:gt.integrated_circuit:2>*0], mNeutronium * 36, 30, 500000);

// --- Fluid Storage Cell Component - 4096K
Assembler.addRecipe(FluidSComponent4096K, [EFlow*4, FluidSComponent1024K*4, <customthings:item:149>, <gregtech:gt.metaitem.03:32041>,<gregtech:gt.integrated_circuit:1>*0], null, 300, 30720);
Assembler.addRecipe(FluidSComponent4096K, [EFlow*3, FluidSComponent1024K*4, <customthings:item:146>, <gregtech:gt.metaitem.03:32043>,<gregtech:gt.integrated_circuit:1>*0], null, 360, 122880);

Assembler.addRecipe(FluidSComponent4096K, [EFlow*3, FluidSComponent1024K*3, <gregtech:gt.metaitem.03:32061>, <customthings:item:146>,<gregtech:gt.integrated_circuit:2>*0], mNeutronium * 36, 30, 500000);
Assembler.addRecipe(FluidSComponent4096K, [FluidSComponent1024K*2, <ore:circuitSuperconductor>, <gregtech:gt.metaitem.03:32063>, <gregtech:gt.metaitem.01:32714>,<gregtech:gt.integrated_circuit:2>*0], mPhoenixite * 36, 30, 2000000);

// --- Universal Fluid Storage Housing
recipes.addShapedMirrored(UFluidStorageHousing, [
[HHammer, CertusPlate, NQuartzScrew],
[<ore:plateIncoloy020>, GlassPane, <ore:plateIncoloy020>],
[NQuartzScrew, StainlessPlate, Screwdriver]]);

// --- Quartz Tank
AlloySmelter.addRecipe(<extracells:certustank>, <appliedenergistics2:tile.BlockQuartzGlass> * 8, <gregtech:gt.metaitem.01:32308> * 0, 800, 32);

// --- ME Fluid Pattern
recipes.addShapeless(<extracells:pattern.fluid>, [<extracells:storage.casing:1>, <ore:bucketEmpty>]);

// --- ME Fluid Export Bus
recipes.addShaped(<extracells:part.base>, [
[<appliedenergistics2:item.ItemMultiMaterial:43>, <ore:foilSilicon>, <ore:craftingToolWrench>],
[<ore:plateLapis>, <gregtech:gt.metaitem.01:32611>, <appliedenergistics2:item.ItemMultiPart:140>],
[<appliedenergistics2:item.ItemMultiMaterial:43>, <ore:foilSilicon>, <ore:craftingToolHardHammer>]]);

// --- ME Fluid Import Bus
recipes.addShaped(<extracells:part.base:1>, [
[<appliedenergistics2:item.ItemMultiMaterial:44>, <ore:foilSilicon>, <ore:craftingToolWrench>],
[<ore:plateLapis>, <gregtech:gt.metaitem.01:32611>, <appliedenergistics2:item.ItemMultiPart:140>],
[<appliedenergistics2:item.ItemMultiMaterial:44>, <ore:foilSilicon>, <ore:craftingToolHardHammer>]]);

// --- ME Fluid Storage Bus
recipes.addShaped(<extracells:part.base:2>, [
[<appliedenergistics2:item.ItemMultiMaterial:43>, <ore:foilSilicon>, <ore:craftingToolWrench>],
[<extracells:part.base:9>, <gregtech:gt.metaitem.01:32611>, <appliedenergistics2:item.ItemMultiPart:140>],
[<appliedenergistics2:item.ItemMultiMaterial:44>, <ore:foilSilicon>, <ore:craftingToolHardHammer>]]);
recipes.addShaped(<extracells:part.base:2>, [
[<appliedenergistics2:item.ItemMultiMaterial:44>, <ore:foilSilicon>, <ore:craftingToolWrench>],
[<extracells:part.base:9>, <gregtech:gt.metaitem.01:32611>, <appliedenergistics2:item.ItemMultiPart:140>],
[<appliedenergistics2:item.ItemMultiMaterial:43>, <ore:foilSilicon>, <ore:craftingToolHardHammer>]]);

// --- ME Fluid Terminal
recipes.addShaped(<extracells:part.base:3>, [
[<ore:itemIlluminatedPanel>, <appliedenergistics2:item.ItemMultiMaterial:43>, <appliedenergistics2:item.ItemMultiMaterial:44>],
[<ore:plateLapis>, <ore:plateLapis>, <ore:plateLapis>],
[null, null, null]]);

// --- Wireless Fluid Terminal
recipes.remove(<extracells:terminal.fluid.wireless>);
recipes.addShaped(<extracells:terminal.fluid.wireless>, [
[<appliedenergistics2:item.ItemMultiMaterial:41>, <extracells:part.base:3>, <appliedenergistics2:item.ItemMultiMaterial:41>], 
[<ore:plateHastelloyN>, <appliedenergistics2:item.ItemMultiMaterial:24>, <ore:plateHastelloyN>], 
[<ore:plateHastelloyN>, <appliedenergistics2:tile.BlockDenseEnergyCell>, <ore:plateHastelloyN>]]);

// --- ME Fluid Level Emitter
recipes.addShapeless(<extracells:part.base:4>, [<appliedenergistics2:item.ItemMultiPart:280>, <ore:plateLapis>]);

// --- ME Fluid Annihilation Plane
recipes.addShapeless(<extracells:part.base:5>, [<appliedenergistics2:item.ItemMultiPart:300>, <ore:plateLapis>, <ore:plateLapis>, <ore:plateLapis>]);

// --- ME Fluid Formating Plane
recipes.addShapeless(<extracells:part.base:6>, [<appliedenergistics2:item.ItemMultiPart:320>, <ore:plateLapis>, <ore:plateLapis>, <ore:plateLapis>]);

// --- ME Drive Fixture
recipes.addShapeless(<extracells:part.base:7>, [<appliedenergistics2:tile.BlockDrive>, <ore:plateIron>, <ore:plateIron>, <ore:plateLapis>]);

// --- ME Energy Cell Fixture
recipes.addShapeless(<extracells:part.base:8>, [<appliedenergistics2:tile.BlockEnergyCell>, <ore:plateIron>, <ore:plateIron>, <ore:plateLapis>]);

// --- Hiding Stuff ---
NEI.addEntry(<extracells:pattern.fluid>.withTag({display: {Name: "ME Fluid Pattern [WIP]"}}));
// --- Cyrillic Search Support
NEI.addEntry(<extracells:pattern.fluid>.withTag({display: {Name: "МЭ жидкостный шаблон [WIP]"}}));

//Me Fluid Interface
var FluidInt = <extracells:ecbaseblock:0>;
var FluidIntPanel = <extracells:part.base:9>;
var Int = <appliedenergistics2:tile.BlockInterface>;

recipes.remove(FluidInt);
recipes.remove(FluidIntPanel);
recipes.addShapeless(FluidInt, [Int, <ore:dyeBlue>]);
recipes.addShapeless(FluidInt, [FluidIntPanel]);
recipes.addShapeless(FluidIntPanel, [FluidInt]);

// ME Block Container
var FormationCore = <appliedenergistics2:item.ItemMultiMaterial:43>;
recipes.remove(BlockContainer);
recipes.addShapeless(BlockContainer, [StorageComponent64K, UStorageHousing, FormationCore]);

// Portable Fluid Storage
var MEChest = <appliedenergistics2:tile.BlockChest>;
var DEnergyCell = <appliedenergistics2:tile.BlockDenseEnergyCell>;
recipes.remove(<extracells:storage.fluid.portable>);
recipes.addShapeless(<extracells:storage.fluid.portable>, [MEChest, FluidStorage1K, DEnergyCell]);