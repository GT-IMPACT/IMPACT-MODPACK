// ******* Created by Arch-Nihil for *******
// ******* the Grind-Complex modpack *******



// *======= Importing Stuff =======*



// *======= Variables =======*


var WLessTransmit = <WR-CBE|Logic:wirelessLogic>;
var WLessReceiver = <WR-CBE|Logic:wirelessLogic:1>;
var WLessJammer = <WR-CBE|Logic:wirelessLogic:2>;

var WLessTrans = <WR-CBE|Core:wirelessTransceiver>;
var BlazeTrans = <WR-CBE|Core:blazeTransceiver>;
var ReceiverDish = <WR-CBE|Core:recieverDish>;

var RedAlloyWire = <ore:cableGt01RedAlloy>;
var StoneSlab = <minecraft:stone_slab>;

var AlRod = <ore:stickAluminium>;
var SSteelScrew = <ore:screwStainlessSteel>;

var Screwdriver = <ore:craftingToolScrewdriver>;



// *======= Removing Recipes =======*


// --- Wireless Transmitter
recipes.remove(WLessTransmit);

// --- Wireless Receiver
recipes.remove(WLessReceiver);

// --- Wireless Jammer
recipes.remove(WLessJammer);


// *======= Adding Back Recipes =======*


// --- Wireless Transmitter
recipes.addShaped(WLessTransmit, [
[Screwdriver, WLessTrans, SSteelScrew],
[AlRod, RedAlloyWire, RedAlloyWire],
[StoneSlab, StoneSlab, StoneSlab]]);

// --- Wireless Receiver
recipes.addShaped(WLessReceiver, [
[Screwdriver, ReceiverDish, SSteelScrew],
[AlRod, RedAlloyWire, RedAlloyWire],
[StoneSlab, StoneSlab, StoneSlab]]);

// --- Wireless Jammer
recipes.addShaped(WLessJammer, [
[Screwdriver, BlazeTrans, SSteelScrew],
[AlRod, RedAlloyWire, RedAlloyWire],
[StoneSlab, StoneSlab, StoneSlab]]);



// #======= Hiding Stuff =======#

