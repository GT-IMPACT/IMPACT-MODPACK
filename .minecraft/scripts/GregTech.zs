#==========#
# GregTech #
#==========#

#==================================================================#
#Imports
import minetweaker.item.IItemStack;
import mods.gregtech.AlloySmelter;
import mods.nei.NEI;

print("Initializing 'GregTech.zs'...");

#==================================================================#
#Variables
var DiamondDust 			= <gregtech:gt.metaitem.01:2500>;
var nuggetIron 				= <gregtech:gt.metaitem.01:9032>;
var nuggetWIron 			= <gregtech:gt.metaitem.01:9304>;
var ingotWIron 				= <gregtech:gt.metaitem.01:11304>;
var MoldIngot 				= <gregtech:gt.metaitem.01:32306>;

// radiation attention! - for tiny/small dusts, dusts, ingots, plates
var radioativeMaterialsAsOre = [
	<ore:dustPlutonium>,  <ore:dustUranium235>,  <ore:dustPlutonium241>,  <ore:dustNaquadahEnriched>,  <ore:dustNaquadria>,
	<ore:ingotPlutonium>, <ore:ingotUranium235>, <ore:ingotPlutonium241>, <ore:ingotNaquadahEnriched>, <ore:ingotNaquadria>,
	<ore:platePlutonium>, <ore:plateUranium235>, <ore:platePlutonium241>, <ore:plateNaquadahEnriched>, <ore:plateNaquadria>,
	<ore:dustTinyPlutonium>, <ore:dustTinyUranium235>, <ore:dustTinyPlutonium241>, <ore:dustTinyNaquadahEnriched>, 
	<ore:dustTinyNaquadria>, <ore:dustSmallPlutonium>, <ore:dustSmallUranium235>, <ore:dustSmallPlutonium241>, 
	<ore:dustSmallNaquadahEnriched>, <ore:dustSmallNaquadria>, <ore:crushedNaquadahEnriched>, <ore:crushedPurifiedNaquadahEnriched>,
	<ore:crushedCentrifugedNaquadahEnriched>, <ore:dustPureNaquadahEnriched>, <ore:dustImpureNaquadahEnriched>,
	<ore:nuggetNaquadahEnriched>, <ore:plateDoubleNaquadahEnriched>, <ore:blockNaquadahEnriched>,
	<ore:oreRedgraniteNaquadahEnriched>, <ore:oreBlackgraniteNaquadahEnriched>, <ore:oreNaquadahEnriched>, 
	<ore:oreBasaltNaquadahEnriched>, <ore:oreMarbleNaquadahEnriched>, <ore:oreEndstoneNaquadahEnriched>, 
	<ore:oreNetherrackNaquadahEnriched>,
] as minetweaker.oredict.IOreDictEntry[];

for i, item in radioativeMaterialsAsOre{
	item.addTooltip("Danger: " + format.red("Radioactive"));
}

var radioativeMaterialsAsItem = [
	<IC2:itemPlutonium>, <IC2:itemPlutoniumSmall>, <IC2:itemRTGPellet>, 
	<IC2:itemUran>, <IC2:itemUran235>, <IC2:itemUran235small>, <IC2:itemUran238>, <IC2:itemMOX>,
	<IC2:reactorMOXSimpledepleted>, <IC2:reactorMOXDualdepleted>, <IC2:reactorMOXQuaddepleted>,
	<IC2:reactorUraniumSimpledepleted>, <IC2:reactorUraniumDualdepleted>, <IC2:reactorUraniumQuaddepleted>,
	<gregtech:gt.ThoriumcellDep>, <gregtech:gt.Double_ThoriumcellDep>, <gregtech:gt.Quad_ThoriumcellDep>,
	<gregtech:gt.reactorUraniumSimple>, <gregtech:gt.reactorUraniumDual>, <gregtech:gt.reactorUraniumQuad>,
	<gregtech:gt.reactorMOXSimple>, <gregtech:gt.reactorMOXDual>, <gregtech:gt.reactorMOXQuad>,
	<gregtech:gt.Naquadahcell>, <gregtech:gt.Double_Naquadahcell>, <gregtech:gt.Quad_Naquadahcell>,
	<gregtech:gt.NaquadahcellDep>, <gregtech:gt.Double_NaquadahcellDep>, <gregtech:gt.Quad_NaquadahcellDep>
] as minetweaker.item.IItemStack[];

for i, item in radioativeMaterialsAsItem{
	item.addTooltip("Danger: " + format.red("Radioactive"));
}

#==================================================================#

# Recipe Fixes


#==================================================================#
#Nuggets fix
recipes.removeShapeless(<ore:nuggetIron>);
recipes.removeShapeless(<ore:nuggetGold>);

#==================================================================#
#Diamond dust-gem fix
recipes.removeShapeless(DiamondDust * 9, [<minecraft:diamond_block>]);
recipes.removeShapeless(<minecraft:diamond> * 9, [<minecraft:diamond_block>]);

#==================================================================#
#Lignite dust fix
recipes.removeShapeless(<gregtech:gt.metaitem.01:2538> * 9, [<gregtech:gt.blockgem2:1>]);

#==================================================================#
#Charcoal dust fix
recipes.removeShapeless(<gregtech:gt.metaitem.01:2536> * 9, [<gregtech:gt.blockgem3:4>]);

#==================================================================#
#Nuggets
AlloySmelter.addRecipe(ingotWIron, nuggetWIron * 9, MoldIngot * 0, 200, 2);
AlloySmelter.addRecipe(<minecraft:iron_ingot>, nuggetIron * 9, MoldIngot * 0, 201, 2);

#==================================================================#
recipes.removeShaped(<ore:ingotLead>, [
[<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>],
[<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>],
[<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>]]);

recipes.removeShaped(<ore:ingotGold>, [
[<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>],
[<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>],
[<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>]]);

#==================================================================#
#Tantal
recipes.addShaped(<gregtech:gt.metaitem.01:32499>*2, [
		[null, <ore:foilManganese>, null], 
		[<ore:foilManganese>,<ore:dustTantalum>,<ore:foilManganese>], 
		[<ore:boltIron>,null,<ore:boltIron>]
	]
);

#==================================================================#

print("Initialized 'GregTech.zs'");
