import mods.gregtech.Assembler;
import mods.gregtech.Autoclave;
import mods.gregtech.Mixer;

//SG Crystal Dust
Mixer.addRecipe(<customthings:item:110>, null, [<customthings:item:32>*64, <gregtech:gt.metaitem.01:2393>*21, <gregtech:gt.metaitem.02:30527>*16,<gregtech:gt.metaitem.02:30510>*16], null, 3600, 262144);

//SG Core Crystal
Autoclave.addRecipe(<SGCraft:sgCoreCrystal>, <customthings:item:110>*64, <liquid:plasma.silver> * 8000, 10000, 3600, 131000);
Autoclave.addRecipe(<SGCraft:sgControllerCrystal>, <ore:dustDraconiumAwakened>*64, <liquid:plasma.radon> * 8000, 10000, 3600, 131000);

//SG Chevron
mods.gregtech.AssemblyLine.addRecipe(<customthings:item:112>, 1152000, [<gregtech:gt.metaitem.01:32647>*16, <gregtech:gt.metaitem.01:32608> * 64, <gregtech:gt.blockmetal4:13> * 64, <gregtech:gt.metaitem.01:22976>*8, <gregtech:gt.metaitem.01:22976>*8, <gregtech:gt.metaitem.01:22101>*8, <gregtech:gt.metaitem.01:22101>*8, <gregtech:gt.metaitem.02:30502>*16, <gregtech:gt.metaitem.02:30527>*16, <gregtech:gt.metaitem.03:32125>*32], [<liquid:molten.neutronium> * 9216, <liquid:molten.infuscolium> * 9216, <liquid:molten.naquadahalloy> * 9216, <liquid:plasma.silver> * 9216], <customthings:item:109>, 72000, 2097152);

//SG Frame Part
mods.gregtech.AssemblyLine.addRecipe(<gregtech:gt.blockmachines:4421>, 1152000, [<gregtech:gt.metaitem.02:22129>*64, <gregtech:gt.metaitem.02:22490>*64, <gregtech:gt.metaitem.02:22418>*64, <gregtech:gt.metaitem.02:22325>*64, <gregtech:gt.metaitem.02:22317>*64], [<liquid:molten.neutronium> * 73728, <liquid:molten.infuscolium> * 73728, <liquid:molten.concrete> * 73728], <customthings:item:111>, 72000, 2097152);

//SG Shielding Foil
mods.gregtech.AssemblyLine.addRecipe(<customthings:item:111>, 1152000, [<gregtech:gt.metaitem.01:32726>*64, <gregtech:gt.metaitem.01:32697>*16, <gregtech:gt.blockmetal5:2>*16, <gregtech:gt.blockmetal8:12>*16, <gregtech:gt.blockmetal4:13>*64, <gregtech:gt.blockmetal4:13>*64, <gregtech:gt.blockmetal4:13>*64, <gregtech:gt.blockmetal4:13>*64, <gregtech:gt.metaitem.03:32125>*16], [<liquid:molten.neutronium> * 36864, <liquid:molten.naquadahalloy> * 36864, <liquid:plasma.silver> * 36864], <customthings:item:112>, 72000, 2097152);

//SG Chevron Upgrade
recipes.remove(<SGCraft:sgChevronUpgrade>);
Assembler.addRecipe(<SGCraft:sgChevronUpgrade>, [<customthings:item:111>*8, <customthings:item:109>*3, <gregtech:gt.metaitem.01:32647>*6, <gregtech:gt.metaitem.01:32677>*4, <gregtech:gt.metaitem.01:32697>], null, 1000, 500000);

//SG Chevron Block
recipes.remove(<SGCraft:stargateRing:1>);
Assembler.addRecipe(<SGCraft:stargateRing:1>, [<gregtech:gt.blockmetal4:13>*16, <gregtech:gt.metaitem.01:32697>*4, <gregtech:gt.metaitem.03:32125>*4, <SGCraft:sgChevronUpgrade>*4, <SGCraft:stargateRing>], null, 1000, 500000);

//SG Ring Block
recipes.remove(<SGCraft:stargateRing>);
Assembler.addRecipe(<SGCraft:stargateRing>, [<gregtech:gt.blockmetal4:13>*24, <customthings:item:111>*24, <customthings:item:112>*8, <customthings:item:109>*3, <gregtech:gt.metaitem.01:32677>*8], null, 1000, 500000);

//SG Base
recipes.remove(<SGCraft:stargateBase>);
Assembler.addRecipe(<SGCraft:stargateBase>, [<gregtech:gt.blockmetal4:13>*6, <SGCraft:stargateRing>*8, <SGCraft:stargateRing:1>, <gregtech:gt.metaitem.01:32687>, <SGCraft:sgCoreCrystal>], null, 1000, 500000);

//SG Controller
recipes.remove(<SGCraft:stargateController>);
Assembler.addRecipe(<SGCraft:stargateController>, [<gregtech:gt.blockmetal4:13>*24, <gregtech:gt.metaitem.01:32697>*4, <EnderIO:blockDarkSteelPressurePlate>*12, <SGCraft:sgControllerCrystal>], null, 1000, 500000);

//SG Power Unit
recipes.remove(<SGCraft:ic2PowerUnit>);
Assembler.addRecipe(<SGCraft:ic2PowerUnit>, [<gregtech:gt.blockmetal4:13>*24, <gregtech:gt.blockcasings:15>*10, <gregtech:gt.metaitem.03:32125>*4, <SGCraft:ic2Capacitor>*4, <SGCraft:stargateRing>], null, 1000, 500000);

//Large Capacitor
recipes.remove(<SGCraft:ic2Capacitor>);
Assembler.addRecipe(<SGCraft:ic2Capacitor>, [<customthings:item:112>*12, <gregtech:gt.metaitem.01:32677>*5, <gregtech:gt.metaitem.01:32605>*4], null, 1000, 500000);

//SG Iris Upgrade
recipes.remove(<SGCraft:sgIrisUpgrade>);
Assembler.addRecipe(<SGCraft:sgIrisUpgrade>, <SGCraft:sgIrisBlade>*20, <gregtech:gt.blockcasings:15>*4, null, 1000, 500000);

//SG Iris Blade
recipes.remove(<SGCraft:sgIrisBlade>);
Assembler.addRecipe(<SGCraft:sgIrisBlade>, [<gregtech:gt.blockmetal7:9>*32, <gregtech:gt.metaitem.01:32647>, <gregtech:gt.blockcasings:15>], null, 1000, 500000);

//SG Interface
recipes.remove(<SGCraft:ocInterface>);
Assembler.addRecipe(<SGCraft:ocInterface>, [<gregtech:gt.blockmetal4:13>*24, <gregtech:gt.blockcasings:15>*10, <gregtech:gt.metaitem.03:32125>*4, <OpenComputers:item:103>*16, <OpenComputers:item:90>*16, <SGCraft:stargateRing>], null, 1000, 500000);

