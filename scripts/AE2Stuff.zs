// --- Created by DreamMasterXXL ---



// --- Imports



// --- Removing Recipes ---




// --- Pattern Encoder
recipes.remove(<ae2stuff:Encoder>);

// --- Crystal Growth Camber
recipes.remove(<ae2stuff:Grower>);

// --- Advanced Inscriber
recipes.remove(<ae2stuff:Inscriber>);

// --- Wireless Connector
recipes.remove(<ae2stuff:Wireless>);

// --- Wireless Setup Kit
recipes.remove(<ae2stuff:WirelessKit>);

// --- Network Visualisation Tool
recipes.remove(<ae2stuff:Visualiser>);




// --- Adding Recipes ---

// --- Wireless Connector
recipes.addShaped(<ae2stuff:Wireless>, [
[<ore:crystalPureFluix>, <ore:plateDoubleMaragingSteel300>, <ore:crystalPureFluix>],
[<appliedenergistics2:item.ItemMultiMaterial:24>, <appliedenergistics2:item.ItemMultiMaterial:41>, <appliedenergistics2:item.ItemMultiMaterial:24>],
[<ore:crystalPureFluix>, <ore:plateDoubleMaragingSteel300>, <ore:crystalPureFluix>]]);

// --- Wireless Setup Kit
recipes.addShaped(<ae2stuff:WirelessKit>, [
[<appliedenergistics2:item.ItemMultiMaterial:41>, <ore:plateHastelloyX>, <appliedenergistics2:item.ItemMultiMaterial:41>],
[<appliedenergistics2:item.ItemMultiMaterial:24>, <appliedenergistics2:item.ItemMultiPart:160>, <appliedenergistics2:item.ItemMultiMaterial:24>],
[<ore:crystalPureFluix>, <appliedenergistics2:item.ItemMultiPart:16>, <ore:crystalPureFluix>]]);

// --- Network Visualisation Tool
recipes.addShaped(<ae2stuff:Visualiser>, [
[<ore:crystalPureFluix>, <appliedenergistics2:item.ToolNetworkTool>, <ore:crystalPureFluix>],
[<ore:screwMaragingSteel350>, <appliedenergistics2:item.ItemMultiMaterial:41>, <ore:screwMaragingSteel350>],
[<ore:craftingToolScrewdriver>, <appliedenergistics2:item.ItemMultiMaterial:24>, <ore:craftingToolWrench>]]);