#======================#
# Advanced Solar Panel #
#======================#

#==================================================================#
#Imports
import mods.gregtech.Assembler;
import mods.gregtech.FluidSolidifier;
import mods.ic2.Compressor;
import mods.nei.NEI;

print("Initializing 'Adv-Sol-Panel.zs'...");

#==================================================================#
#Remove Recipes
	// --- Molecular Transformer
		recipes.remove(<AdvancedSolarPanel:BlockMolecularTransformer>);

	// --- Sunnarium
		recipes.remove(<AdvancedSolarPanel:asp_crafting_items>);

	// --- Sunnarium Alloy
		recipes.remove(<AdvancedSolarPanel:asp_crafting_items:1>);

	// --- Irradiant Uranium
		recipes.remove(<AdvancedSolarPanel:asp_crafting_items:2>);

	// --- Enriched Sunnarium
		recipes.remove(<AdvancedSolarPanel:asp_crafting_items:3>);

	// --- Enriched Sunnarium Alloy
		recipes.remove(<AdvancedSolarPanel:asp_crafting_items:4>);

	// --- Iridium Iron Plate
		recipes.remove(<AdvancedSolarPanel:asp_crafting_items:6>);

	// --- MT Core
		recipes.remove(<AdvancedSolarPanel:asp_crafting_items:12>);

	// --- Advanced Solar Helm
		recipes.remove(<AdvancedSolarPanel:advanced_solar_helmet>);

	// --- Hybrid Solar Helm
		recipes.remove(<AdvancedSolarPanel:hybrid_solar_helmet>);

	// --- Ultimate Solar Helm
		recipes.remove(<AdvancedSolarPanel:ultimate_solar_helmet>);

	// --- Irradiant Glass Panel
		recipes.remove(<AdvancedSolarPanel:asp_crafting_items:5>);

	// --- Irradiant Reinforced Plate
		recipes.remove(<AdvancedSolarPanel:asp_crafting_items:8>);

	// --- Quantum Core
		recipes.remove(<AdvancedSolarPanel:asp_crafting_items:13>);

	// --- Advanced Solar Panel
		recipes.remove(<AdvancedSolarPanel:BlockAdvSolarPanel:0>);

	// --- Hybrid Solar Panel
		recipes.remove(<AdvancedSolarPanel:BlockAdvSolarPanel:1>);

	// --- Ultimate Hybrid Solar Panel
		recipes.remove(<AdvancedSolarPanel:BlockAdvSolarPanel:2>);

	// --- Quantum Solar Panel
		recipes.remove(<AdvancedSolarPanel:BlockAdvSolarPanel:3>);

#==================================================================#
#Hand Recipes
	// --- MT Core fore Molecular Transformer
		recipes.addShaped(<AdvancedSolarPanel:asp_crafting_items:12>, [
		[<AdvancedSolarPanel:asp_crafting_items:5>, <IC2:reactorReflectorThick:1>, <AdvancedSolarPanel:asp_crafting_items:5>],
		[<ore:plateTitanium>, <ore:craftingToolWrench>, <ore:plateTitanium>],
		[<AdvancedSolarPanel:asp_crafting_items:5>, <IC2:reactorReflectorThick:1>, <AdvancedSolarPanel:asp_crafting_items:5>]]);

	// --- Iridium Iron Plate
		recipes.addShaped(<AdvancedSolarPanel:asp_crafting_items:6>, [
		[<ore:screwTantalumCarbide>, <ore:plateDoubleIncoloyDS>, <ore:screwTantalumCarbide>],
		[<GalacticraftCore:item.basicItem:11>, <ore:plateIridium>, <GalacticraftCore:item.basicItem:11>],
		[<ore:screwTantalumCarbide>, <ore:plateDoubleIncoloyDS>, <ore:screwTantalumCarbide>]]);

	// --- Advanced Solar Helm
		recipes.addShaped(<AdvancedSolarPanel:advanced_solar_helmet>, [
		[<ore:craftingToolWrench>, <AdvancedSolarPanel:BlockAdvSolarPanel>, <ore:craftingToolScrewdriver>],
		[<ore:circuitAdvanced>, <IC2:itemArmorNanoHelmet:*>, <ore:circuitAdvanced>],
		[<ore:cableGt04Grisium>, <gregtech:gt.blockmachines:22>, <ore:cableGt04Grisium>]]);

	// --- Hybrid Solar Helm
		recipes.addShaped(<AdvancedSolarPanel:hybrid_solar_helmet>, [
		[<ore:craftingToolWrench>, <AdvancedSolarPanel:BlockAdvSolarPanel:1>, <ore:craftingToolScrewdriver>],
		[<ore:circuitMaster>, <IC2:itemArmorQuantumHelmet:*>, <ore:circuitMaster>],
		[<ore:plateDoubleThallium>, <ore:cableGt04TriniumTitaniumAlloy>, <ore:plateDoubleThallium>]]);

	// --- Ultimate Solar Helm
		recipes.addShaped(<AdvancedSolarPanel:ultimate_solar_helmet>, [
		[<ore:craftingToolWrench>, <ore:craftingSolarPanelHV>, <ore:craftingToolScrewdriver>],
		[<ore:circuitUltimate>, <AdvancedSolarPanel:hybrid_solar_helmet:*>, <ore:circuitUltimate>],
		[<ore:plateDoubleThallium>, <ore:cableGt04HG1223>, <ore:plateDoubleThallium>]]);

	// --- Irradiant Glass Panel
		recipes.addShaped(<AdvancedSolarPanel:asp_crafting_items:5> * 4, [
		[<ore:glassReinforced>, <AdvancedSolarPanel:asp_crafting_items:2>, <ore:glassReinforced>],
		[<AdvancedSolarPanel:asp_crafting_items:2>, <ore:plateSelenium>, <AdvancedSolarPanel:asp_crafting_items:2>],
		[<ore:glassReinforced>, <AdvancedSolarPanel:asp_crafting_items:2>, <ore:glassReinforced>]]);

	// --- Irradiant Reinforced Iridium Plate
		recipes.addShaped(<AdvancedSolarPanel:asp_crafting_items:8>, [
		[<ore:screwPotin>, <GalacticraftCore:item.basicItem:9>, <ore:screwPotin>],
		[<GalacticraftCore:item.basicItem:9>, <AdvancedSolarPanel:asp_crafting_items:7>, <GalacticraftCore:item.basicItem:9>],
		[<ore:screwPotin>, <GalacticraftCore:item.basicItem:9>, <ore:screwPotin>]]);

	// --- Quantum Core
		recipes.addShaped(<AdvancedSolarPanel:asp_crafting_items:13>, [
		[<AdvancedSolarPanel:asp_crafting_items:4>, <ore:plateNetherStar>, <AdvancedSolarPanel:asp_crafting_items:4>],
		[<ore:plateNetherStar>, <ore:circuitInfinite>, <ore:plateNetherStar>],
		[<AdvancedSolarPanel:asp_crafting_items:4>, <ore:plateNetherStar>, <AdvancedSolarPanel:asp_crafting_items:4>]]);

	// --- Quantum Solar Panel
		recipes.addShaped(<gregtech:gt.metaitem.01:32755>, [
		[<ore:craftingToolCrowbar>, <AdvancedSolarPanel:BlockAdvSolarPanel:3>, <ore:craftingToolScrewdriver>],
		[<ore:craftingToolWrench>, <ore:craftingToolHardHammer>, <ore:craftingToolFile>]]);

#==================================================================#
#Machines Recipes
	// --- Irradiant Uranium
		Assembler.addRecipe(<AdvancedSolarPanel:asp_crafting_items:2>, <gregtech:gt.metaitem.01:11098>, <minecraft:glowstone> * 4,  600, 64);

	// --- Enriched Sunnarium
		Assembler.addRecipe(<AdvancedSolarPanel:asp_crafting_items:3>, <AdvancedSolarPanel:asp_crafting_items>, <AdvancedSolarPanel:asp_crafting_items:2> * 8, 1200, 256);

	// --- Sunnarium Alloy
		Assembler.addRecipe(<AdvancedSolarPanel:asp_crafting_items:1>, <AdvancedSolarPanel:asp_crafting_items> * 4, <IC2:itemPartIridium> * 8,  800, 480);

	// --- Enriched Sunnarium Alloy
		Assembler.addRecipe(<AdvancedSolarPanel:asp_crafting_items:4>, <AdvancedSolarPanel:asp_crafting_items:1>, <AdvancedSolarPanel:asp_crafting_items:3> * 8,  1600, 1024);

	// --- Advanced Solar Panel
		Assembler.addRecipe(<AdvancedSolarPanel:BlockAdvSolarPanel:0>, [<gregtech:gt.blockmachines:171>, <gregtech:gt.metaitem.01:32752>, <gregtech:gt.metaitem.01:32650>, <AdvancedSolarPanel:asp_crafting_items:8>, <gregtech:gt.metaitem.01:32518>, <gregtech:gt.integrated_circuit:2>*0], <liquid:molten.solderingalloy> * 288, 800, 120);
		<AdvancedSolarPanel:BlockAdvSolarPanel:0>.addTooltip(format.yellow("Day: ") + format.green("32 EU/t ") + format.darkBlue("(LV-tier)"));
		<AdvancedSolarPanel:BlockAdvSolarPanel:0>.addTooltip(format.gray("Night: ") + format.green("4 EU/t ") + format.darkBlue("(ULV-tier)"));
		
	// --- Hybrid Solar Panel
		Assembler.addRecipe(<AdvancedSolarPanel:BlockAdvSolarPanel:1>, [<gregtech:gt.blockmachines:172>, <gregtech:gt.metaitem.01:32753>, <gregtech:gt.metaitem.01:32651>, <customthings:item:113>*2, <gregtech:gt.metaitem.01:32528>, <gregtech:gt.integrated_circuit:2>*0], <liquid:molten.solderingalloy> * 576, 1000, 480);
		<AdvancedSolarPanel:BlockAdvSolarPanel:1>.addTooltip(format.yellow("Day: ") + format.green("128 EU/t ") + format.darkBlue("(MV-tier)"));
		<AdvancedSolarPanel:BlockAdvSolarPanel:1>.addTooltip(format.gray("Night: ") + format.green("16 EU/t ") + format.darkBlue("(LV-tier)"));
		
	// --- Ultimate Hybrid Solar Panel
		Assembler.addRecipe(<AdvancedSolarPanel:BlockAdvSolarPanel:2>, [<gregtech:gt.blockmachines:173>, <gregtech:gt.metaitem.01:32754>, <gregtech:gt.metaitem.01:32652>, <customthings:item:114>*3, <gregtech:gt.metaitem.01:32538>, <gregtech:gt.integrated_circuit:2>*0], <liquid:molten.solderingalloy> * 864, 1200, 1920);
		<AdvancedSolarPanel:BlockAdvSolarPanel:2>.addTooltip(format.yellow("Day: ") + format.green("512 EU/t ") + format.darkBlue("(HV-tier)"));
		<AdvancedSolarPanel:BlockAdvSolarPanel:2>.addTooltip(format.gray("Night: ") + format.green("64 EU/t ") + format.darkBlue("(MV-tier)"));
		
	// --- Quantum Solar Panel
		Assembler.addRecipe(<AdvancedSolarPanel:BlockAdvSolarPanel:3>, [<gregtech:gt.blockmachines:174>, <AdvancedSolarPanel:asp_crafting_items:5>*4, <AdvancedSolarPanel:asp_crafting_items>, <gregtech:gt.metaitem.01:32755>, <gregtech:gt.metaitem.01:32653>, <customthings:item:115>*4, <gregtech:gt.metaitem.01:32540>, <gregtech:gt.integrated_circuit:2>*0], <liquid:molten.solderingalloy> * 1152, 1400, 7860);
		<AdvancedSolarPanel:BlockAdvSolarPanel:3>.addTooltip(format.yellow("Day: ") + format.green("2048 EU/t ") + format.darkBlue("(EV-tier)"));
		<AdvancedSolarPanel:BlockAdvSolarPanel:3>.addTooltip(format.gray("Night: ") + format.green("512 EU/t ") + format.darkBlue("(HV-tier)"));
		
	// --- Sunnarium
		Compressor.addRecipe(<AdvancedSolarPanel:asp_crafting_items>, <AdvancedSolarPanel:asp_crafting_items:9>*9);

	// --- Solidifier
		FluidSolidifier.addRecipe(<AdvancedSolarPanel:asp_crafting_items:9>, <gregtech:gt.metaitem.01:32307> * 0, <liquid:molten.sunnarium> * 144, 200, 480);

#==================================================================#
#Nei
	// --- Irradiant Reinforced Iridium Plate
		NEI.overrideName(<AdvancedSolarPanel:asp_crafting_items:8>, "Irradiant Reinforced Iridium Plate");

#==================================================================#

print("Initialized 'Adv-Sol-Panel.zs'");