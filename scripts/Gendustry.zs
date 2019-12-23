import mods.gregtech.Assembler;

var EjectCover = <gendustry:EjectCover>;
var ImportCover = <gendustry:ImportCover>;
var ErrorCover = <gendustry:ErrorSensorCover>;
var EjectorUp = <IC2:upgradeModule:3>;
var PullingUp = <IC2:upgradeModule:6>;
var ScentedPaneling = <Forestry:craftingMaterial:6>;
var MaintainanceCover = <gregtech:gt.metaitem.01:32748>;


// --- Item Eject Cover
recipes.remove(EjectCover);
Assembler.addRecipe(EjectCover, EjectorUp, ScentedPaneling * 2, 16 * 20, 32);

// --- Item Import Cover
recipes.remove(ImportCover);
Assembler.addRecipe(ImportCover, PullingUp, ScentedPaneling * 2, 16 * 20, 32);

// --- Sensor Error Cover
recipes.remove(ErrorCover);
Assembler.addRecipe(ErrorCover, MaintainanceCover, ScentedPaneling * 2, <liquid:molten.redstone> * 144 * 2, 20 * 20, 32);

Assembler.addRecipe(<gendustry:UpgradeFrame>, <customthings:item:127>, <ore:circuitElite>, <liquid:mutagen> * 100, 400, 7680);

// Ind Apiary
Assembler.addRecipe(<gendustry:IndustrialApiary>, [<Forestry:alveary>*4, <gregtech:gt.metaitem.01:32603>*3, <Forestry:alveary:3>*2, <Forestry:alveary:4>*2, <Forestry:alveary:5>*2, <Forestry:alveary:6>*2, <Forestry:alveary:7>*2, <ore:gearGtHastelloyC276>*4, <gendustry:PowerModule>], null, 400, 1920);

// --- Genetics Processor
Assembler.addRecipe(<gendustry:GeneticsProcessor>, <customthings:item:162>, <ore:circuitElite>, <liquid:mutagen> * 500, 400, 7680);

Assembler.addRecipe(<gendustry:EnvProcessor>, <customthings:item:164>, <ore:circuitElite>, <liquid:bacteria> * 500, 400, 7680);


game.setLocalization("tile.gendustry.mutagen.producer.name", "Mutagen Producer");