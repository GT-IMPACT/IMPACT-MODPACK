import minetweaker.item.IItemStack;
import mods.gregtech.ChemicalBath;
import mods.gregtech.Autoclave;

function getGreggedItem(oreDictName as string) as IItemStack {
    return oreDict.get(oreDictName).firstItem;
}

var materials = [
    "Almandine", "Aluminium",
    "Amethyst", "Apatite",
    "BandedIron", "Barite",
    "Bastnasite", "Bauxite",
    "Bentonite", "Beryllium",
    "BlueTopaz", "BrownLimonite",
    "Calcite", "Cassiterite",
    "CertusQuartz", "Chalcopyrite",
    "Cinnabar", "Cobaltite",
    "Copper", "Diamond",
    "Emerald", "Galena",
    "Garnierite", "Glauconite",
    "Gold", "Graphite",
    "GreenSapphire", "Grossular",
    "Ilmenite", "Iridium",
    "Iron", "Jasper",
    "Lapis", "Lazurite",
    "Lead", "Lepidolite",
    "Lithium", "Magnesite",
    "Magnetite", "Malachite",
    "Molybdenite", "Molybdenum",
    "Monazite", "Naquadah",
    "Neodymium", "NetherQuartz",
    "Nickel", "Niter",
    "Olivine", "Opal",
    "Palladium", "Pentlandite",
    "Phosphate", "Phosphorus",
    "Pitchblende", "Platinum",
    "Powellite", "Pyrite",
    "Pyrolusite", "Pyrope",
    "Quartzite", "Redstone",
    "RockSalt", "Ruby",
    "Salt", "Sapphire",
    "Scheelite", "Silver",
    "Soapstone", "Sodalite",
    "Spessartine", "Sphalerite",
    "Spodumene", "Stibnite",
    "Sulfur", "Talc",
    "Tantalite", "Tanzanite",
    "Tetrahedrite", "Thorium",
    "Tin", "Topaz",
    "Tungstate", "Uraninite",
    "Uranium", "VanadiumMagnetite",
    "Wulfenite", "YellowLimonite",
    "Coal", "Lignite",
    "Netherrack", "Stone", "Zinc"
] as string[];

var Water = <liquid:water> * 100;
var DistilledWater = <liquid:ic2distilledwater> * 100;

for material in materials {
    var oreCrushed = getGreggedItem("crushed" + material);
    var orePurified = getGreggedItem("crushedPurified" + material);
    
    Autoclave.addRecipe(orePurified, oreCrushed, Water, 10000, 4, 8);
    Autoclave.addRecipe(orePurified, oreCrushed, DistilledWater, 10000, 4, 8);

    var dust = getGreggedItem("dust" + material);
    var dustImpure = getGreggedItem("dustImpure" + material);
    var dustPure = getGreggedItem("dustPure" + material);
        
    Autoclave.addRecipe(dust, dustImpure, Water, 10000, 4, 8);
    Autoclave.addRecipe(dust, dustImpure, DistilledWater, 10000, 4, 8);
    Autoclave.addRecipe(dust, dustPure, Water, 10000, 4, 8);
    Autoclave.addRecipe(dust, dustPure, DistilledWater, 10000, 4, 8);
}