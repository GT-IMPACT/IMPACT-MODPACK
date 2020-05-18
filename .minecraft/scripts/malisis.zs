// --- Created by Jason McRay --- 

import mods.gregtech.Assembler;
import mods.nei.NEI;

# Aliases
val Button = <minecraft:stone_button>;
val ConvoyerBelt = <gregtech:gt.metaitem.01:32630>;
var dustRedstone = <ore:dustRedstone>;
var enderPearl = <minecraft:ender_pearl>;
var factoryDoor = <malisisdoors:item.factory_door>;
var ffController = <malisisdoors:item.forcefieldItem>;
var glass = <minecraft:glass>;
var glassDoorIron = <malisisdoors:item.iron_sliding_door>;
var glassDoorWood = <malisisdoors:item.wood_sliding_door>;
var HHammer = <ore:craftingToolHardHammer>;
var labDoor = <malisisdoors:item.laboratory_door>;
val Motor = <gregtech:gt.metaitem.01:32600>;
var paper = <minecraft:paper>;
var plankWood = <ore:plankWood>;
var plateGold = <ore:plateGold>;
var plateIron = <ore:plateIron>;
var ringIron = <ore:ringIron>;
var rustyHandle = <malisisdoors:item.rustyHandle>;
var rustyHatch = <malisisdoors:rustyHatch>;
var rustyLadder = <malisisdoors:rustyLadder>;
val Saw = <ore:craftingToolSaw>;
var SHammer = <ore:craftingToolSoftHammer>;
var shojiDoor = <malisisdoors:item.shoji_door>;
val smallIronGear = <ore:gearGtSmallIron>;
val smallIronSpring = <ore:springSmallIron>;
val smallSteelGear = <ore:gearGtSmallSteel>;
val smallSteelSpring = <ore:springSmallSteel>;
var stickDiamond = <ore:stickDiamond>;
var stickGold = <ore:stickGold>;
var stickIron = <ore:stickIron>;
val StickyPiston = <minecraft:sticky_piston>;
var vanishingFrameDiamond = <malisisdoors:vanishing_block:3>;
var vanishingFrameGold = <malisisdoors:vanishing_block:2>;
var vanishingFrameIron = <malisisdoors:vanishing_block:1>;
var wrench = <ore:craftingToolWrench>;


# Block/Item Removal
recipes.remove(ffController);


# Recipe Tweaks
recipes.remove(vanishingFrameIron);
recipes.addShaped(vanishingFrameIron * 4, [
	[dustRedstone, stickIron, dustRedstone],
	[stickIron, enderPearl, stickIron],
	[dustRedstone, stickIron, dustRedstone]]);
recipes.remove(vanishingFrameGold);
recipes.addShaped(vanishingFrameGold * 6, [
	[dustRedstone, stickGold, dustRedstone],
	[stickGold, enderPearl, stickGold],
	[dustRedstone, stickGold, dustRedstone]]);
recipes.remove(vanishingFrameDiamond);
recipes.addShaped(vanishingFrameDiamond * 8, [
	[dustRedstone, stickDiamond, dustRedstone],
	[stickDiamond, enderPearl, stickDiamond],
	[dustRedstone, stickDiamond, dustRedstone]]);
recipes.remove(rustyHatch);
recipes.addShaped(rustyHatch, [
	[plateIron, null],
	[plateIron, rustyHandle],
	[plateIron, null]]);
recipes.remove(rustyLadder);
recipes.addShaped(rustyLadder * 6, [
	[stickIron, HHammer, stickIron],
	[stickIron, stickIron, stickIron],
	[stickIron, wrench, stickIron]]);
recipes.remove(glassDoorWood);
recipes.addShaped(glassDoorWood, [
	[plankWood, glass],
	[plankWood, glass],
	[plankWood, glass]]);
recipes.remove(glassDoorIron);
recipes.addShaped(glassDoorIron, [
	[plateIron, glass, null],
	[plateIron, glass, SHammer],
	[plateIron, glass, null]]);
recipes.remove(labDoor);
recipes.addShaped(labDoor, [
	[plateGold, plateGold, null],
	[plateIron, plateIron, HHammer],
	[plateIron, plateIron, null]]);
recipes.remove(factoryDoor);
recipes.addShaped(factoryDoor, [
	[plateGold, plateGold, null],
	[plateIron, plateIron, HHammer],
	[plateGold, plateGold, null]]);
recipes.remove(shojiDoor);
recipes.addShaped(shojiDoor, [
	[plankWood, paper],
	[plankWood, paper],
	[plankWood, paper]]);
recipes.remove(rustyHandle);
recipes.addShaped(rustyHandle, [
	[null, stickIron, null],
	[ringIron, HHammer, ringIron],
	[null, stickIron, null]]);

// --- Block Mixer
recipes.remove(<malisisdoors:block_mixer>);
recipes.addShaped(<malisisdoors:block_mixer>, [
[ConvoyerBelt, Motor, ConvoyerBelt],
[smallIronSpring, <gregtech:gt.blockcasings2>, smallIronSpring],
[smallIronGear, StickyPiston, smallIronGear]]);

// --- Door Factory
recipes.remove(<malisisdoors:door_factory>);
recipes.addShaped(<malisisdoors:door_factory>, [
[ConvoyerBelt, Motor, ConvoyerBelt],
[smallSteelSpring, <gregtech:gt.blockcasings2>, smallSteelSpring],
[smallSteelGear, StickyPiston, smallSteelGear]]);

// --- Player Sensor
recipes.remove(<malisisdoors:player_sensor>);
recipes.addShaped(<malisisdoors:player_sensor>, [
[Button, <ProjRed|Transmission:projectred.transmission.wire>, Button],
[HHammer, <minecraft:heavy_weighted_pressure_plate>, Saw]]);

// --- Garage Door
recipes.remove(<malisisdoors:garage_door>);
recipes.addShaped(<malisisdoors:garage_door> * 5, [
[<ore:platePlastic>, <ore:ringSteel>, <ore:platePlastic>],
[<ore:ringSteel>, <ore:platePlastic>, <ore:ringSteel>],
[<ore:platePlastic>, <ore:ringSteel>, <ore:platePlastic>]]);

// --- Garage Door
Assembler.addRecipe(<malisisdoors:garage_door> * 2, <ore:platePlastic>, <ore:ringSteel>, 150, 16);
