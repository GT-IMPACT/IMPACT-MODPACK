// --- Created by DreamMasterXXL ---



// --- Imports ---



import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import mods.gregtech.Assembler;




// --- Vars ---


var StorageDrawers1V = [
<StorageDrawers:fullDrawers1:0>,
<StorageDrawers:fullDrawers1:1>,
<StorageDrawers:fullDrawers1:2>,
<StorageDrawers:fullDrawers1:3>,
<StorageDrawers:fullDrawers1:4>,
<StorageDrawers:fullDrawers1:5>]
as IItemStack[];

var StorageDrawers1x2V = [
<StorageDrawers:fullDrawers2:0>,
<StorageDrawers:fullDrawers2:1>,
<StorageDrawers:fullDrawers2:2>,
<StorageDrawers:fullDrawers2:3>,
<StorageDrawers:fullDrawers2:4>,
<StorageDrawers:fullDrawers2:5>]
as IItemStack[];

var StorageDrawers1x2CV = [
<StorageDrawers:halfDrawers2:0>,
<StorageDrawers:halfDrawers2:1>,
<StorageDrawers:halfDrawers2:2>,
<StorageDrawers:halfDrawers2:3>,
<StorageDrawers:halfDrawers2:4>,
<StorageDrawers:halfDrawers2:5>] 
as IItemStack[];

var StorageDrawers2x2V = [
<StorageDrawers:fullDrawers4:0>,
<StorageDrawers:fullDrawers4:1>,
<StorageDrawers:fullDrawers4:2>,
<StorageDrawers:fullDrawers4:3>,
<StorageDrawers:fullDrawers4:4>,
<StorageDrawers:fullDrawers4:5>] 
as IItemStack[];

var StorageDrawers2x2CV = [
<StorageDrawers:halfDrawers4:0>,
<StorageDrawers:halfDrawers4:1>,
<StorageDrawers:halfDrawers4:2>,
<StorageDrawers:halfDrawers4:3>,
<StorageDrawers:halfDrawers4:4>,
<StorageDrawers:halfDrawers4:5>] 
as IItemStack[];

var StorageDrawersTrimV = [
<StorageDrawers:trim:0>,
<StorageDrawers:trim:1>,
<StorageDrawers:trim:2>,
<StorageDrawers:trim:3>,
<StorageDrawers:trim:4>,
<StorageDrawers:trim:5>] 
as IItemStack[];

var slabsV = [
<minecraft:wooden_slab:0>,
<minecraft:wooden_slab:1>,
<minecraft:wooden_slab:2>,
<minecraft:wooden_slab:3>,
<minecraft:wooden_slab:4>,
<minecraft:wooden_slab:5>]
as IItemStack[];

var Cplank = <CarpentersBlocks:blockCarpentersBlock>;



// --- remove recipes ---



// --- Upgrades
recipes.remove(<StorageDrawers:upgrade:*>);

// --- Compact Drawers
recipes.remove(<StorageDrawers:compDrawers>);

// --- Controller Slave
recipes.remove(<StorageDrawers:controllerSlave>);

// --- Status Upgrade
recipes.remove(<StorageDrawers:upgradeStatus:*>);

// --- Redstone Upgrades
recipes.remove(<StorageDrawers:upgradeRedstone:*>);

// --- Void Upgrade
recipes.remove(<StorageDrawers:upgradeVoid>);

// --- Storage Key
recipes.remove(<StorageDrawers:upgradeLock>);

// --- Concealedment Key
recipes.remove(<StorageDrawers:shroudKey>);

// --- Storage Personal Key
recipes.remove(<StorageDrawers:personalKey>);

// --- Packing Tape
recipes.remove(<StorageDrawers:tape>);

// --- Framing Table
recipes.remove(<StorageDrawers:framingTable>);

// --- Framed Drawers
recipes.remove(<StorageDrawers:fullCustom1>);

// --- Framed Drawers 1x2
recipes.remove(<StorageDrawers:fullCustom2>);

// --- Framed Drawers 2x2
recipes.remove(<StorageDrawers:fullCustom4>);

// --- Halfe Framed Drawers 1x2
recipes.remove(<StorageDrawers:halfCustom2>);

// --- Halfe Framed Drawers 2x2
recipes.remove(<StorageDrawers:halfCustom4>);

// --- Trim Framed
recipes.remove(<StorageDrawers:trimCustom>);


// --- Add Recipes ---




// --- Framed Drawers
recipes.addShaped(<StorageDrawers:fullCustom1>, [
[Cplank, Cplank, Cplank],
[Cplank, <minecraft:chest>, Cplank],
[Cplank, Cplank, Cplank]]);

// --- Framed Drawers 1x2
recipes.addShaped(<StorageDrawers:fullCustom2>, [
[Cplank, <minecraft:chest>, Cplank],
[Cplank, Cplank, Cplank],
[Cplank, <minecraft:chest>, Cplank]]);

// --- Framed Drawers 2x2
recipes.addShaped(<StorageDrawers:fullCustom4>, [
[<minecraft:chest>, Cplank, <minecraft:chest>],
[Cplank, Cplank, Cplank],
[<minecraft:chest>, Cplank, <minecraft:chest>]]);

// --- Halfe Framed Drawers 1x2
recipes.addShaped(<StorageDrawers:halfCustom2>, [
[Cplank, Cplank, Cplank],
[<minecraft:chest>, Cplank, <minecraft:chest>],
[Cplank, Cplank, Cplank]]);

// --- Halfe Framed Drawers 2x2
recipes.addShaped(<StorageDrawers:halfCustom4>, [
[Cplank, <minecraft:chest>, Cplank],
[<minecraft:chest>, Cplank, <minecraft:chest>],
[Cplank, <minecraft:chest>, Cplank]]);

// --- Trim Framed
recipes.addShaped(<StorageDrawers:trimCustom>, [
[<ore:stickWood>, Cplank, <ore:stickWood>],
[Cplank, Cplank, Cplank],
[<ore:stickWood>, Cplank, <ore:stickWood>]]);




// --- Upgrades ---


// --- Upgarde Iron
recipes.addShaped(<StorageDrawers:upgrade:2>, [
[<ore:plateIron>, <StorageDrawers:upgradeTemplate>, <ore:plateIron>],
[<StorageDrawers:upgradeTemplate>, <ore:plateIron>, <StorageDrawers:upgradeTemplate>],
[<ore:plateIron>, <ore:stickIron>, <ore:plateIron>]]);

// --- Upgarde Gold
recipes.addShaped(<StorageDrawers:upgrade:3>, [
[<ore:plateGold>, <StorageDrawers:upgradeTemplate>, <ore:plateGold>],
[<StorageDrawers:upgradeTemplate>, <ore:plateSteel>, <StorageDrawers:upgradeTemplate>],
[<ore:plateGold>, <ore:stickGold>, <ore:plateGold>]]);

// --- Upgarde Obsidian
recipes.addShaped(<StorageDrawers:upgrade:4>, [
[<ore:plateObsidian>, <StorageDrawers:upgradeTemplate>, <ore:plateObsidian>],
[<StorageDrawers:upgradeTemplate>, <ore:plateAluminium>, <StorageDrawers:upgradeTemplate>],
[<ore:plateObsidian>, <ore:stickObsidian>, <ore:plateObsidian>]]);

// --- Upgarde Diamond
recipes.addShaped(<StorageDrawers:upgrade:5>, [
[<ore:plateDiamond>, <StorageDrawers:upgradeTemplate>, <ore:plateDiamond>],
[<StorageDrawers:upgradeTemplate>, <ore:plateStainlessSteel>, <StorageDrawers:upgradeTemplate>],
[<ore:plateDiamond>, <ore:stickDiamond>, <ore:plateDiamond>]]);

// --- Upgarde Emerald
recipes.addShaped(<StorageDrawers:upgrade:6>, [
[<ore:plateEmerald>, <StorageDrawers:upgradeTemplate>, <ore:plateEmerald>],
[<StorageDrawers:upgradeTemplate>, <ore:plateTitanium>, <StorageDrawers:upgradeTemplate>],
[<ore:plateEmerald>, <ore:stickEmerald>, <ore:plateEmerald>]]);

// --- Compacting Drawers
//recipes.addShaped(<StorageDrawers:compDrawers>, [
//[<ore:plateStone>, <ore:plateStone>, <ore:plateStone>], 
//[<minecraft:piston>, <ore:drawerBasic>, <minecraft:piston>], 
//[<ore:plateObsidian>, <ore:plateIron>, <ore:plateObsidian>]]);

// --- Controler Slave
recipes.addShaped(<StorageDrawers:controllerSlave>, [
[<ore:plateStainlessSteel>, <ore:circuitGood>, <ore:plateStainlessSteel>], 
[<ProjRed|Integration:projectred.integration.gate:26>, <ore:drawerBasic>, <ProjRed|Integration:projectred.integration.gate:26>], 
[<ore:plateObsidian>, <ore:plateEnderEye>, <ore:plateObsidian>]]);

// --- Status Upgrade 1
recipes.addShaped(<StorageDrawers:upgradeStatus:1>, [
[<minecraft:redstone_torch>, <ProjRed|Transmission:projectred.transmission.wire>, <minecraft:redstone_torch>], 
[<ProjRed|Transmission:projectred.transmission.wire>, <StorageDrawers:upgradeTemplate>, <ProjRed|Transmission:projectred.transmission.wire>], 
[<ore:plateRedstone>,<ProjRed|Transmission:projectred.transmission.wire>, <ore:plateRedstone>]]);

// --- Status Upgrade 2
recipes.addShaped(<StorageDrawers:upgradeStatus:2>, [
[<ProjRed|Integration:projectred.integration.gate:26>, <ProjRed|Transmission:projectred.transmission.wire>, <ProjRed|Integration:projectred.integration.gate:26>], 
[<ProjRed|Transmission:projectred.transmission.wire>, <StorageDrawers:upgradeTemplate>, <ProjRed|Transmission:projectred.transmission.wire>], 
[<ore:plateRedstone>, <ProjRed|Transmission:projectred.transmission.wire>, <ore:plateRedstone>]]);

// --- Redstone Upgrades
recipes.addShaped(<StorageDrawers:upgradeRedstone>, [
[<ore:plateRedstone>, <ore:stickWood>, <ore:plateRedstone>], 
[<ore:stickWood>, <StorageDrawers:upgradeTemplate>, <ore:stickWood>], 
[<ore:plateRedstone>, <ProjRed|Transmission:projectred.transmission.wire>, <ore:plateRedstone>]]);

// --- Redstone Upgrades Max
recipes.addShaped(<StorageDrawers:upgradeRedstone:1>, [
[<ore:plateRedstone>, <ore:plateRedstone>, <ore:plateRedstone>], 
[<ore:stickWood>, <StorageDrawers:upgradeTemplate>, <ore:stickWood>], 
[<ore:stickWood>, <ProjRed|Transmission:projectred.transmission.wire>, <ore:stickWood>]]);

// --- Redstone Upgrades Min
recipes.addShaped(<StorageDrawers:upgradeRedstone:2>, [
[<ore:stickWood>, <ProjRed|Transmission:projectred.transmission.wire>, <ore:stickWood>], 
[<ore:stickWood>, <StorageDrawers:upgradeTemplate>, <ore:stickWood>], 
[<ore:plateRedstone>, <ore:plateRedstone>, <ore:plateRedstone>]]);

// --- Void Upgrade
recipes.addShaped(<StorageDrawers:upgradeVoid>, [
[<ore:screwAluminium>, <StorageDrawers:upgradeTemplate>, <ore:screwAluminium>],
[<ore:itemCasingAluminium>, <appliedenergistics2:tile.BlockCondenser>, <ore:itemCasingAluminium>],
[<ore:screwAluminium>, <ProjRed|Transmission:projectred.transmission.wire>, <ore:screwAluminium>]]);


// --- Storage Key
recipes.addShaped(<StorageDrawers:upgradeLock>, [
[null, <ore:boltGold>, <ore:plateSteel>],
[<StorageDrawers:upgradeTemplate>, <ore:plateSteel>, <ore:stickGold>],
[<ore:plateGold>, <ore:craftingToolSaw>, null]]);

// --- Framing Table
recipes.addShaped(<StorageDrawers:framingTable>, [
[<StorageDrawers:trim:*>, <StorageDrawers:trim:*>, <StorageDrawers:trim:*>],
[<minecraft:fence>, <ore:screwIron>, <minecraft:fence>],
[<minecraft:fence>, <ore:craftingToolScrewdriver>, <minecraft:fence>]]);


//  ---- Vanilla Wood Add!


// Drawers 1 
for i, logs in slabsV {
    var plank = StorageDrawers1V[i];
    
    recipes.remove(plank);
    recipes.addShaped(plank, [[logs, logs, logs],[<ore:screwWood>, <minecraft:chest>, <ore:screwWood>],[logs, logs, logs]]);
}
// Drawers 1x2
for i, logs in slabsV {
    var plank = StorageDrawers1x2V[i];
    
    recipes.remove(plank);
    recipes.addShaped(plank, [[logs, <minecraft:chest>, logs],[<ore:screwWood>, logs, <ore:screwWood>],[logs, <minecraft:chest>, logs]]);
}
// Drawers 2x2
for i, logs in slabsV {
    var plank = StorageDrawers2x2V[i];
    
    recipes.remove(plank);
    recipes.addShaped(plank, [[<minecraft:chest>, logs, <minecraft:chest>],[<ore:screwWood>, logs, <ore:screwWood>],[<minecraft:chest>, logs, <minecraft:chest>]]);
}
// DrawersCompact 1x2
for i, logs in slabsV {
    var plank = StorageDrawers1x2CV[i];
   
    recipes.remove(plank);
    recipes.addShaped(plank * 2, [[logs, logs, logs],[<minecraft:chest>, <ore:screwWood>, <minecraft:chest>],[logs, logs, logs]]);
}
// DrawersCompact 2x2
for i, logs in slabsV {
    var plank = StorageDrawers2x2CV[i];
    
    recipes.remove(plank);
    recipes.addShaped(plank * 2, [[logs, <minecraft:chest>, logs],[<minecraft:chest>, <ore:screwWood>, <minecraft:chest>],[logs, <minecraft:chest>, logs]]);
}
// Drawers Trim
for i, logs in slabsV {
    var plank = StorageDrawersTrimV[i];
   
    recipes.remove(plank);
    recipes.addShaped(plank, [[<ore:screwWood>, logs, <ore:screwWood>],[logs, logs, logs],[<ore:screwWood>, logs, <ore:screwWood>]]);
}

// --- Upgrade Template
recipes.addShaped(<StorageDrawers:upgradeTemplate>, [
[<ore:screwSteel>, <minecraft:piston>, <ore:screwSteel>],
[<ore:screwSteel>, <ore:drawerBasic>, <ore:screwSteel>],
[null, <ore:craftingToolScrewdriver>, null]]);


// --- Assembler recipes ---




// --- Upgrade Template
for item in <ore:drawerBasic>.items {
	Assembler.addRecipe(<StorageDrawers:upgradeTemplate>, item, <minecraft:piston>, 1200, 16);
}

// --- Concealedment Key
Assembler.addRecipe(<StorageDrawers:shroudKey>, <StorageDrawers:upgradeLock>, <minecraft:ender_eye>, 100, 30);

// --- Storage Personal Key
Assembler.addRecipe(<StorageDrawers:personalKey>, <StorageDrawers:upgradeLock>, <minecraft:name_tag>, 100, 30);

// --- Packing Tape
Assembler.addRecipe(<StorageDrawers:tape>, <minecraft:paper>, <gregtech:gt.integrated_circuit:1> * 0, <liquid:glue> * 144, 200, 30);