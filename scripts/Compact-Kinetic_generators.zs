#============================#
# Compact-Kinetic_generators #
#============================#

#==================================================================#
#Imports
import mods.larger_workbenches.LargeCrafting;

print("Initializing 'Compact-Kinetic_generators.zs'...");

#==================================================================#
#Remove Recipes 
// --- Low Kinetic Wind Generator
recipes.remove(<compactkineticgenerators:BlockCkg>);

// --- Medium Kinetic Wind Generator
recipes.remove(<compactkineticgenerators:BlockCkg:1>);

// --- High Kinetic Wind Generator
recipes.remove(<compactkineticgenerators:BlockCkg:2>);

// --- Extreme Kinetic Wind Generator
recipes.remove(<compactkineticgenerators:BlockCkg:3>);

// --- Low Kinetic Water Generator
recipes.remove(<compactkineticgenerators:BlockCkg:4>);

// --- Medium Kinetic Water Generator
recipes.remove(<compactkineticgenerators:BlockCkg:5>);

// --- High Kinetic Water Generator
recipes.remove(<compactkineticgenerators:BlockCkg:6>);

// --- Extreme Kinetic Water Generator
recipes.remove(<compactkineticgenerators:BlockCkg:7>);

// --- Low Kinetic Generator
recipes.remove(<compactkineticgenerators:BlockCkg:8>);

// --- Medium Kinetic Generator
recipes.remove(<compactkineticgenerators:BlockCkg:9>);

// --- High Kinetic Generator
recipes.remove(<compactkineticgenerators:BlockCkg:10>);

// --- Extreme Kinetic Generator
recipes.remove(<compactkineticgenerators:BlockCkg:11>);

// --- Iridium Rotor Blade
recipes.remove(<compactkineticgenerators:IridiumBlade>);

// --- Kinetic Gearbox Rotor (Iridium)
recipes.remove(<compactkineticgenerators:IridiumRotor>);

#==================================================================#
#Wind Generator
// --- Low Kinetic Wind Generator
LargeCrafting.addShaped(1, <compactkineticgenerators:BlockCkg>, [
		[<ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>, <IC2:blockKineticGenerator>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>],
		[<ore:itemCasingTungstenSteel>, <ore:gearGtSmallDesh>, <ore:cableGt02Tungsten>, <ore:gearGtSmallDesh>, <ore:itemCasingTungstenSteel>],
		[<IC2:blockKineticGenerator>, <ore:circuitElite>, <gregtech:gt.blockmachines:14>, <ore:circuitElite>, <IC2:blockKineticGenerator>],
		[<ore:itemCasingTungstenSteel>, <gregtech:gt.metaitem.01:32603>, <ore:cableGt02Tungsten>, <gregtech:gt.metaitem.01:32603>, <ore:itemCasingTungstenSteel>],
		[<ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>, <IC2:blockKineticGenerator>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>]
	]
);
// --- Medium Kinetic Wind Generator
LargeCrafting.addShaped(1, <compactkineticgenerators:BlockCkg:1>, [
		[<ore:plateDoubleTriniumTitaniumAlloy>, <ore:plateDoubleTriniumTitaniumAlloy>, <compactkineticgenerators:BlockCkg>, <ore:plateDoubleTriniumTitaniumAlloy>, <ore:plateDoubleTriniumTitaniumAlloy>],
		[<ore:itemCasingIridium>, <ore:gearGtSmallDraconium>, <ore:wireGt04HSSG>, <ore:gearGtSmallDraconium>, <ore:itemCasingIridium>],
		[<compactkineticgenerators:BlockCkg>, <ore:circuitMaster>, <gregtech:gt.blockmachines:15>, <ore:circuitMaster>, <compactkineticgenerators:BlockCkg>],
		[<ore:itemCasingIridium>, <gregtech:gt.metaitem.01:32604>, <ore:wireGt04HSSG>, <gregtech:gt.metaitem.01:32604>, <ore:itemCasingIridium>],
		[<ore:plateDoubleTriniumTitaniumAlloy>, <ore:plateDoubleTriniumTitaniumAlloy>, <compactkineticgenerators:BlockCkg>, <ore:plateDoubleTriniumTitaniumAlloy>, <ore:plateDoubleTriniumTitaniumAlloy>]
	]
);
// --- High Kinetic Wind Generator
LargeCrafting.addShaped(1, <compactkineticgenerators:BlockCkg:2>, [
		[<ore:plateDoubleTriniumNaquadahCarbonite>, <ore:plateDoubleTriniumNaquadahCarbonite>, <compactkineticgenerators:BlockCkg:1>, <ore:plateDoubleTriniumNaquadahCarbonite>, <ore:plateDoubleTriniumNaquadahCarbonite>],
		[<ore:itemCasingOsmium>, <ore:gearGtSmallOriharukon>, <ore:cableGt04VanadiumGallium>, <ore:gearGtSmallOriharukon>, <ore:itemCasingOsmium>],
		[<compactkineticgenerators:BlockCkg:1>, <ore:circuitUltimate>, <gregtech:gt.blockmachines:16>, <ore:circuitUltimate>, <compactkineticgenerators:BlockCkg:1>],
		[<ore:itemCasingOsmium>, <gregtech:gt.metaitem.01:32606>, <ore:cableGt04VanadiumGallium>, <gregtech:gt.metaitem.01:32606>, <ore:itemCasingOsmium>],
		[<ore:plateDoubleTriniumNaquadahCarbonite>, <ore:plateDoubleTriniumNaquadahCarbonite>, <compactkineticgenerators:BlockCkg:1>, <ore:plateDoubleTriniumNaquadahCarbonite>, <ore:plateDoubleTriniumNaquadahCarbonite>]
	]
);
// --- Extreme Kinetic Wind Generator
LargeCrafting.addShaped(1, <compactkineticgenerators:BlockCkg:3>, [
		[<ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>, <compactkineticgenerators:BlockCkg:2>, <ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>],
		[<ore:itemCasingNeutronium>, <ore:gearGtSmallElectrumFlux>, <ore:cableGt08Duranium>, <ore:gearGtSmallElectrumFlux>, <ore:itemCasingNeutronium>],
		[<compactkineticgenerators:BlockCkg:2>, <ore:circuitSuperconductor>, <gregtech:gt.blockmachines:17>, <ore:circuitSuperconductor>, <compactkineticgenerators:BlockCkg:2>],
		[<ore:itemCasingNeutronium>, <gregtech:gt.metaitem.01:32607>, <ore:cableGt08Duranium>, <gregtech:gt.metaitem.01:32607>, <ore:itemCasingNeutronium>],
		[<ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>, <compactkineticgenerators:BlockCkg:2>, <ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>]
	]
);

#==================================================================#
#Water Generator
// --- Low Kinetic Water Generator
LargeCrafting.addShaped(1, <compactkineticgenerators:BlockCkg:4>, [
		[<ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>, <IC2:blockKineticGenerator:4>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>],
		[<ore:itemCasingTungstenSteel>, <gregtech:gt.metaitem.01:32613>, <ore:cableGt02Tungsten>, <gregtech:gt.metaitem.01:32613>, <ore:itemCasingTungstenSteel>],
		[<IC2:blockKineticGenerator:4>, <ore:circuitElite>, <gregtech:gt.blockmachines:14>, <ore:circuitElite>, <IC2:blockKineticGenerator:4>],
		[<ore:itemCasingTungstenSteel>, <ore:gearGtSmallDesh>, <ore:cableGt02Tungsten>, <ore:gearGtSmallDesh>, <ore:itemCasingTungstenSteel>],
		[<ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>, <IC2:blockKineticGenerator:4>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>]
	]
);
// --- Medium Kinetic Water Generator
LargeCrafting.addShaped(1, <compactkineticgenerators:BlockCkg:5>, [
		[<ore:plateDoubleTriniumTitaniumAlloy>, <ore:plateDoubleTriniumTitaniumAlloy>, <compactkineticgenerators:BlockCkg:4>, <ore:plateDoubleTriniumTitaniumAlloy>, <ore:plateDoubleTriniumTitaniumAlloy>],
		[<ore:itemCasingIridium>, <gregtech:gt.metaitem.01:32614>, <ore:wireGt04HSSG>, <gregtech:gt.metaitem.01:32614>, <ore:itemCasingIridium>],
		[<compactkineticgenerators:BlockCkg:4>, <ore:circuitMaster>, <gregtech:gt.blockmachines:15>, <ore:circuitMaster>, <compactkineticgenerators:BlockCkg:4>],
		[<ore:itemCasingIridium>, <ore:gearGtSmallDraconium>, <ore:wireGt04HSSG>, <ore:gearGtSmallDraconium>, <ore:itemCasingIridium>],
		[<ore:plateDoubleTriniumTitaniumAlloy>, <ore:plateDoubleTriniumTitaniumAlloy>, <compactkineticgenerators:BlockCkg:4>, <ore:plateDoubleTriniumTitaniumAlloy>, <ore:plateDoubleTriniumTitaniumAlloy>]
	]
);
// --- High Kinetic Water Generator
LargeCrafting.addShaped(1, <compactkineticgenerators:BlockCkg:6>, [
		[<ore:plateDoubleTriniumNaquadahCarbonite>, <ore:plateDoubleTriniumNaquadahCarbonite>, <compactkineticgenerators:BlockCkg:5>, <ore:plateDoubleTriniumNaquadahCarbonite>, <ore:plateDoubleTriniumNaquadahCarbonite>],
		[<ore:itemCasingOsmium>, <gregtech:gt.metaitem.01:32620>, <ore:cableGt04VanadiumGallium>, <gregtech:gt.metaitem.01:32620>, <ore:itemCasingOsmium>],
		[<compactkineticgenerators:BlockCkg:5>, <ore:circuitUltimate>, <gregtech:gt.blockmachines:16>, <ore:circuitUltimate>, <compactkineticgenerators:BlockCkg:5>],
		[<ore:itemCasingOsmium>, <ore:gearGtSmallOriharukon>, <ore:cableGt04VanadiumGallium>, <ore:gearGtSmallOriharukon>, <ore:itemCasingOsmium>],
		[<ore:plateDoubleTriniumNaquadahCarbonite>, <ore:plateDoubleTriniumNaquadahCarbonite>, <compactkineticgenerators:BlockCkg:5>, <ore:plateDoubleTriniumNaquadahCarbonite>, <ore:plateDoubleTriniumNaquadahCarbonite>]
	]
);
// --- Extreme Kinetic Water Generator
LargeCrafting.addShaped(1, <compactkineticgenerators:BlockCkg:7>, [
		[<ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>, <compactkineticgenerators:BlockCkg:6>, <ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>],
		[<ore:itemCasingNeutronium>, <gregtech:gt.metaitem.01:32621>, <ore:cableGt08Duranium>, <gregtech:gt.metaitem.01:32621>, <ore:itemCasingNeutronium>],
		[<compactkineticgenerators:BlockCkg:6>, <ore:circuitSuperconductor>, <gregtech:gt.blockmachines:17>, <ore:circuitSuperconductor>, <compactkineticgenerators:BlockCkg:6>],
		[<ore:itemCasingNeutronium>, <ore:gearGtSmallElectrumFlux>, <ore:cableGt08Duranium>, <ore:gearGtSmallElectrumFlux>, <ore:itemCasingNeutronium>],
		[<ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>, <compactkineticgenerators:BlockCkg:6>, <ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>]
	]
);

#==================================================================#
#Kinetic Generator
// --- Low Kinetic Generator
LargeCrafting.addShaped(1, <compactkineticgenerators:BlockCkg:8>, [
		[<ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>, <miscutils:itemTungstenSteelShaft>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>],
		[<ore:rotorTungstenSteel>, <ore:gearGtSmallDesh>, <gregtech:gt.blockmachines:14>, <ore:gearGtSmallDesh>, <ore:rotorTungstenSteel>],
		[<ore:cableGt02Tungsten>, <ore:circuitElite>, <IC2:blockGenerator:9>, <ore:circuitElite>, <ore:cableGt02Tungsten>],
		[<ore:rotorTungstenSteel>, <gregtech:gt.metaitem.01:32603>, <gregtech:gt.metaitem.01:32540>, <gregtech:gt.metaitem.01:32603>, <ore:rotorTungstenSteel>],
		[<ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>, <miscutils:itemTungstenSteelShaft>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>]
	]
);
// --- Medium Kinetic Generator
LargeCrafting.addShaped(1, <compactkineticgenerators:BlockCkg:9>, [
		[<ore:plateDoubleTriniumTitaniumAlloy>, <ore:plateDoubleTriniumTitaniumAlloy>, <miscutils:itemTungstenSteelShaft>, <ore:plateDoubleTriniumTitaniumAlloy>, <ore:plateDoubleTriniumTitaniumAlloy>],
		[<ore:rotorIridium>, <ore:gearGtSmallDraconium>, <gregtech:gt.blockmachines:15>, <ore:gearGtSmallDraconium>, <ore:rotorIridium>],
		[<ore:wireGt04HSSG>, <ore:circuitMaster>, <compactkineticgenerators:BlockCkg:8>, <ore:circuitMaster>, <ore:wireGt04HSSG>],
		[<ore:rotorIridium>, <gregtech:gt.metaitem.01:32604>, <gregtech:gt.metaitem.01:32545>, <gregtech:gt.metaitem.01:32604>, <ore:rotorIridium>],
		[<ore:plateDoubleTriniumTitaniumAlloy>, <ore:plateDoubleTriniumTitaniumAlloy>, <miscutils:itemTungstenSteelShaft>, <ore:plateDoubleTriniumTitaniumAlloy>, <ore:plateDoubleTriniumTitaniumAlloy>]
	]
);
// --- High Kinetic Generator
LargeCrafting.addShaped(1, <compactkineticgenerators:BlockCkg:10>, [
		[<ore:plateDoubleTriniumNaquadahCarbonite>, <ore:plateDoubleTriniumNaquadahCarbonite>, <miscutils:itemIridiumShaft>, <ore:plateDoubleTriniumNaquadahCarbonite>, <ore:plateDoubleTriniumNaquadahCarbonite>],
		[<ore:rotorOsmium>, <ore:gearGtSmallOriharukon>, <gregtech:gt.blockmachines:16>, <ore:gearGtSmallOriharukon>, <ore:rotorOsmium>],
		[<ore:cableGt04VanadiumGallium>, <ore:circuitUltimate>, <compactkineticgenerators:BlockCkg:9>, <ore:circuitUltimate>, <ore:cableGt04VanadiumGallium>],
		[<ore:rotorOsmium>, <gregtech:gt.metaitem.01:32606>, <gregtech:gt.metaitem.01:32550>, <gregtech:gt.metaitem.01:32606>, <ore:rotorOsmium>],
		[<ore:plateDoubleTriniumNaquadahCarbonite>, <ore:plateDoubleTriniumNaquadahCarbonite>, <miscutils:itemIridiumShaft>, <ore:plateDoubleTriniumNaquadahCarbonite>, <ore:plateDoubleTriniumNaquadahCarbonite>]
	]
);
// --- Extreme Kinetic Generator
LargeCrafting.addShaped(1, <compactkineticgenerators:BlockCkg:11>, [
		[<ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>, <miscutils:itemIridiumShaft>, <ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>],
		[<ore:rotorNeutronium>, <ore:gearGtSmallElectrumFlux>, <gregtech:gt.blockmachines:17>, <ore:gearGtSmallElectrumFlux>, <ore:rotorNeutronium>],
		[<ore:cableGt08Duranium>, <ore:circuitSuperconductor>, <compactkineticgenerators:BlockCkg:10>, <ore:circuitSuperconductor>, <ore:cableGt08Duranium>],
		[<ore:rotorNeutronium>, <gregtech:gt.metaitem.01:32607>, <gregtech:gt.metaitem.01:32555>, <gregtech:gt.metaitem.01:32607>, <ore:rotorNeutronium>],
		[<ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>, <miscutils:itemIridiumShaft>, <ore:plateDoubleCinobiteA243>, <ore:plateDoubleCinobiteA243>]
	]
);

#==================================================================#
#Iridium Rotor
// --- Iridium Rotor Blade
recipes.addShaped(<compactkineticgenerators:IridiumBlade>, [
[<ore:plateAlloyIridium>, <ore:plateAlloyIridium>, <ore:plateAlloyIridium>],
[<ore:plateAlloyIridium>, <ore:ringTriniumTitaniumAlloy>, <ore:plateAlloyIridium>],
[<ore:plateAlloyIridium>, <ore:plateAlloyIridium>, <ore:plateAlloyIridium>]]);

// --- Kinetic Gearbox Rotor (Iridium)
recipes.addShaped(<compactkineticgenerators:IridiumRotor>, [
[<miscutils:itemIridiumShaft>, <compactkineticgenerators:IridiumBlade>, <ore:craftingToolHardHammer>],
[<compactkineticgenerators:IridiumBlade>, <ore:ringTriniumNaquadahCarbonite>, <compactkineticgenerators:IridiumBlade>],
[<ore:craftingToolWrench>, <compactkineticgenerators:IridiumBlade>, <miscutils:itemIridiumShaft>]]);

#==================================================================#

print("Initialized 'Compact-Kinetic_generators.zs'");