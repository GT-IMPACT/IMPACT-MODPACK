// GWPP
import mods.nei.NEI;


# Aliases
var backpackApothecary = <Railcraft:backpack.apothecary.t1>;
var backpackApothecaryT2 = <Railcraft:backpack.apothecary.t2>;
var backpackIceman = <Railcraft:backpack.iceman.t1>;
var backpackIcemanT2 = <Railcraft:backpack.iceman.t2>;
var backpackTrack = <Railcraft:backpack.trackman.t1>;
var backpackTrackT2 = <Railcraft:backpack.trackman.t2>;
var benchEngraving = <Railcraft:machine.epsilon:5>;
var gregEngraverBasic = <gregtech:gt.blockmachines:591>;
var brickAbyssal = <Railcraft:brick.abyssal>;
var cablePlatinum = <gregtech:gt.blockmachines:1646>;
var blockSteelGearCasing = <gregtech:gt.blockcasings2:3>;
var circuitAdvanced = <ore:circuitAdvanced>;
var glass = <minecraft:glass>;
var ingotCopper = <ore:ingotCopper>;
var ingotGold = <ore:ingotGold>;
var ironBars = <minecraft:iron_bars>;
var piston = <minecraft:piston>;
var plateCopper = <ore:plateCopper>;
var plateSteel = <ore:plateSteel>;
var plateTinAlloy = <ore:plateTinAlloy>;
var pressurePlateStone = <minecraft:stone_pressure_plate>;
var railAdvanced = <Railcraft:part.rail:1>;
var railElectric = <Railcraft:part.rail:5>;
//var railHS = <Railcraft:part.rail:3>;
var railReinforced = <Railcraft:part.rail:4>;
var railStandard = <Railcraft:part.rail>;
var woodenTie = <Railcraft:part.tie>;
var cokeOven = <Railcraft:machine.alpha:7>;
var dustClay = <gregtech:gt.metaitem.01:2805>;
var sand = <minecraft:sand>;
var water = <liquid:water>;
var wetCokeBrick = <Railcraft:brick.sandy>;
var PortableCell = <appliedenergistics2:item.ToolPortableCell>;
var silkWoven = <Forestry:craftingMaterial:3>;
var woodenRail = <Railcraft:part.rail:2>;
var Rebar = <Railcraft:part.rebar>;
var Locomotive = <Railcraft:cart.loco.steam.solid:0>;
var ELocomotive = <Railcraft:cart.loco.electric>;
var BoilerHP = <gregtech:gt.blockmachines:101>;
var BronzeFirebox = <gregtech:gt.blockcasings3:13>;
var SwitchMotor = <Railcraft:signal:2>;
var SwitchLever = <Railcraft:signal:4>;
var PistonLV = <gregtech:gt.metaitem.01:32640>;
var ControllerCircuit = <Railcraft:part.circuit:0>;
var ReceiverCircuit = <Railcraft:part.circuit:1>;
var SignalCircuit = <Railcraft:part.circuit:2>;
var ICCircuit = <IC2:itemPartCircuit>;
var PlateGold = <gregtech:gt.metaitem.01:17086>;
var PlateLead = <gregtech:gt.metaitem.01:17089>;
var ChemicalGreenDye = <liquid:dye.chemical.dyegreen>;
var ChemicalRedDye = <liquid:dye.chemical.dyered>;
var ChemicalYellowDye = <liquid:dye.chemical.dyeyellow>;
var WaterGreenDye = <liquid:dye.watermixed.dyegreen>;
var WaterRedDye = <liquid:dye.watermixed.dyered>;
var WaterYellowDye = <liquid:dye.watermixed.dyeyellow>;
var TunnelBore = <Railcraft:cart.bore>;
var HSTrack = <Railcraft:track:816>;
//var reinforcedTrack = <Railcraft:track:0>.withTag({track: "railcraft:track.reinforced"});
var ringStainlessSteel = <ore:ringStainlessSteel>;
var ringPlatinum = <ore:ringPlatinum>;
var hhammer = <ore:craftingToolHardHammer>;
var wrench = <ore:craftingToolWrench>;
var MachineController = <gregtech:gt.metaitem.01:32730>;
var motorHV = <gregtech:gt.metaitem.01:32602>;
var ShuntingWire = <Railcraft:machine.delta:0>;
var conveyorLV = <gregtech:gt.metaitem.01:32630>;
var robotarmLV = <gregtech:gt.metaitem.01:32650>;

// Track Aliases
//// Vanilla|Standart
var standTrack = <minecraft:rail>;
var standJuncTrack = <Railcraft:track>.withTag({track: "railcraft:track.junction"});
var standSwitchTrack = <Railcraft:track:4767>.withTag({track: "railcraft:track.switch"});
var standWyeTrack = <Railcraft:track:2144>.withTag({track: "railcraft:track.wye"});
var standBoostTrack = <minecraft:golden_rail>;

//// Wooden
var woodenTrack = <Railcraft:track:736>.withTag({track: "railcraft:track.slow"});
var woodenJuncTrack = <Railcraft:track>.withTag({track: "railcraft:track.slow.junction"});
var woodenSwitchTrack = <Railcraft:track:19986>.withTag({track: "railcraft:track.slow.switch"});
var woodenWyeTrack = <Railcraft:track>.withTag({track: "railcraft:track.slow.wye"});
var woodenBoostTrack = <Railcraft:track>.withTag({track: "railcraft:track.slow.boost"});

//// Reinforsed
var reinforcedTrack = <Railcraft:track>.withTag({track: "railcraft:track.reinforced"});
var reinforcedJuncTrack = <Railcraft:track:764>.withTag({track: "railcraft:track.reinforced.junction"});
var reinforcedSwitchTrack = <Railcraft:track>.withTag({track: "railcraft:track.reinforced.switch"});
var reinforcedWyeTrack = <Railcraft:track>.withTag({track: "railcraft:track.reinforced.wye"});
var reinforcedBoostTrack = <Railcraft:track>.withTag({track: "railcraft:track.reinforced.boost"});

//// HS
var hsTrack = <Railcraft:track:816>.withTag({track: "railcraft:track.speed"});
var hsTransTrack = <Railcraft:track:26865>.withTag({track: "railcraft:track.speed.transition"});
var hsSwitchTrack = <Railcraft:track:7916>.withTag({track: "railcraft:track.speed.switch"});
var hsWyeTrack = <Railcraft:track>.withTag({track: "railcraft:track.speed.wye"});
var hsBoostTrack = <Railcraft:track>.withTag({track: "railcraft:track.speed.boost"});

//// Electric
var electricTrack = <Railcraft:track>.withTag({track: "railcraft:track.electric"});
var electricJuncTrack = <Railcraft:track>.withTag({track: "railcraft:track.electric.junction"});
var electricSwitchTrack = <Railcraft:track:10488>.withTag({track: "railcraft:track.electric.switch"});
var electricWyeTrack = <Railcraft:track>.withTag({track: "railcraft:track.electric.wye"});

//// Logic
var trackActivator = <minecraft:activator_rail>;
var trackControl = <Railcraft:track>.withTag({track: "railcraft:track.control"});
var trackCoupler = <Railcraft:track>.withTag({track: "railcraft:track.coupler"});
var trackDetector = <minecraft:detector_rail>;
var trackDetectorDir = <Railcraft:track>.withTag({track: "railcraft:track.detector.direction"});
var trackDisembarking = <Railcraft:track:23575>.withTag({track: "railcraft:track.disembarking"});
var trackDisposal = <Railcraft:track:2264>.withTag({track: "railcraft:track.disposal"});
var trackElevator = <Railcraft:track.elevator>;
var trackEmbarking = <Railcraft:track>.withTag({track: "railcraft:track.embarking"});
var trackGated = <Railcraft:track:19746>.withTag({track: "railcraft:track.gated"});
var trackGatedOneWay = <Railcraft:track>.withTag({track: "railcraft:track.gated.oneway"});
var trackLauncher = <Railcraft:track>.withTag({track: "railcraft:track.launcher"});
var trackLimiter = <Railcraft:track:16093>.withTag({track: "railcraft:track.limiter"});
var trackLocking = <Railcraft:track:20176>.withTag({track: "railcraft:track.locking"});
var trackLoco = <Railcraft:track:30516>.withTag({track: "railcraft:track.locomotive"});
var trackOneWay = <Railcraft:track:30946>.withTag({track: "railcraft:track.oneway"});
var trackPriming = <Railcraft:track:8103>.withTag({track: "railcraft:track.priming"});
var trackRouting = <Railcraft:track>.withTag({track: "railcraft:track.routing"});
var trackStop = <Railcraft:track:32363>.withTag({track: "railcraft:track.buffer.stop"});
var trackSuspended = <Railcraft:track>.withTag({track: "railcraft:track.suspended"});
var trackWhistle = <Railcraft:track>.withTag({track: "railcraft:track.whistle"});

# Recipe tweaks
recipes.remove(railStandard);
recipes.remove(railAdvanced);
recipes.remove(<Railcraft:part.rail:3>); // railHS
recipes.remove(railReinforced);
recipes.remove(railElectric);
//recipes.remove(reinforcedTrack);
railStandard.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
railAdvanced.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
<Railcraft:part.rail:3>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
railReinforced.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
railElectric.addTooltip(format.red("RAILCRAFT WILL REMOVE"));


mods.railcraft.RockCrusher.removeRecipe(<*>);
mods.railcraft.Rolling.removeRecipe(<*>);
mods.railcraft.BlastFurnace.removeRecipe(<*>);

recipes.remove(woodenRail);
recipes.remove(Rebar);
recipes.remove(ControllerCircuit);
recipes.remove(ReceiverCircuit);
recipes.remove(SignalCircuit);
recipes.remove(SwitchMotor);
recipes.remove(SwitchLever);
recipes.remove(<Railcraft:cube>);
woodenRail.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
Rebar.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
ControllerCircuit.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
ReceiverCircuit.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
SignalCircuit.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
SwitchMotor.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
SwitchLever.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
<Railcraft:cube>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));


// upgradeLapotronLoader
recipes.remove(<Railcraft:upgrade.lapotron>);
<Railcraft:upgrade.lapotron>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
// firebox liquid
recipes.remove(<Railcraft:machine.beta:6>);
<Railcraft:machine.beta:6>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
// --- High Pressure Boiler Tank
recipes.remove(<Railcraft:machine.beta:4>);
recipes.remove(benchEngraving);
<Railcraft:machine.beta:4>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
benchEngraving.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
// detector energy
recipes.remove(<Railcraft:detector:10>);
<Railcraft:detector:10>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
// forceTrackEmitter
recipes.remove(<Railcraft:machine.epsilon:3>);
<Railcraft:machine.epsilon:3>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
// fluxTransformer
recipes.remove(<Railcraft:machine.epsilon:4>);
<Railcraft:machine.epsilon:4>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
// Remove vanille recipe. Save labels.
recipes.removeShaped(Locomotive);
Locomotive.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

// Remove vanille recipe. Save labels.
recipes.removeShaped(ELocomotive);
recipes.removeShaped(TunnelBore);	
ELocomotive.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
TunnelBore.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

// Coke Oven to LV age
NEI.overrideName(wetCokeBrick, "Wet Coke Oven Brick");
wetCokeBrick.displayName = "Wet Coke Oven Brick";

recipes.remove(wetCokeBrick);
recipes.remove(cokeOven);
recipes.remove(<Railcraft:stair>);
recipes.remove(<Railcraft:wall.alpha:1>);
wetCokeBrick.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
cokeOven.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
<Railcraft:stair>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
<Railcraft:wall.alpha:1>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

// --- Backs ---
	recipes.remove(backpackTrack);
	mods.forestry.Carpenter.removeRecipe(backpackTrackT2);
	recipes.remove(backpackIceman);
	mods.forestry.Carpenter.removeRecipe(backpackIcemanT2);
	recipes.remove(backpackApothecary);
	mods.forestry.Carpenter.removeRecipe(backpackApothecaryT2);
backpackTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
backpackIceman.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
backpackApothecary.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
backpackTrackT2.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
backpackIcemanT2.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
backpackApothecaryT2.addTooltip(format.red("RAILCRAFT WILL REMOVE"));


//TrackLayer/Relayer
recipes.remove(<Railcraft:cart.track.relayer>);
<Railcraft:cart.track.relayer>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
// cartTrackUndercutter
recipes.remove(<Railcraft:cart.undercutter>);
<Railcraft:cart.undercutter>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

// cartTrackLayer
recipes.remove(<Railcraft:cart.track.layer>);
<Railcraft:cart.track.layer>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

// cartTrackRemover
recipes.remove(<Railcraft:cart.track.remover>);
<Railcraft:cart.track.remover>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

// AdvItemLoader
recipes.remove(<Railcraft:machine.gamma:2>);
<Railcraft:machine.gamma:2>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

// AdvItemUnloader
recipes.remove(<Railcraft:machine.gamma:3>);
<Railcraft:machine.gamma:3>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));


// Standart
recipes.remove(standTrack);
recipes.remove(standJuncTrack);
recipes.remove(standSwitchTrack);
recipes.remove(standWyeTrack);
recipes.remove(standBoostTrack);
standTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
standJuncTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
standSwitchTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
standWyeTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
standBoostTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));


//Wooden
recipes.remove(woodenTrack);
recipes.remove(woodenJuncTrack);
recipes.remove(woodenSwitchTrack);
recipes.remove(woodenWyeTrack);
recipes.remove(woodenBoostTrack);
woodenTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
woodenJuncTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
woodenSwitchTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
woodenWyeTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
woodenBoostTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

//Reinforced
recipes.remove(reinforcedTrack);
recipes.remove(reinforcedJuncTrack);
recipes.remove(reinforcedSwitchTrack);
recipes.remove(reinforcedWyeTrack);
recipes.remove(reinforcedBoostTrack);
reinforcedTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
reinforcedJuncTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
reinforcedSwitchTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
reinforcedWyeTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
reinforcedBoostTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

//HS
recipes.remove(hsTrack);
recipes.remove(hsTransTrack);
recipes.remove(hsSwitchTrack);
recipes.remove(hsWyeTrack);
recipes.remove(hsBoostTrack);
hsTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
hsTransTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
hsSwitchTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
hsWyeTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
hsBoostTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

//Electric
recipes.remove(electricTrack);
recipes.remove(electricJuncTrack);
recipes.remove(electricSwitchTrack);
recipes.remove(electricWyeTrack);
electricTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
electricJuncTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
electricSwitchTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
electricWyeTrack.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

recipes.remove(trackActivator);
recipes.remove(trackControl);
recipes.remove(trackCoupler);
recipes.remove(trackDetector);
recipes.remove(trackDetectorDir);
recipes.remove(trackDisembarking);
recipes.remove(trackDisposal);
recipes.remove(trackElevator);
recipes.remove(trackEmbarking);
recipes.remove(trackGated);
recipes.remove(trackGatedOneWay);
recipes.remove(trackLauncher);
recipes.remove(trackLimiter);
recipes.remove(trackLocking);
recipes.remove(trackLoco);
recipes.remove(trackOneWay);
recipes.remove(trackPriming);
recipes.remove(trackRouting);
recipes.remove(trackStop);
recipes.remove(trackSuspended);
recipes.remove(trackWhistle);
recipes.remove(<Railcraft:machine.alpha:14>);
trackActivator.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackControl.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackCoupler.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackDetector.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackDetectorDir.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackDisembarking.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackDisposal.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackElevator.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackEmbarking.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackGated.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackGatedOneWay.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackLauncher.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackLimiter.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackLocking.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackLoco.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackOneWay.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackPriming.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackRouting.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackStop.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackSuspended.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
trackWhistle.addTooltip(format.red("RAILCRAFT WILL REMOVE"));


recipes.remove(<Railcraft:firestone.cut>);
recipes.remove(<Railcraft:firestone.refined:*>);
<Railcraft:firestone.cut>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
<Railcraft:firestone.refined:*>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

///////////////////////////////////////////// 2016, Alex Main
// Tanks
var mc_glass_pane  = <minecraft:glass_pane>;
var rc__iron_plate = <Railcraft:part.plate:0>;
var rc_steel_plate = <Railcraft:part.plate:1>;
var ore_pane_glass = <ore:paneGlassColorless>;
var plateIron = <ore:plateIron>;

// iron tank wall - remove railcarft recipe with only rc iron plates
recipes.removeShaped(<Railcraft:machine.beta>, [[rc__iron_plate, rc__iron_plate], [rc__iron_plate, rc__iron_plate]]);
// iron tank wall - remove gt recipe with anyIron (=wroughtIron)
recipes.removeShaped(<Railcraft:machine.beta>, [[wrench, <ore:plateIron>, <ore:plateIron>], [hhammer, <ore:plateIron>, <ore:plateIron>]]);
<Railcraft:machine.beta>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

// steel tank wall - remove rc recipe
recipes.removeShaped(<Railcraft:machine.beta:13>, [[rc_steel_plate, rc_steel_plate], [rc_steel_plate, rc_steel_plate]]);
<Railcraft:machine.beta:13>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

// iron tank valve - delete recipe that has not ore dict support
recipes.removeShaped(<Railcraft:machine.beta:2>, [[ironBars, rc__iron_plate, ironBars], [rc__iron_plate, <minecraft:lever>, rc__iron_plate], [ironBars, rc__iron_plate, ironBars]]);
<Railcraft:machine.beta:2>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

// steel tank valve - delete recipe that has not ore dict support
recipes.removeShaped(<Railcraft:machine.beta:15>, [[ironBars, rc_steel_plate, ironBars], [rc_steel_plate, <minecraft:lever>, rc_steel_plate], [ironBars, rc_steel_plate, ironBars]]);
<Railcraft:machine.beta:15>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

// iron tank glass - delete recipe that has not ore dict support
recipes.removeShaped(<Railcraft:machine.beta:1>, [[mc_glass_pane, rc__iron_plate, mc_glass_pane], [rc__iron_plate, mc_glass_pane, rc__iron_plate], [mc_glass_pane, rc__iron_plate, mc_glass_pane]]);
<Railcraft:machine.beta:1>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

// steel tank glass - delete recipe that has not ore dict support
recipes.removeShaped(<Railcraft:machine.beta:14>, [[mc_glass_pane, rc_steel_plate, mc_glass_pane], [rc_steel_plate, mc_glass_pane, rc_steel_plate], [mc_glass_pane, rc_steel_plate, mc_glass_pane]]);
<Railcraft:machine.beta:14>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

// SLABS 0-43
var slabIngredients = [
	<Railcraft:brick.sandy:0>,
	<Railcraft:brick.infernal:0>,
	<Railcraft:cube:1>,
	<minecraft:snow>,
	<minecraft:ice>,
	<minecraft:packed_ice>,
	<ore:blockIron>,
	<ore:blockGold>,
	<ore:blockDiamond>,
	<Railcraft:brick.frostbound:0>,

	<Railcraft:brick.quarried:0>,
	<Railcraft:brick.bleachedbone:0>,
	<Railcraft:brick.bloodstained:0>,
	<Railcraft:brick.abyssal:0>,
	<Railcraft:brick.sandy:1>,
	<Railcraft:brick.infernal:1>,
	<Railcraft:brick.frostbound:1>,
	<Railcraft:brick.quarried:1>,
	<Railcraft:brick.bleachedbone:1>,
	<Railcraft:brick.bloodstained:1>,

	<Railcraft:brick.abyssal:1>,
	<Railcraft:brick.nether:1>,
	<Railcraft:brick.sandy:2>,
	<Railcraft:brick.infernal:2>,
	<Railcraft:brick.frostbound:2>,
	<Railcraft:brick.quarried:2>,
	<Railcraft:brick.bleachedbone:2>,
	<Railcraft:brick.bloodstained:2>,
	<Railcraft:brick.abyssal:2>,
	<Railcraft:brick.nether:2>,

	<Railcraft:brick.sandy:5>,
	<Railcraft:brick.infernal:5>,
	<Railcraft:brick.frostbound:5>,
	<Railcraft:brick.quarried:5>,
	<Railcraft:brick.bleachedbone:5>,
	<Railcraft:brick.bloodstained:5>,
	<Railcraft:brick.abyssal:5>,
	<Railcraft:brick.nether:5>,
	<Railcraft:cube:8>,
	<minecraft:obsidian>,

	<ore:blockCopper>,
	<ore:blockTin>,
	<ore:blockLead>,
	<ore:blockSteel>
] as minetweaker.item.IIngredient[];

val toolSaw = <ore:craftingToolSaw>;

for i, block in slabIngredients {
	var slab = <Railcraft:slab>.definition.makeStack(i);
	recipes.remove(slab);
}

// Rebar
recipes.remove(<Railcraft:post:1>);
// Concreate / Wooden platform 
recipes.remove(<Railcraft:slab:2>);
recipes.remove(<Railcraft:cube:1>);
<Railcraft:post:1>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
<Railcraft:slab:2>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
<Railcraft:cube:1>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

recipes.removeShapeless(<Railcraft:post>);


// Wire Support Frame
recipes.remove(<Railcraft:frame>);
// --- Fuel
furnace.setFuel(<Railcraft:fluid.creosote.bucket>, 6400);
<Railcraft:frame>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
<Railcraft:fluid.creosote.bucket>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));

//---Advanced Coke Oven
<Railcraft:machine.alpha:12>.displayName = "Advanced Coke Oven Bricks";
recipes.remove(<Railcraft:machine.alpha:12>);
// --- Steel Shears
recipes.remove(<Railcraft:tool.steel.shears>);
<Railcraft:machine.alpha:7>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
<Railcraft:machine.alpha:12>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));
<Railcraft:tool.steel.shears>.addTooltip(format.red("RAILCRAFT WILL REMOVE"));


Extractor.addRecipe(<customthings:item:103>*4, <Railcraft:machine.alpha:7>);
Extractor.addRecipe(<customthings:item:122>*4, <Railcraft:machine.alpha:12>);