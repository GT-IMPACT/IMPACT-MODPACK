import mods.gregtech.Assembler;
import mods.gregtech.Autoclave;
import mods.gregtech.Mixer;

//SG Chevron Upgrade
recipes.remove(<SGCraft:sgChevronUpgrade>);
Assembler.addRecipe(<SGCraft:sgChevronUpgrade>, [<impact:impact_item2:147>*8, <impact:impact_item2:149>*3, <gregtech:gt.metaitem.01:32647>*6, <gregtech:gt.metaitem.01:32677>*4, <gregtech:gt.metaitem.01:32697>], null, 1000, 500000);

//SG Chevron Block
recipes.remove(<SGCraft:stargateRing:1>);
Assembler.addRecipe(<SGCraft:stargateRing:1>, [<gregtech:gt.blockmetal4:13>*16, <gregtech:gt.metaitem.01:32697>*4, <gregtech:gt.metaitem.03:32125>*4, <SGCraft:sgChevronUpgrade>*4, <SGCraft:stargateRing>], null, 1000, 500000);

//SG Ring Block
recipes.remove(<SGCraft:stargateRing>);
Assembler.addRecipe(<SGCraft:stargateRing>, [<gregtech:gt.blockmetal4:13>*24, <impact:impact_item2:147>*24, <impact:impact_item2:148>*8, <impact:impact_item2:149>*3, <gregtech:gt.metaitem.01:32677>*8], null, 1000, 500000);

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
Assembler.addRecipe(<SGCraft:ic2Capacitor>, [<impact:impact_item2:148>*12, <gregtech:gt.metaitem.01:32677>*5, <gregtech:gt.metaitem.01:32605>*4], null, 1000, 500000);

//SG Iris Upgrade
recipes.remove(<SGCraft:sgIrisUpgrade>);
Assembler.addRecipe(<SGCraft:sgIrisUpgrade>, <SGCraft:sgIrisBlade>*20, <gregtech:gt.blockcasings:15>*4, null, 1000, 500000);

//SG Iris Blade
recipes.remove(<SGCraft:sgIrisBlade>);
Assembler.addRecipe(<SGCraft:sgIrisBlade>, [<gregtech:gt.blockmetal7:9>*32, <gregtech:gt.metaitem.01:32647>, <gregtech:gt.blockcasings:15>], null, 1000, 500000);

//SG Interface
recipes.remove(<SGCraft:ocInterface>);
Assembler.addRecipe(<SGCraft:ocInterface>, [<gregtech:gt.blockmetal4:13>*24, <gregtech:gt.blockcasings:15>*10, <gregtech:gt.metaitem.03:32125>*4, <OpenComputers:item:103>*16, <OpenComputers:item:90>*16, <SGCraft:stargateRing>], null, 1000, 500000);

