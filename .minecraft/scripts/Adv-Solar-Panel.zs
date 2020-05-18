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
	recipes.addShapeless(<impact:BlockAdvSolarPanel:1>, [<AdvancedSolarPanel:BlockAdvSolarPanel>]);
	recipes.addShapeless(<impact:BlockAdvSolarPanel:2>, [<AdvancedSolarPanel:BlockAdvSolarPanel:1>]);
	recipes.addShapeless(<impact:BlockAdvSolarPanel:3>, [<AdvancedSolarPanel:BlockAdvSolarPanel:2>]);
	recipes.addShapeless(<impact:BlockAdvSolarPanel:4>, [<AdvancedSolarPanel:BlockAdvSolarPanel:3>]);
	<impact:BlockAdvSolarPanel:0>.addTooltip(format.yellow("Day: ") + format.green("8 EU/t ") + format.darkBlue("(ULV-tier)"));
	<impact:BlockAdvSolarPanel:0>.addTooltip(format.gray("Night: ") + format.green("1 EU/t ") + format.darkBlue("(ULV-tier)"));
	<impact:BlockAdvSolarPanel:1>.addTooltip(format.yellow("Day: ") + format.green("32 EU/t ") + format.darkBlue("(LV-tier)"));
	<impact:BlockAdvSolarPanel:1>.addTooltip(format.gray("Night: ") + format.green("4 EU/t ") + format.darkBlue("(ULV-tier)"));
	<impact:BlockAdvSolarPanel:2>.addTooltip(format.yellow("Day: ") + format.green("128 EU/t ") + format.darkBlue("(MV-tier)"));
	<impact:BlockAdvSolarPanel:2>.addTooltip(format.gray("Night: ") + format.green("16 EU/t ") + format.darkBlue("(LV-tier)"));
	<impact:BlockAdvSolarPanel:3>.addTooltip(format.yellow("Day: ") + format.green("512 EU/t ") + format.darkBlue("(HV-tier)"));
	<impact:BlockAdvSolarPanel:3>.addTooltip(format.gray("Night: ") + format.green("64 EU/t ") + format.darkBlue("(MV-tier)"));
	<impact:BlockAdvSolarPanel:4>.addTooltip(format.yellow("Day: ") + format.green("2048 EU/t ") + format.darkBlue("(EV-tier)"));
	<impact:BlockAdvSolarPanel:4>.addTooltip(format.gray("Night: ") + format.green("256 EU/t ") + format.darkBlue("(HV-tier)"));
	
#==================================================================#
#Nei
	// --- Irradiant Reinforced Iridium Plate
		NEI.overrideName(<AdvancedSolarPanel:asp_crafting_items:8>, "Irradiant Reinforced Iridium Plate");

#==================================================================#

print("Initialized 'Adv-Sol-Panel.zs'");