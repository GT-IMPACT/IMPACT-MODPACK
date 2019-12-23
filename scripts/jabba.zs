// --- Created by Spartak1997 --- 

import mods.gregtech.Assembler;

# Aliases
var chestEnder = <minecraft:ender_chest>;
var dolly = <JABBA:mover>;
var HHammer = <ore:craftingToolHardHammer>;
var plankWood = <ore:plankWood>;
var plateIron = <ore:plateIron>;
var tuningFork = <JABBA:tuningFork>;
var upgradeBSpace = <JABBA:upgradeCore:1>;
var wrench = <ore:craftingToolWrench>;
var hammerBarrel = <JABBA:hammer>;
var ingotIron = <ore:ingotIron>;
var stickWood = <ore:stickWood>;
var upgradeStorage9x = <JABBA:upgradeCore:5>;
var upgradeStorage27x = <JABBA:upgradeCore:6>;
var betterBarrel = <JABBA:barrel>;
var diadolly = <JABBA:moverDiamond>;
val GTScrewdriver = <ore:craftingToolScrewdriver>;
val IronWheels = <gregtech:gt.metaitem.01:32100>;
val StorageUp = <JABBA:upgradeCore>;
val Storage3Up = <JABBA:upgradeCore:4>;
val Storage9Up = <JABBA:upgradeCore:5>;
val Storage27Up = <JABBA:upgradeCore:6>;
val Storage81Up = <JABBA:upgradeCore:8>;
val Storage243Up = <JABBA:upgradeCore:9>;
val Barrel = <JABBA:barrel>;
val Piston = <minecraft:piston>;
val Screwdriver = <ore:craftingToolScrewdriver>;
val MKI = <JABBA:upgradeStructural>;
val MKII = <JABBA:upgradeStructural:1>;
val MKIII = <JABBA:upgradeStructural:2>;
val MKIV = <JABBA:upgradeStructural:3>;
val MKV = <JABBA:upgradeStructural:4>;
val MKVI = <JABBA:upgradeStructural:5>;
val MKVII = <JABBA:upgradeStructural:6>;
val MKVIII = <JABBA:upgradeStructural:7>;
val MKIX = <JABBA:upgradeStructural:8>;
val MKX = <JABBA:upgradeStructural:9>;
val MKXI = <JABBA:upgradeStructural:10>;

# Blocks/Items Removal
// --- Storage Upgrade
recipes.remove(StorageUp);

// --- Storage Upgrade 3x
recipes.remove(Storage3Up);

// --- Storage Upgrade 9x
recipes.remove(Storage9Up);

// --- Storage Upgrade 27x
recipes.remove(Storage27Up);

// --- Storage Upgrade 81x
recipes.remove(Storage81Up);

// --- Storage Upgrade 243x
recipes.remove(Storage243Up);

// --- Structural Upgrade MK I
recipes.remove(MKI);

// --- Structural Upgrade MK II
recipes.remove(MKII);

// --- Structural Upgrade MK III
recipes.remove(MKIII);

// --- Structural Upgrade MK IV
recipes.remove(MKIV);

// --- Structural Upgrade MK V
recipes.remove(MKV);

// --- Structural Upgrade MK VI
recipes.remove(MKVI);

// --- Structural Upgrade MK VII
recipes.remove(MKVII);

// --- Structural Upgrade MK VIII
recipes.remove(MKVIII);

// --- Structural Upgrade MK IX
recipes.remove(MKIX);

// --- Structural Upgrade MK X
recipes.remove(MKX);

// --- Structural Upgrade MK XI
recipes.remove(MKXI);

// --- Redstone Upgrade
recipes.remove(<JABBA:upgradeCore:2>);

// --- Hopper Upgrade
recipes.remove(<JABBA:upgradeCore:3>);

recipes.remove(upgradeBSpace);
upgradeBSpace.addTooltip(format.red(format.bold("This item is DISABLED!")));

recipes.remove(tuningFork);
tuningFork.addTooltip(format.red(format.bold("This item is DISABLED!")));

recipes.remove(<JABBA:upgradeCore:7>);
recipes.addShaped(<JABBA:upgradeCore:7>, [
[<ore:screwAluminium>, <JABBA:upgradeCore>, <ore:screwAluminium>],
[<ore:itemCasingAluminium>, <appliedenergistics2:tile.BlockCondenser>, <ore:itemCasingAluminium>],
[<ore:screwAluminium>, <ProjRed|Transmission:projectred.transmission.wire>, <ore:screwAluminium>]]);

diadolly.addTooltip(format.red(format.bold("This item is DISABLED!")));


# Recipe Tweaks
recipes.remove(hammerBarrel);
// --- Barrel Hammer
recipes.addShaped(<JABBA:hammer>, [
[<ore:ingotIron>, <ore:plateIron>, <ore:ingotIron>],
[<ore:screwIron>, <ore:stickIron>, <ore:screwIron>],
[HHammer, <ore:stickIron>, GTScrewdriver]]);

recipes.remove(dolly);
recipes.addShaped(dolly, [
[<ore:stickIron>, <ore:stickIron>, <ore:roundRubber>],
[<ore:stickIron>, <ore:craftingToolWrench>, <ore:roundRubber>],
[IronWheels, <ore:plateSteel>, IronWheels]]);

// --- Storage Upgrade
recipes.addShaped(StorageUp, [
[<ore:screwSteel>, Piston, <ore:screwSteel>],
[<ore:screwSteel>, Barrel, <ore:screwSteel>],
[null, Screwdriver, null]]);

// --- Structural Upgrade MK I
recipes.addShaped(MKI, [
[<ore:stickWood>, <ore:plateWood>, <ore:stickWood>],
[<ore:plateWood>, Barrel, <ore:plateWood>],
[<ore:stickWood>, <ore:plateWood>, <ore:stickWood>]]);

// --- Structural Upgrade MK II
recipes.addShaped(MKII, [
[<ore:stickBronze>, <ore:plateBronze>, <ore:stickBronze>],
[<ore:plateBronze>, Barrel, <ore:plateBronze>],
[<ore:stickBronze>, <ore:plateBronze>, <ore:stickBronze>]]);

// --- Structural Upgrade MK III
recipes.addShaped(MKIII, [
[<ore:stickWroughtIron>, <ore:plateWroughtIron>, <ore:stickWroughtIron>],
[<ore:plateWroughtIron>, Barrel, <ore:plateWroughtIron>],
[<ore:stickWroughtIron>, <ore:plateWroughtIron>, <ore:stickWroughtIron>]]);

// --- Structural Upgrade MK IX
recipes.addShaped(MKIV, [
[<ore:stickCobalt>, <ore:plateCobalt>, <ore:stickCobalt>],
[<ore:plateCobalt>, Barrel, <ore:plateCobalt>],
[<ore:stickCobalt>, <ore:plateCobalt>, <ore:stickCobalt>]]);

// --- Structural Upgrade MK V
recipes.addShaped(MKV, [
[<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel>],
[<ore:plateSteel>, Barrel, <ore:plateSteel>],
[<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel>]]);

// --- Structural Upgrade MK VI
recipes.addShaped(MKVI, [
[<ore:stickObsidian>, <ore:plateObsidian>, <ore:stickObsidian>],
[<ore:plateObsidian>, Barrel, <ore:plateObsidian>],
[<ore:stickObsidian>, <ore:plateObsidian>, <ore:stickObsidian>]]);

// --- Structural Upgrade MK VII
recipes.addShaped(MKVII, [
[<ore:stickDiamond>, <ore:plateDiamond>, <ore:stickDiamond>],
[<ore:plateDiamond>, Barrel, <ore:plateDiamond>],
[<ore:stickDiamond>, <ore:plateDiamond>, <ore:stickDiamond>]]);

// --- Structural Upgrade MK VIII
recipes.addShaped(MKVIII, [
[<ore:stickAluminium>, <ore:plateAluminium>, <ore:stickAluminium>],
[<ore:plateAluminium>, Barrel, <ore:plateAluminium>],
[<ore:stickAluminium>, <ore:plateAluminium>, <ore:stickAluminium>]]);

// --- Structural Upgrade MK IX
recipes.addShaped(MKIX, [
[<ore:stickTitanium>, <ore:plateTitanium>, <ore:stickTitanium>],
[<ore:plateTitanium>, Barrel, <ore:plateTitanium>],
[<ore:stickTitanium>, <ore:plateTitanium>, <ore:stickTitanium>]]);

// --- Structural Upgrade MK X
recipes.addShaped(MKX, [
[<ore:stickTungstenSteel>, <ore:plateTungstenSteel>, <ore:stickTungstenSteel>],
[<ore:plateTungstenSteel>, Barrel, <ore:plateTungstenSteel>],
[<ore:stickTungstenSteel>, <ore:plateTungstenSteel>, <ore:stickTungstenSteel>]]);

// --- Structural Upgrade MK XI
recipes.addShaped(MKXI, [
[<ore:stickIridium>, <ore:plateIridium>, <ore:stickIridium>],
[<ore:plateIridium>, Barrel, <ore:plateIridium>],
[<ore:stickIridium>, <ore:plateIridium>, <ore:stickIridium>]]);

// --- Redstone Upgrade
recipes.addShaped(<JABBA:upgradeCore:2>, [
[<ore:plateRedAlloy>, Piston, <ore:plateRedAlloy>],
[Piston, <minecraft:redstone_block>, Piston],
[<ore:plateRedAlloy>, Piston, <ore:plateRedAlloy>]]);

// --- Hopper Upgrade
recipes.addShaped(<JABBA:upgradeCore:3>, [
[<ore:plateIron>, Piston, <ore:plateIron>],
[Piston, <minecraft:hopper>, Piston],
[<ore:plateIron>, Piston, <ore:plateIron>]]);

	// --- Storage Upgrade
Assembler.addRecipe(StorageUp, Barrel, Piston, 1200, 16);

// --- Storage Upgrade 3x
Assembler.addRecipe(Storage3Up, StorageUp * 3, <gregtech:gt.integrated_circuit:3> * 0, 900, 30);

// --- Storage Upgrade 9x
Assembler.addRecipe(Storage9Up, Storage3Up * 3, <gregtech:gt.integrated_circuit:3> * 0, 600, 64);

// --- Storage Upgrade 27x
Assembler.addRecipe(Storage27Up, Storage9Up * 3, <gregtech:gt.integrated_circuit:3> * 0, 400, 120);

// --- Storage Upgrade 81x
Assembler.addRecipe(Storage81Up, Storage27Up * 3, <gregtech:gt.integrated_circuit:3> * 0, 200, 256);

// --- Storage Upgrade 243x
Assembler.addRecipe(Storage243Up, Storage81Up * 3, <gregtech:gt.integrated_circuit:3> * 0, 150, 480);