#=====================#
# Applied Energistics #
#=====================#

#==================================================================#
#Imports
import minetweaker.item.IItemStack;
import mods.appeng.Grinder;
import mods.gregtech.AlloySmelter;
import mods.gregtech.Assembler;
import mods.gregtech.Autoclave;
import mods.gregtech.Centrifuge;
import mods.gregtech.ChemicalBath;
import mods.gregtech.ChemicalReactor;
import mods.gregtech.CuttingSaw;
import mods.gregtech.Extruder;
import mods.gregtech.Lathe;
import mods.gregtech.Mixer;
import mods.gregtech.PrecisionLaser;
import mods.gregtech.Pulverizer;
import mods.gregtech.WireAssembler;
import mods.gregtech.Wiremill;
import mods.ic2.Compressor;
import mods.ic2.Macerator;
import mods.nei.NEI;

print("Initializing 'AE2.zs'...");

#==================================================================#
#Variables
var AdvAssembler = <gregtech:gt.blockmachines:212>;
var AdvCircuit = <ore:circuitAdvanced>;
var AdvElectrolyzer = <gregtech:gt.blockmachines:372>;
var AlCable = <ore:cableGt08Aluminium>;
var AlPlate = <ore:plateVanadiumSteel>;
var ALRod = <ore:stickTantalumCarbide>;
var AnnihilationCore = <appliedenergistics2:item.ItemMultiMaterial:44>;
var BasicCircuit = <ore:circuitBasic>;
var blockIron = <minecraft:iron_block>;
var CalculationCircuit = <appliedenergistics2:item.ItemMultiMaterial:16>;
var CCertusQuartz = <appliedenergistics2:item.ItemMultiMaterial:1>;
var CCrtusQBlock = <appliedenergistics2:tile.BlockQuartzChiseled>;
var CertusCircuit = <appliedenergistics2:item.ItemMultiMaterial:23>;
var CertusPlate = <gregtech:gt.metaitem.01:17516>;
var CertusQBlock = <appliedenergistics2:tile.BlockQuartz>;
var CertusQuartz = <ore:gemCertusQuartz>;
var CertusRod = <ore:stickCertusQuartz>;
var CertusScrew = <ore:screwCertusQuartz>;
var Charger = <appliedenergistics2:tile.BlockCharger>;
var ClearGlass = <EnderIO:blockFusedQuartz:1>;
var ClearPane = <gregtech:gt.metaitem.01:17890>;
var CopperCable = <ore:cableGt01Copper>;
var craftingTable = <minecraft:crafting_table>;
val CraftingStorage_1k = <appliedenergistics2:tile.BlockCraftingStorage>;
val CraftingStorage_4k = <appliedenergistics2:tile.BlockCraftingStorage:1>;
val CraftingStorage_16k = <appliedenergistics2:tile.BlockCraftingStorage:2>;
val CraftingStorage_64k = <appliedenergistics2:tile.BlockCraftingStorage:3>;
var CraftingTerminal = <appliedenergistics2:item.ItemMultiPart:360>;
var CrystalAccelerator = <appliedenergistics2:tile.BlockQuartzGrowthAccelerator>;
//var DataCircuit = <gregtech:gt.metaitem.01:32704>;
var DEnergyCell = <appliedenergistics2:tile.BlockDenseEnergyCell>;
var DenseSteel = <gregtech:gt.metaitem.01:22305>;
var DiamondCircuit = <appliedenergistics2:item.ItemMultiMaterial:24>;
var EFlow = <gregtech:gt.metaitem.01:32706>;
var EnderEyePlate = <ore:plateGrisium>;
var EnderEyeRod = <ore:stickGrisium>;
var EnderPearl = <ore:gemEnderPearl>;
var EnergyCell = <appliedenergistics2:tile.BlockEnergyCell>;
var EVBatBuffer = <gregtech:gt.blockmachines:194>;
var FluixBlock = <appliedenergistics2:tile.BlockFluix>;
var FluixCoveredC = <appliedenergistics2:item.ItemMultiPart:36>;
var FluixCrystal = <appliedenergistics2:item.ItemMultiMaterial:7>;
var FluixDenseCable = <appliedenergistics2:item.ItemMultiPart:76>;
var FluixDust = <appliedenergistics2:item.ItemMultiMaterial:8>;
var FluixGlassCable = <appliedenergistics2:item.ItemMultiPart:16>;
var FluixPearl = <appliedenergistics2:item.ItemMultiMaterial:9>;
var FluixSmartCable = <appliedenergistics2:item.ItemMultiPart:56>;
var FormationCore = <appliedenergistics2:item.ItemMultiMaterial:43>;
var gemCertusQuartz = <ore:gemCertusQuartz>;
var GlassPlate = <ore:plateGlass>;
var GlowstoneDust = <ore:dustGlowstone>;
var GlowstonePlate = <ore:plateGlowstone>;
var GoldCircuit = <appliedenergistics2:item.ItemMultiMaterial:22>;
var GoodCircuit = <ore:circuitGood>;
var HHammer = <ore:craftingToolHardHammer>;
var HVMachineHull = <gregtech:gt.blockmachines:12>;
var Illuminated = <appliedenergistics2:item.ItemMultiPart:180>;
var Interface = <appliedenergistics2:item.ItemMultiPart:440>;
var InterfaceTerminal = <appliedenergistics2:item.ItemMultiPart:480>;
var IronRod = <ore:stickIron>;
var ITNT = <IC2:blockITNT>;
//var lensAer = <gregtech:gt.metaitem.01:24540>;
//var lensAqua = <gregtech:gt.metaitem.01:24543>;
var lensBlueTopaz = <gregtech:gt.metaitem.01:24513>;
var lensDiamond = <gregtech:gt.metaitem.01:24500>;
var lensDilithium = <gregtech:gt.metaitem.01:24515>;
var lensEmerald = <gregtech:gt.metaitem.01:24501>;
var lensGlass = <gregtech:gt.metaitem.01:24890>;
var lensGreenSapphire = <gregtech:gt.metaitem.01:24504>;
var lensOpal = <gregtech:gt.metaitem.01:24510>;
//var lensOrdo = <gregtech:gt.metaitem.01:24545>;
var lensSapphire = <gregtech:gt.metaitem.01:24503>;
//var lensTerra = <gregtech:gt.metaitem.01:24542>;
var lensYellowGarnet = <gregtech:gt.metaitem.01:24528>;
var LightDetector = <appliedenergistics2:tile.BlockLightDetector>;
var MEChest = <appliedenergistics2:tile.BlockChest>;
var MEConduit = <EnderIO:itemMEConduit>;
var MEController = <appliedenergistics2:tile.BlockController>;
var MEDrive = <appliedenergistics2:tile.BlockDrive>;
var MolecularAssembler = <appliedenergistics2:tile.BlockMolecularAssembler>;
var moltenChlorine = <liquid:chlorine>;
var MSteelRod = <ore:stickSteelMagnetic>;
var NANDChip = <gregtech:gt.metaitem.01:32700>;
var NetherQBlock = <minecraft:quartz_block>;
var NetworkTool = <appliedenergistics2:item.ToolNetworkTool>;
var NQuartzPlate = <gregtech:gt.metaitem.01:17522>;
var NQuartzRod = <ore:stickNetherQuartz>;
var NQuartzScrew = <ore:screwNetherQuartz>;
var Pattern = <appliedenergistics2:item.ItemMultiMaterial:52>;
var PatternTerminal = <appliedenergistics2:item.ItemMultiPart:340>;
var pistonSticky = <minecraft:sticky_piston>;
var plateSteel = <ore:plateSteel>;
var PlatinumCable = <ore:cableGt04Platinum>;
var PortableCell = <appliedenergistics2:item.ToolPortableCell>;
var pressCalculation = <appliedenergistics2:item.ItemMultiMaterial:13>;
var pressEngineering = <appliedenergistics2:item.ItemMultiMaterial:14>;
var pressLogic = <appliedenergistics2:item.ItemMultiMaterial:15>;
var pressSilicon = <appliedenergistics2:item.ItemMultiMaterial:19>;
var PureCertusQCrystal = <appliedenergistics2:item.ItemMultiMaterial:10>;
var PureFluixCrystal = <appliedenergistics2:item.ItemMultiMaterial:12>;
var PureNetherQCrystal = <appliedenergistics2:item.ItemMultiMaterial:11>;
var QuartzFiber = <appliedenergistics2:item.ItemMultiPart:140>;
var QuartzFixture = <appliedenergistics2:tile.BlockQuartzTorch>;
var QuartzGlass = <appliedenergistics2:tile.BlockQuartzGlass>;
var Quartzite = <ore:gemQuartzite>;
var QuartzitePlate = <gregtech:gt.metaitem.01:17523>;
var QuartziteScrew = <ore:screwQuartzite>;
var RubberPlate = <ore:plateRubber>;
var Saw = <ore:craftingToolSaw>;
var Screwdriver = <ore:craftingToolScrewdriver>;
var SHammer = <ore:craftingToolSoftHammer>;
var SiliconPlate = <gregtech:gt.metaitem.01:17020>;
var SiliconRod = <ore:stickSilicon>;
var StainlessPlate = <ore:plateStainlessSteel>;
var SteelPlate = <ore:plateSteel>;
var Storage1K = <appliedenergistics2:item.ItemBasicStorageCell.1k>;
var Storage4K = <appliedenergistics2:item.ItemBasicStorageCell.4k>;
var Storage16K = <appliedenergistics2:item.ItemBasicStorageCell.16k>;
var Storage64K = <appliedenergistics2:item.ItemBasicStorageCell.64k>;
var StorageComponent1K = <appliedenergistics2:item.ItemMultiMaterial:35>;
var StorageComponent4K = <appliedenergistics2:item.ItemMultiMaterial:36>;
var StorageComponent16K = <appliedenergistics2:item.ItemMultiMaterial:37>;
var StorageComponent64K = <appliedenergistics2:item.ItemMultiMaterial:38>;
var Terminal = <appliedenergistics2:item.ItemMultiPart:380>;
var TinyTNT = <appliedenergistics2:tile.BlockTinyTNT>;
var TitaniumPlate = <ore:plateDoubleVanadium>;
var VibrantQGlass =<appliedenergistics2:tile.BlockQuartzLamp>;
var WirelessReceiver = <appliedenergistics2:item.ItemMultiMaterial:41>;
var WirelessTerminal = <appliedenergistics2:item.ToolWirelessTerminal>;
var YetaWrench = <EnderIO:itemYetaWrench>;
var CardBasic = <appliedenergistics2:item.ItemMultiMaterial:25>;
var CardAdvanced = <appliedenergistics2:item.ItemMultiMaterial:28>;
var ProcCalc = <appliedenergistics2:item.ItemMultiMaterial:23>;
var ProcLogic = <appliedenergistics2:item.ItemMultiMaterial:22>;
var ProcEng = <appliedenergistics2:item.ItemMultiMaterial:24>;
var mEuropuim = <liquid:molten.europium>;
var mAmericium = <liquid:molten.americium>;
var mPlatinum = <liquid:molten.platinum>;
var RAMchip = <gregtech:gt.metaitem.03:32039>;
var SoCchip = <gregtech:gt.metaitem.03:32047>;
var ASoCchip = <gregtech:gt.metaitem.03:32049>;
var water = <liquid:water>;
var distwater = <liquid:ic2distilledwater>;
var moltenRedstone = <liquid:molten.redstone>;

#==================================================================#
#OreDictionary Fix ---

<ore:itemCertusQuartz>.remove(PureNetherQCrystal);
<ore:itemCertusQuartz>.add(PureCertusQCrystal);
<ore:itemNetherQuartz>.remove(PureCertusQCrystal);
<ore:itemNetherQuartz>.add(PureNetherQCrystal);

<ore:itemNetherQuartz>.remove(CCertusQuartz);
<ore:itemCertusQuartz>.remove(CCertusQuartz);
//<ore:craftingQuartz>.remove(CCertusQuartz);

#==================================================================#
#Removing Recipes
#Blocks
// --- Fluix Block
recipes.remove(FluixBlock);

// --- Certus Quartz Block
recipes.remove(CertusQBlock);

// --- Chiseled Certus Quartz Block
recipes.remove(CCrtusQBlock);

// --- Crystal Growth Accelerator
recipes.remove(CrystalAccelerator);

// --- Charger
recipes.remove(Charger);

// --- Cell Workbench
recipes.remove(<appliedenergistics2:tile.BlockCellWorkbench>);

// --- ME IO Port
recipes.remove(<appliedenergistics2:tile.BlockIOPort>);

// --- Matter Condenser
recipes.remove(<appliedenergistics2:tile.BlockCondenser>);

// --- ME Security Terminal
recipes.remove(<appliedenergistics2:tile.BlockSecurity>);

recipes.remove(<appliedenergistics2:tile.BlockSkyCompass>);

#Items
// --- Fluix Glass Cable
recipes.remove(FluixGlassCable);

// --- Fluix Covered Cable
recipes.remove(FluixCoveredC);

// --- Fluix Crystal
recipes.remove(FluixCrystal);

// --- Fluix Dense Cable
recipes.remove(FluixDenseCable);

// --- Fluix SmartCable
recipes.remove(FluixSmartCable);

// --- Pure Fluix Crystal
recipes.remove(PureFluixCrystal);

// --- Fluix Pearl
recipes.remove(FluixPearl);

// --- Wireless Receiver
recipes.remove(WirelessReceiver);

// --- Terminal
recipes.remove(Terminal);

// --- Crafting Terminal
recipes.remove(CraftingTerminal);

// --- Interface Terminal
recipes.remove(InterfaceTerminal);

// --- Pattern Terminal
recipes.remove(PatternTerminal);

// --- Storage Monitor
recipes.remove(<appliedenergistics2:item.ItemMultiPart:400>);

// --- Wireless Terminal
recipes.remove(WirelessTerminal);

// --- Quartz Glass
recipes.remove(QuartzGlass);

// --- Vibrant Quartz Glass
recipes.remove(VibrantQGlass);

// --- Charged Quartz Fixture
recipes.remove(QuartzFixture);

// --- Light Detecting Fixture
recipes.remove(LightDetector);

// --- Tiny TNT
recipes.remove(TinyTNT);

// --- Advanced Card
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:28>);

// --- Card Upgrade
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:54>);

// --- Basic Card
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:25>);

// --- Capacity Card
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:27>);

// --- Crafting Card
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:53>);

// --- Redstone Card
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:26>);

// --- Fuzzy Card
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:29>);

// --- Inverter Card
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:31>);

// --- Acceleration Card
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:30>);

// --- Wireless Booster
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:42>);

// --- ME Annihilation Plane
recipes.remove(<appliedenergistics2:item.ItemMultiPart:300>);

// --- Cable Anchor
recipes.remove(<appliedenergistics2:item.ItemMultiPart:120>);

// --- ME Formation Plane
recipes.remove(<appliedenergistics2:item.ItemMultiPart:320>);

// --- ME Toggle Bus
recipes.remove(<appliedenergistics2:item.ItemMultiPart:80>);

// --- Matter Cannon
recipes.remove(<appliedenergistics2:item.ToolMassCannon>);

// --- Memory Card
recipes.remove(<appliedenergistics2:item.ToolMemoryCard>);

// --- Charged Stuff
recipes.remove(<appliedenergistics2:item.ToolChargedStaff>);

// --- ME Conversion Monitor
recipes.remove(<appliedenergistics2:item.ItemMultiPart:420>);

// --- Dark Illuminated Panel
recipes.remove(<appliedenergistics2:item.ItemMultiPart:200>);

// --- Entropy Manipulator
recipes.remove(<appliedenergistics2:item.ToolEntropyManipulator>);

// --- Level Emitter
recipes.remove(<appliedenergistics2:item.ItemMultiPart:280>);

// --- Bright Illuminated Panel
recipes.remove(<appliedenergistics2:item.ItemMultiPart:160>);


// --- Color Applicator
recipes.remove(<appliedenergistics2:item.ToolColorApplicator>);

// --- Biometric Card
recipes.remove(<appliedenergistics2:item.ToolBiometricCard>);

// --- Certus Quartz Seed
recipes.remove(<appliedenergistics2:item.ItemCrystalSeed>);

// --- Nether Quartz Seed
recipes.remove(<appliedenergistics2:item.ItemCrystalSeed:600>);

// --- Fluix Seed
recipes.remove(<appliedenergistics2:item.ItemCrystalSeed:1200>);

// --- Nether Quartz Block
recipes.remove(NetherQBlock);

#==================================================================#
# Adding Recipes
#Blocks
// --- Charger
recipes.addShaped(Charger, [
		[TitaniumPlate,<gregtech:gt.metaitem.01:32683>,TitaniumPlate],
		[<OpenComputers:charger>,<ore:craftingToolWrench>],
		[TitaniumPlate,<gregtech:gt.metaitem.01:32683>,TitaniumPlate]
	]
);
// --- ME Interface
recipes.addShapeless(<appliedenergistics2:tile.BlockInterface>, [Interface]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:440>, [<appliedenergistics2:tile.BlockInterface>]);
// --- ME Conversion Monitor
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:420>, [
		[Screwdriver, <appliedenergistics2:item.ItemMultiPart:400>, HHammer],
		[CertusScrew, <appliedenergistics2:item.ItemMultiMaterial:43>, CertusScrew],
		[NQuartzPlate, <appliedenergistics2:item.ItemMultiMaterial:44>, NQuartzPlate]
	]
);
// --- Cell Workbench
recipes.addShaped(<appliedenergistics2:tile.BlockCellWorkbench>, [
		[<ore:circuitAdvanced>, <gregtech:gt.metaitem.01:32740>, <ore:circuitAdvanced>],
		[<ore:plateVanadium>, <appliedenergistics2:tile.BlockChest>, <ore:plateVanadium>]
	]
);
// --- ME IO Port
recipes.addShaped(<appliedenergistics2:tile.BlockIOPort>, [
		[CertusCircuit, <appliedenergistics2:item.ItemMultiPart:480>, CertusCircuit],
		[<appliedenergistics2:item.ItemMultiMaterial:37>, <appliedenergistics2:tile.BlockDrive>, <appliedenergistics2:item.ItemMultiMaterial:37>],
		[<ore:plateVanadium>, <appliedenergistics2:item.ItemMultiPart:76>, <ore:plateVanadium>]
	]
);
// --- Matter Condenser
recipes.addShaped(<appliedenergistics2:tile.BlockCondenser>, [
		[AlPlate, <gregtech:gt.metaitem.01:32641>, AlPlate],
		[<gregtech:gt.metaitem.01:32641>, <gregtech:gt.blockmachines:12>, <gregtech:gt.metaitem.01:32641>],
		[AlPlate, <gregtech:gt.metaitem.01:32641>, AlPlate]
	]
);  
// --- ME Security Terminal
recipes.addShaped(<appliedenergistics2:tile.BlockSecurity>, [
		[AlPlate, <appliedenergistics2:tile.BlockChest>, AlPlate],
		[FluixGlassCable, StorageComponent16K, FluixGlassCable],
		[<ore:plateVanadiumSteel>, DiamondCircuit, <ore:plateVanadiumSteel>]
	]
);
// --- Meteorite Compass
recipes.addShaped(<appliedenergistics2:tile.BlockSkyCompass>, [
		[Screwdriver, ClearPane, CertusScrew],
		[SteelPlate, MSteelRod, SteelPlate],
		[CertusScrew, SteelPlate, HHammer]
	]
);
// - 
recipes.addShaped(<appliedenergistics2:tile.BlockSkyCompass>, [
		[HHammer, ClearPane, CertusScrew],
		[SteelPlate, MSteelRod, SteelPlate],
		[CertusScrew, SteelPlate, Screwdriver]
	]
);
// --- Network Tool
recipes.addShaped(NetworkTool, [
		[YetaWrench, <ore:itemIlluminatedPanel>, CertusCircuit],
		[<minecraft:chest>, null, null],
		[null, null, null]
	]
);

#==================================================================#
// --- Fluix Pearl
recipes.addShaped(FluixPearl, [
		[PureFluixCrystal, EnderEyePlate, PureFluixCrystal],
		[EnderEyePlate, EnderPearl, EnderEyePlate],
		[PureFluixCrystal, EnderEyePlate, PureFluixCrystal]
	]
);
// - 
recipes.addShaped(FluixPearl, [
		[FluixCrystal, EnderEyePlate, FluixCrystal],
		[EnderEyePlate, EnderPearl, EnderEyePlate],
		[FluixCrystal, EnderEyePlate, FluixCrystal]
	]
);
// --- Wireless Receiver
recipes.addShaped(WirelessReceiver, [
		[QuartzFiber, FluixPearl, QuartzFiber],
		[<ore:plateVanadiumSteel>, EnderEyeRod, <ore:plateVanadiumSteel>],
		[CertusPlate, AdvCircuit, CertusPlate]
	]
);
// --- Terminal
recipes.addShaped(Terminal, [
[NQuartzRod, QuartziteScrew, NQuartzRod],
[Illuminated, GoodCircuit, CertusPlate],
[NQuartzRod, Screwdriver, NQuartzRod]]);
// - 
recipes.addShaped(Terminal, [
[NQuartzRod, Screwdriver, NQuartzRod],
[Illuminated, GoodCircuit, CertusPlate],
[NQuartzRod, QuartziteScrew, NQuartzRod]]);

// --- Crafting Terminal
recipes.addShaped(CraftingTerminal, [
[Screwdriver, Terminal, SHammer],
[CertusScrew, <gregtech:gt.metaitem.01:32744>, CertusScrew],
[NQuartzPlate, DiamondCircuit, NQuartzPlate]]);

// --- Interface Terminal
recipes.addShaped(InterfaceTerminal, [
[Screwdriver, Terminal, SHammer],
[CertusScrew, Interface, CertusScrew],
[NQuartzPlate, DiamondCircuit, NQuartzPlate]]);

// --- Pattern Terminal
recipes.addShaped(PatternTerminal, [
[Screwdriver, Terminal, SHammer],
[CertusScrew, Pattern, CertusScrew],
[NQuartzPlate, DiamondCircuit, NQuartzPlate]]);

// --- Storage Monitor
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:400>, [
		[Screwdriver, <ore:itemIlluminatedPanel>, HHammer],
		[CertusScrew, <appliedenergistics2:item.ItemMultiPart:280>, CertusScrew],
		[NQuartzPlate, NQuartzPlate, NQuartzPlate]
	]
);
// --- Wireless Terminal
recipes.addShaped(WirelessTerminal, [
		[WirelessReceiver, Terminal, WirelessReceiver],
		[<ore:plateVanadiumSteel>, DiamondCircuit, <ore:plateVanadiumSteel>],
		[<ore:plateVanadiumSteel>, DEnergyCell, <ore:plateVanadiumSteel>]
	]
);
// --- Vibrant Quartz Glass
recipes.addShaped(VibrantQGlass, [
		[GlowstoneDust, GlowstonePlate, GlowstoneDust],
		[GlowstonePlate, QuartzGlass, GlowstonePlate],
		[GlowstoneDust, GlowstonePlate, GlowstoneDust]
	]
);
// --- Charged Quartz Fixture
recipes.addShapeless(QuartzFixture, [CertusQuartz, ALRod]);

// --- Light Detecting Fixture
recipes.addShapeless(LightDetector, [CCertusQuartz, IronRod]);

// --- Advanced Card
recipes.addShaped(CardAdvanced, [
		[<ore:platePlatinum>, AlPlate, <ore:screwTitanium>],
		[<ore:plateRedAlloy>, CertusCircuit, AlPlate],
		[<ore:platePlatinum>, AlPlate, <ore:screwTitanium>]
	]
);
// --- Basic Card
recipes.addShaped(CardBasic, [
		[<ore:plateGold>, AlPlate, <ore:screwStainlessSteel>],
		[<ore:plateRedAlloy>, CertusCircuit, AlPlate],
		[<ore:plateGold>, AlPlate, <ore:screwStainlessSteel>]
	]
);
// --- Capacity Card
recipes.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:27>,
	[CardBasic, ProcCalc,
	 ProcCalc, CCertusQuartz]);

// --- Card Upgrade
recipes.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:54>,
	[CardAdvanced, ProcCalc,
	 ProcCalc, CCertusQuartz]);

// --- Crafting Card
recipes.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:53>,
	[CardBasic, ProcCalc,
	 ProcCalc, <ore:craftingWorkBench>]);

// --- Redstone Card
recipes.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:26>,
	[CardBasic, <ore:craftingRedstoneTorch>,
	 <ore:craftingRedstoneTorch>, CertusCircuit]);

// --- Fuzzy Card
recipes.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:29>,
	[CardAdvanced, DiamondCircuit,
	 GoldCircuit, CertusCircuit]);

// --- Inverter Card
recipes.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:31>,
	[CardAdvanced, <IC2:upgradeModule:5>,
	 <IC2:upgradeModule:5>, CertusCircuit]);

// --- Acceleration Card
recipes.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:30>,
	[CardAdvanced, DiamondCircuit,
	 GoldCircuit, FluixCrystal]);

// --- Wireless Booster
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:42>, [
		[FluixDust, <ore:gemCertusQuartz>, <ore:plateEnderPearl>],
		[AlPlate, AlPlate, AlPlate],
		[null, null, null]
	]
);
// --- ME Annihilation Plane
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:300>, [
		[FluixDust, FluixDust, FluixDust],
		[AlPlate, <appliedenergistics2:item.ItemMultiMaterial:44>, AlPlate],
		[null, null, null]
	]
);

// --- Cable Anchor
Extruder.addRecipe(<appliedenergistics2:item.ItemMultiPart:120>, <gregtech:gt.metaitem.01:26032>, <gregtech:gt.metaitem.01:32351> * 0, 60, 24);
/*
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotIron>]);
// -
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotCopper>]);
// -
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 3, [<ore:craftingToolKnife>, <ore:ingotBronze>]);
// -
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotTin>]);
// -
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotIron>]);
// -
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 4, [<ore:craftingToolKnife>, <ore:ingotSteel>]);
// -
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 4, [<ore:craftingToolKnife>, <ore:ingotAluminium>]);
// -
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotLead>]);
// -
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotNickel>]);
// -
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 2, [<ore:craftingToolKnife>, <ore:ingotSilver>]);
// -
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 3, [<ore:craftingToolKnife>, <ore:ingotBrass>]);
// -
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:120> * 3, [<ore:craftingToolKnife>, <ore:ingotInvar>]);
*/

// --- ME Formation Plane
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:320>, [
		[FluixDust, FluixDust, FluixDust],
		[AlPlate, <appliedenergistics2:item.ItemMultiMaterial:43>, AlPlate],
		[null, null, null]
	]
);
// --- Illuminated Panel
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:180>, 
		[<appliedenergistics2:item.ItemMultiPart:200>]);

// --- ME Toggle Bus
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:80>, [
		[null, <ore:plateRedAlloy>, null],
		[FluixGlassCable, <minecraft:lever>, FluixGlassCable],
		[null, <ore:plateRedAlloy>, null]
	]
);
// -
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:100>, [<appliedenergistics2:item.ItemMultiPart:80>]);

// --- ME Inverted Toggle Bus
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:80>, [<appliedenergistics2:item.ItemMultiPart:100>]);
 
// --- Matter Cannon
recipes.addShaped(<appliedenergistics2:item.ToolMassCannon>, [
		[AlPlate, AlPlate, <appliedenergistics2:item.ItemMultiMaterial:43>],
		[<appliedenergistics2:item.ItemMultiMaterial:38>, <appliedenergistics2:tile.BlockDenseEnergyCell>, null],
		[AlPlate, null, null]
	]
);
// --- Memory Card
recipes.addShaped(<appliedenergistics2:item.ToolMemoryCard>, [
		[CertusCircuit, AlPlate, AlPlate],
		[<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>],
		[null, null, null]
	]
);
// --- Color Applicator
recipes.addShaped(<appliedenergistics2:item.ToolColorApplicator>, [
		[<ore:wireGt01Aluminium>, <appliedenergistics2:item.ItemMultiMaterial:43>, <ore:wireGt01Aluminium>],
		[StorageComponent1K, <appliedenergistics2:tile.BlockEnergyCell>, <appliedenergistics2:item.ItemMultiMaterial:23>],
		[null, <ore:stickSteel>, null]
	]
);
// --- Biometric Card
recipes.addShaped(<appliedenergistics2:item.ToolBiometricCard>, [
		[DiamondCircuit, AlPlate, AlPlate],
		[<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>],
		[null, null, null]
	]
);

#==================================================================#
// --- Dark Illuminated Panel
Assembler.addRecipe(<appliedenergistics2:item.ItemMultiPart:200>, <appliedenergistics2:item.ItemMultiPart:180>, <gregtech:gt.integrated_circuit:2> * 0, 100, 4);

// --- Level Emitter
Assembler.addRecipe(<appliedenergistics2:item.ItemMultiPart:280>, <minecraft:redstone_torch>, <appliedenergistics2:item.ItemMultiMaterial:23>, 200, 30);

// --- Bright Illuminated Panel
Assembler.addRecipe(<appliedenergistics2:item.ItemMultiPart:160>, <appliedenergistics2:item.ItemMultiPart:180>, <gregtech:gt.integrated_circuit:3> * 0, 100, 4);

#==================================================================#
#Cells

// --- Portable Cell
recipes.remove(PortableCell);
recipes.addShapeless(PortableCell, [MEChest, Storage1K, DEnergyCell]);

#==================================================================#
#Alloy Smelter Recipes
// --- Quartz Glass
AlloySmelter.addRecipe(<appliedenergistics2:tile.BlockQuartzGlass>, <minecraft:glass>, <gregtech:gt.metaitem.01:2516>, 100, 16);
AlloySmelter.addRecipe(<appliedenergistics2:tile.BlockQuartzGlass>, <minecraft:glass>, <gregtech:gt.metaitem.01:2522>, 100, 16);

#==================================================================#
#Centrifuge Recipe
// --- Tiny TNT
Centrifuge.addRecipe([TinyTNT, TinyTNT], ITNT, 0, 600);

#==================================================================#
#Chemical Reactor Recipes
// --- Seeds
ChemicalReactor.addRecipe(<appliedenergistics2:item.ItemCrystalSeed> * 2, <gregtech:gt.metaitem.01:2516>, <minecraft:sand>, 100);
ChemicalReactor.addRecipe(<appliedenergistics2:item.ItemCrystalSeed> * 2, <gregtech:gt.metaitem.01:2516>, <minecraft:sand:1>, 100);
// -
ChemicalReactor.addRecipe(<appliedenergistics2:item.ItemCrystalSeed:600> * 2, <gregtech:gt.metaitem.01:2522>, <minecraft:sand>, 100);
ChemicalReactor.addRecipe(<appliedenergistics2:item.ItemCrystalSeed:600> * 2, <gregtech:gt.metaitem.01:2522>, <minecraft:sand:1>, 100);
// -
ChemicalReactor.addRecipe(<appliedenergistics2:item.ItemCrystalSeed:1200> * 2, <appliedenergistics2:item.ItemMultiMaterial:8>, <minecraft:sand>, 100);
ChemicalReactor.addRecipe(<appliedenergistics2:item.ItemCrystalSeed:1200> * 2, <appliedenergistics2:item.ItemMultiMaterial:8>, <minecraft:sand:1>, 100);

#==================================================================#
#Compressor Recipe
// --- Fluix Block ---
Compressor.addRecipe(FluixBlock, FluixCrystal * 4);

#==================================================================#
#Macerator Recipe
// --- Fluix Dust
Macerator.addRecipe(FluixDust * 4, <appliedenergistics2:tile.BlockFluix>);

#==================================================================#
// --- AE2 Presses ---

// Silicon Press
PrecisionLaser.addRecipe(pressSilicon, lensGlass * 0, DenseSteel, 6000, 480);
//PrecisionLaser.addRecipe(pressSilicon, lensOrdo * 0, DenseSteel, 6000, 480);
PrecisionLaser.addRecipe(pressSilicon, lensDiamond * 0, DenseSteel, 6000, 480);
PrecisionLaser.addRecipe(pressSilicon, lensDilithium * 0, DenseSteel, 6000, 480);
// Logic Press
PrecisionLaser.addRecipe(pressLogic, lensGreenSapphire * 0, DenseSteel, 6000, 480);
PrecisionLaser.addRecipe(pressLogic, lensEmerald * 0, DenseSteel, 6000, 480);
//PrecisionLaser.addRecipe(pressLogic, lensTerra * 0, DenseSteel, 6000, 480);
// Engineering Press
//PrecisionLaser.addRecipe(pressEngineering, lensAer * 0, DenseSteel, 6000, 480);
PrecisionLaser.addRecipe(pressEngineering, lensYellowGarnet * 0, DenseSteel, 6000, 480);
// Calculation Press
PrecisionLaser.addRecipe(pressCalculation, lensOpal * 0, DenseSteel, 6000, 480);
PrecisionLaser.addRecipe(pressCalculation, lensSapphire * 0, DenseSteel, 6000, 480);
//PrecisionLaser.addRecipe(pressCalculation, lensAqua * 0, DenseSteel, 6000, 480);
PrecisionLaser.addRecipe(pressCalculation, lensBlueTopaz * 0, DenseSteel, 6000, 480);

#==================================================================#
#Assembler Recipes
Assembler.addRecipe(FluixGlassCable * 2, <appliedenergistics2:item.ItemMultiPart:140> * 2, FluixDust * 3, null, 200, 96);
WireAssembler.addRecipe(FluixCoveredC, [FluixGlassCable, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.silicone> * 72, 100, 8);
WireAssembler.addRecipe(FluixCoveredC, [FluixGlassCable, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(FluixCoveredC, [FluixGlassCable, <ore:dustSmallPolyvinylChloride>], <liquid:molten.styrenebutadienerubber> * 36, 100, 8);
WireAssembler.addRecipe(FluixCoveredC, [FluixGlassCable, <ore:dustSmallPolydimethylsiloxane>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(FluixCoveredC, [FluixGlassCable, <ore:dustSmallPolyvinylChloride>], <liquid:molten.silicone> * 36, 100, 8);
WireAssembler.addRecipe(FluixCoveredC, [FluixGlassCable, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.styrenebutadienerubber> * 108, 100, 8);
WireAssembler.addRecipe(FluixCoveredC, [FluixGlassCable, <gregtech:gt.integrated_circuit:24>*0], <liquid:molten.rubber> * 144, 100, 8);
WireAssembler.addRecipe(FluixDenseCable, [FluixSmartCable * 4, <ore:foilVanadium>*2, <ore:wireFineEnergeticAlloy>*2], null, 200, 480);
WireAssembler.addRecipe(FluixSmartCable, [<ore:foilSilicon>*2, <ore:wireFineRedAlloy>, <ore:wireFineElectrum>, FluixCoveredC], null, 100, 120);

#==================================================================#
//Inscriber.removeRecipe(<*>);
recipes.remove(<appliedenergistics2:tile.BlockInscriber>);

Grinder.removeRecipe(<*>);
recipes.remove(<appliedenergistics2:tile.BlockGrinder>);

recipes.remove(<appliedenergistics2:tile.BlockCrank>);


//Removing inscriber all recipes except for name press (� Infitech2)
//Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:15>);
//Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:13>);
//Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:14>);
//Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:19>);
//Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:18>);
//Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:16>);
//Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:17>);
//Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:20>);
//Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:22>);
//Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:23>);
//Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:24>);

#==================================================================#
#Cutting Recipes
//Quartz Plate
//CuttingSaw.addRecipe([plank * 4], CertusQBlock, <liquid:water> * 5, 400, 8);
CuttingSaw.addRecipe([CertusPlate * 4], CertusQBlock, null, 800, 30);
CuttingSaw.addRecipe([NQuartzPlate * 4], NetherQBlock, null, 800, 30);

#==================================================================#
// Spatial storage fix
recipes.addShapeless(<appliedenergistics2:item.ItemSpatialStorageCell.2Cubed>, [<appliedenergistics2:item.ItemSpatialStorageCell.2Cubed>]);
recipes.addShapeless(<appliedenergistics2:item.ItemSpatialStorageCell.16Cubed>, [<appliedenergistics2:item.ItemSpatialStorageCell.16Cubed>]);
recipes.addShapeless(<appliedenergistics2:item.ItemSpatialStorageCell.128Cubed>, [<appliedenergistics2:item.ItemSpatialStorageCell.128Cubed>]);

#==================================================================#
// Pure Crystal Lathe Recipies
//Lathe.addRecipe([output1, output2], input, durationTicks, euPerTick);
Lathe.addRecipe([<gregtech:gt.metaitem.01:23516>], <appliedenergistics2:item.ItemMultiMaterial:10>, 98, 16);
Lathe.addRecipe([<gregtech:gt.metaitem.01:23522>], <appliedenergistics2:item.ItemMultiMaterial:11>, 98, 16);

#==================================================================#
// add saw to slabs recipes
var blocks = [
	<appliedenergistics2:tile.ChiseledQuartzSlabBlock.double>,
	<appliedenergistics2:tile.QuartzPillarSlabBlock.double>,
	<appliedenergistics2:tile.BlockQuartz>
] as IItemStack[];
var slabs = [
	<appliedenergistics2:tile.ChiseledQuartzSlabBlock>,
	<appliedenergistics2:tile.QuartzPillarSlabBlock>,
	<appliedenergistics2:tile.QuartzSlabBlock>
] as IItemStack[];
for i, slab in slabs {
	//recipes.removeShaped(slab * 6);
	recipes.remove(slab);
	recipes.addShaped(slab * 2, [[<ore:craftingToolSaw>, blocks[i]]]);
}
#==================================================================#

print("Initialized 'AE2.zs'");