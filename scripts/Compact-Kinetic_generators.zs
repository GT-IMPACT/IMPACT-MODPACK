#============================#
# Compact-Kinetic_generators #
#============================#

#==================================================================#
#Imports

print("Initializing 'Compact-Kinetic_generators.zs'...");

#==================================================================#
#Remove Recipes 
// --- Iridium Rotor Blade
recipes.remove(<compactkineticgenerators:IridiumBlade>);

// --- Kinetic Gearbox Rotor (Iridium)
recipes.remove(<compactkineticgenerators:IridiumRotor>);

#==================================================================#
#Iridium Rotor
// --- Iridium Rotor Blade
recipes.addShaped(<compactkineticgenerators:IridiumBlade>, [
[<ore:plateAlloyIridium>, <ore:plateAlloyIridium>, <ore:plateAlloyIridium>],
[<ore:plateAlloyIridium>, <ore:ringLafium>, <ore:plateAlloyIridium>],
[<ore:plateAlloyIridium>, <ore:plateAlloyIridium>, <ore:plateAlloyIridium>]]);

// --- Kinetic Gearbox Rotor (Iridium)
recipes.addShaped(<compactkineticgenerators:IridiumRotor>, [
[<miscutils:itemIridiumShaft>, <compactkineticgenerators:IridiumBlade>, <ore:craftingToolHardHammer>],
[<compactkineticgenerators:IridiumBlade>, <ore:ringTrinium>, <compactkineticgenerators:IridiumBlade>],
[<ore:craftingToolWrench>, <compactkineticgenerators:IridiumBlade>, <miscutils:itemIridiumShaft>]]);

#==================================================================#

print("Initialized 'Compact-Kinetic_generators.zs'");