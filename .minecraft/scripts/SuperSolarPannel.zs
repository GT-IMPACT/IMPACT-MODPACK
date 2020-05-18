#===================#
# Super Solar Panel #
#===================#

#==================================================================#
#Imports
import mods.gregtech.Assembler;
import mods.gregtech.PrecisionLaser;

print("Initializing 'SuperSolarPannel.zs'...");

#==================================================================#
#Remove Recipes
// --- Green Spectral Cpmponent
recipes.remove(<supersolarpanel:greencomponent>);

// --- Blue Spectral Cpmponent
recipes.remove(<supersolarpanel:bluecomponent>);

// --- Red Spectral Cpmponent
recipes.remove(<supersolarpanel:redcomponent>);

// --- Ender Qunatum Component
recipes.remove(<supersolarpanel:enderquantumcomponent>);

recipes.remove(<supersolarpanel:SpectralSolarPanel>);
recipes.remove(<supersolarpanel:SingularSolarPanel>);
recipes.remove(<supersolarpanel:AdminSolarPanel>);
recipes.remove(<supersolarpanel:PhotonicSolarPanel>);

#==================================================================#
#Hand Recipes
recipes.addShapeless(<impact:BlockAdvSolarPanel:5>, [<supersolarpanel:SpectralSolarPanel>]);
recipes.addShapeless(<impact:BlockAdvSolarPanel:6>, [<supersolarpanel:SingularSolarPanel>]);
recipes.addShapeless(<impact:BlockAdvSolarPanel:7>, [<supersolarpanel:AdminSolarPanel>]);
recipes.addShapeless(<impact:BlockAdvSolarPanel:8>, [<supersolarpanel:PhotonicSolarPanel>]);
<impact:BlockAdvSolarPanel:5>.addTooltip(format.yellow("Day: ") + format.green("8192 EU/t ") + format.darkBlue("(IV-tier)"));
<impact:BlockAdvSolarPanel:5>.addTooltip(format.gray("Night: ") + format.green("1024 EU/t ") + format.darkBlue("(EV-tier)"));
<impact:BlockAdvSolarPanel:6>.addTooltip(format.yellow("Day: ") + format.green("32768 EU/t ") + format.darkBlue("(LuV-tier)"));
<impact:BlockAdvSolarPanel:6>.addTooltip(format.gray("Night: ") + format.green("4096 EU/t ") + format.darkBlue("(IV-tier)"));
<impact:BlockAdvSolarPanel:7>.addTooltip(format.yellow("Day: ") + format.green("131072 EU/t ") + format.darkBlue("(ZPM-tier)"));
<impact:BlockAdvSolarPanel:7>.addTooltip(format.gray("Night: ") + format.green("16384 EU/t ") + format.darkBlue("(LuV-tier)"));
<impact:BlockAdvSolarPanel:8>.addTooltip(format.yellow("Day: ") + format.green("524288 EU/t ") + format.darkBlue("(UV-tier)"));
<impact:BlockAdvSolarPanel:8>.addTooltip(format.gray("Night: ") + format.green("65536 EU/t ") + format.darkBlue("(ZPM-tier)"));


#==================================================================#

print("Initialized 'SuperSolarPannel.zs'");