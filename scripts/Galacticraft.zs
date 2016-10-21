//////////////////////////////////////////////////////////////////////////////////////
// Galacticraft ModTweaker Script                                                   //
// Version: 1.0.1                                                                   //
// By: Siriulx                                                                      //
// Requirement: GT, PR, TiC, FR, OC, CarpentersBlocks, IronChest                    //
// Reference: GTNewHorizons Modpack                                                 //
// https://github.com/GTNewHorizons/NewHorizons/blob/master/scripts/Galacticraft.zs //
//////////////////////////////////////////////////////////////////////////////////////

//======== Mod Import ========

import mods.nei.NEI;
import mods.ic2.Compressor;
import mods.gregtech.Assembler;
import mods.gregtech.Extruder;
import mods.gregtech.FluidCanner;
import mods.gregtech.Centrifuge;
import mods.gregtech.ImplosionCompressor;
import mods.tconstruct.Casting;

//======== Variables ========

val CompressedAl = <ore:compressedAluminium>;
val CompressedIron = <ore:compressedIron>;
val CompressedMeteoricIron = <ore:compressedMeteoricIron>;
val CompressedSteel = <ore:compressedSteel>;
val CompressedBronze = <ore:compressedBronze>;
val CompressedTin = <ore:compressedTin>;
val CompressedCopper = <ore:compressedCopper>;
val CompressedTi = <ore:compressedTitanium>;
val CompressedDesh = <ore:compressedDesh>;

val AirFan = <GalacticraftCore:item.airFan>;
val AirVent = <GalacticraftCore:item.airVent>;
val OxygenConcentrator = <GalacticraftCore:item.oxygenConcentrator>;
val FreqMod = <GalacticraftCore:item.basicItem:19>;
val TCanister = <GalacticraftCore:item.canister>;
val CCanister = <GalacticraftCore:item.canister:1>;

val GCOHT = <GalacticraftCore:item.oxygenTankHeavyFull:2700>;
val GCCanister = <GalacticraftCore:item.oilCanisterPartial:1001>;
val OxygenPipe = <GalacticraftCore:tile.oxygenPipe>;
val SteelPole = <GalacticraftCore:item.steelPole>;
val GCAlWire = <GalacticraftCore:tile.aluminumWire>;
val GCHeavyAlWire = <GalacticraftCore:tile.aluminumWire:1>;
val TinDecoBlock = <GalacticraftCore:tile.gcBlockCore:4>;

val BWafer = <ore:waferBasic>;
val AdvWafer = <ore:waferAdvanced>;
val SolWafer = <ore:waferSolar>;
val GCSolPanel = <GalacticraftCore:item.basicItem>;
val GCFullSolPanel = <GalacticraftCore:item.basicItem:1>;
val RedCore = <GalacticraftMars:item.itemBasicAsteroids:8>;
val ThermalCloth = <GalacticraftMars:item.itemBasicAsteroids:7>;

val HDAI_T1 = <gregtech:gt.metaitem.01:32462>;
val HDAI_T2 = <gregtech:gt.metaitem.01:32463>;
val HDAI_T3 = <gregtech:gt.metaitem.01:32464>;

val T1Plate = <GalacticraftCore:item.heavyPlating>;
val T2Plate = <GalacticraftMars:item.null:3>;
val T3Plate = <GalacticraftMars:item.itemBasicAsteroids>;

val AdvAlloy = <ore:plateAlloyAdvanced>;
val ComMon = <gregtech:gt.metaitem.01:32740>;

val HHammer = <ore:craftingToolHardHammer>;
val Wrench = <ore:craftingToolWrench>;
val File = <ore:craftingToolFile>;
val Screwdriver = <ore:craftingToolScrewdriver>;

val IronPlate = <ore:plateIron>;
val SteelPlate = <ore:plateSteel>;
val SteelRotor = <ore:rotorSteel>;
val SteelScrew = <ore:screwSteel>;
val TinPlate = <ore:plateTin>;
val AlPlate = <ore:plateAluminium>;
val CopperPlate = <ore:plateCopper>;
val BronzePlate = <ore:plateBronze>;
val SLSteelPlate = <ore:plateStainlessSteel>;
val TiPlate = <ore:plateTitanium>;
val MetIronPlate = <ore:plateMeteoricIron>;
val DeshPlate = <ore:plateDesh>;
val DeshRing = <ore:ringDesh>;
val AlFoil = <ore:foilAluminium>;
val MetIronWF = <ore:wireFineMeteoricIron>;

val LVMotor = <gregtech:gt.metaitem.01:32600>;
val LVPump = <gregtech:gt.metaitem.01:32610>;
val LVPiston = <gregtech:gt.metaitem.01:32640>;
val LVSensor = <gregtech:gt.metaitem.01:32690>;
val LVEmitter = <gregtech:gt.metaitem.01:32680>;
val MVMotor = <gregtech:gt.metaitem.01:32601>;
val MVPump = <gregtech:gt.metaitem.01:32611>;
val MVPiston = <gregtech:gt.metaitem.01:32641>;
val MVConveyor = <gregtech:gt.metaitem.01:32631>;
val MVRobotArm = <gregtech:gt.metaitem.01:32651>;

val RubberBlock = <IC2:blockRubber>;
val IronBars = <minecraft:iron_bars>;
val String = <minecraft:string>;

//======== Remove Recipes ========

//Tools To be Removed
recipes.remove(<GalacticraftMars:item.atmosphericValve>);
NEI.hide(<GalacticraftMars:item.atmosphericValve>);
recipes.remove(<GalacticraftCore:item.sensorGlasses>);
NEI.hide(<GalacticraftCore:item.sensorGlasses>);
recipes.remove(<GalacticraftCore:item.steel_pickaxe>);
NEI.hide(<GalacticraftCore:item.steel_pickaxe>);
recipes.remove(<GalacticraftCore:item.steel_axe>);
NEI.hide(<GalacticraftCore:item.steel_axe>);
recipes.remove(<GalacticraftCore:item.steel_hoe>);
NEI.hide(<GalacticraftCore:item.steel_hoe>);
recipes.remove(<GalacticraftCore:item.steel_shovel>);
NEI.hide(<GalacticraftCore:item.steel_shovel>);
recipes.remove(<GalacticraftCore:item.steel_sword>);
NEI.hide(<GalacticraftCore:item.steel_sword>);
recipes.remove(<GalacticraftMars:item.titanium_axe>);
NEI.hide(<GalacticraftMars:item.titanium_axe>);
recipes.remove(<GalacticraftMars:item.titanium_pickaxe>);
NEI.hide(<GalacticraftMars:item.titanium_pickaxe>);
recipes.remove(<GalacticraftMars:item.titanium_shovel>);
NEI.hide(<GalacticraftMars:item.titanium_shovel>);
recipes.remove(<GalacticraftMars:item.titanium_hoe>);
NEI.hide(<GalacticraftMars:item.titanium_hoe>);
recipes.remove(<GalacticraftMars:item.titanium_sword>);
NEI.hide(<GalacticraftMars:item.titanium_sword>);
recipes.remove(<GalacticraftMars:item.deshPick>);
NEI.hide(<GalacticraftMars:item.deshPick>);
recipes.remove(<GalacticraftMars:item.deshPickSlime>);
NEI.hide(<GalacticraftMars:item.deshPickSlime>);
recipes.remove(<GalacticraftMars:item.deshAxe>);
NEI.hide(<GalacticraftMars:item.deshAxe>);
recipes.remove(<GalacticraftMars:item.deshHoe>);
NEI.hide(<GalacticraftMars:item.deshHoe>);
recipes.remove(<GalacticraftMars:item.deshSpade>);
NEI.hide(<GalacticraftMars:item.deshSpade>);
recipes.remove(<GalacticraftMars:item.deshSword>);
NEI.hide(<GalacticraftMars:item.deshSword>);

//Remove Some Machines and Blocks
recipes.remove(<GalacticraftCore:tile.refinery>);
NEI.hide(<GalacticraftCore:tile.refinery>);
recipes.remove(<GalacticraftCore:tile.machine>);
NEI.hide(<GalacticraftCore:tile.machine>);
recipes.remove(<GalacticraftCore:tile.machine:12>);
NEI.hide(<GalacticraftCore:tile.machine:12>);
recipes.remove(<GalacticraftCore:tile.machine2>);
NEI.hide(<GalacticraftCore:tile.machine2>);
recipes.remove(<GalacticraftCore:tile.machine2:4>);
NEI.hide(<GalacticraftCore:tile.machine2:4>);
recipes.remove(<GalacticraftCore:tile.machineTiered:4>);
NEI.hide(<GalacticraftCore:tile.machineTiered:4>);
recipes.remove(<GalacticraftCore:tile.machineTiered:12>);
NEI.hide(<GalacticraftCore:tile.machineTiered:12>);
recipes.remove(<GalacticraftMars:tile.marsMachineT2>);
NEI.hide(<GalacticraftMars:tile.marsMachineT2>);
recipes.remove(<GalacticraftMars:tile.marsMachineT2:4>);
NEI.hide(<GalacticraftMars:tile.marsMachineT2:4>);
recipes.remove(<GalacticraftMars:tile.marsMachineT2:8>);
NEI.hide(<GalacticraftMars:tile.marsMachineT2:8>);
recipes.remove(<GalacticraftMars:tile.marsMachine>);
NEI.hide(<GalacticraftMars:tile.marsMachine>);
recipes.remove(<GalacticraftCore:tile.enclosed:2>);
NEI.hide(<GalacticraftCore:tile.enclosed:2>);
recipes.remove(<GalacticraftCore:tile.enclosed:3>);
NEI.hide(<GalacticraftCore:tile.enclosed:3>);
recipes.remove(<GalacticraftCore:tile.enclosed:4>);
NEI.hide(<GalacticraftCore:tile.enclosed:4>);
recipes.remove(<GalacticraftCore:tile.enclosed:5>);
NEI.hide(<GalacticraftCore:tile.enclosed:5>);
recipes.remove(<GalacticraftCore:tile.enclosed:6>);
NEI.hide(<GalacticraftCore:tile.enclosed:6>);

//Remove Metal Blocks Recipes
recipes.remove(<GalacticraftCore:tile.gcBlockCore:9>);
NEI.hide(<GalacticraftCore:tile.gcBlockCore:9>);
recipes.remove(<GalacticraftCore:tile.gcBlockCore:10>);
NEI.hide(<GalacticraftCore:tile.gcBlockCore:10>);
recipes.remove(<GalacticraftCore:tile.gcBlockCore:11>);
NEI.hide(<GalacticraftCore:tile.gcBlockCore:11>);
recipes.remove(<GalacticraftCore:tile.gcBlockCore:12>);
NEI.hide(<GalacticraftCore:tile.gcBlockCore:12>);
Casting.removeBasinRecipe(<GalacticraftMars:tile.mars:8>);
NEI.hide(<GalacticraftMars:tile.mars:8>);

//Remove Some Materials
recipes.remove(<GalacticraftMars:item.carbonFragments>);
NEI.hide(<GalacticraftMars:item.carbonFragments>);
recipes.remove(<GalacticraftMars:item.null:1>);
NEI.hide(<GalacticraftMars:item.null:1>);
recipes.remove(<GalacticraftMars:item.null:6>);
NEI.hide(<GalacticraftMars:item.null:6>);
recipes.remove(<GalacticraftMars:tile.hydrogenPipe>);
NEI.hide(<GalacticraftMars:tile.hydrogenPipe>);

//Remove Foods
recipes.remove(<GalacticraftCore:item.basicItem:15>);
NEI.hide(<GalacticraftCore:item.basicItem:15>);
recipes.remove(<GalacticraftCore:item.basicItem:16>);
NEI.hide(<GalacticraftCore:item.basicItem:16>);
recipes.remove(<GalacticraftCore:item.basicItem:17>);
NEI.hide(<GalacticraftCore:item.basicItem:17>);
recipes.remove(<GalacticraftCore:item.basicItem:18>);
NEI.hide(<GalacticraftCore:item.basicItem:18>);

//Hide Some Useless Ore
NEI.hide(<GalacticraftCore:tile.gcBlockCore:5>);
NEI.hide(<GalacticraftCore:tile.gcBlockCore:6>);
NEI.hide(<GalacticraftCore:tile.gcBlockCore:7>);
NEI.hide(<GalacticraftCore:tile.moonBlock>);
NEI.hide(<GalacticraftCore:tile.moonBlock:1>);
NEI.hide(<GalacticraftMars:tile.mars>);
NEI.hide(<GalacticraftMars:tile.mars:1>);
NEI.hide(<GalacticraftMars:tile.mars:2>);
NEI.hide(<GalacticraftMars:tile.mars:3>);
NEI.hide(<GalacticraftMars:tile.asteroidsBlock:3>);
NEI.hide(<GalacticraftMars:tile.asteroidsBlock:4>);
NEI.hide(<GalacticraftMars:tile.asteroidsBlock:5>);
NEI.hide(<GalacticraftCore:item.basicItem:2>);
NEI.hide(<GalacticraftCore:item.basicItem:3>);
NEI.hide(<GalacticraftCore:item.basicItem:4>);
NEI.hide(<GalacticraftCore:item.basicItem:5>);
NEI.hide(<GalacticraftMars:item.itemBasicAsteroids:3>);
NEI.hide(<GalacticraftMars:item.itemBasicAsteroids:4>);
NEI.hide(<GalacticraftMars:item.itemBasicAsteroids:5>);
NEI.hide(<GalacticraftMars:item.null>);
NEI.hide(<GalacticraftMars:item.null:2>);

//======== Liquid Recipes ========
FluidCanner.addRecipe(<gregtech:gt.metaitem.01:30013>, <IC2:itemCellEmpty>, null, <liquid:liquidoxygen> * 40);
FluidCanner.addRecipe(<gregtech:gt.metaitem.01:30012>, <IC2:itemCellEmpty>, null, <liquid:liquidnitrogen> * 40);
Centrifuge.addRecipe([<IC2:itemCellEmpty>], null, <gregtech:gt.metaitem.01:30013>, null, <liquid:liquidoxygen> * 40, [10000], 120, 960);
Centrifuge.addRecipe([<IC2:itemCellEmpty>], null, <gregtech:gt.metaitem.01:30012>, null, <liquid:liquidnitrogen> * 40, [10000], 120, 960);

//======== Materials Recipes ========

//AirFan
recipes.remove(AirFan);
recipes.addShaped(AirFan, [
[SteelScrew, Screwdriver, SteelScrew], 
[<ore:stickSteel>, SteelRotor, <ore:stickSteel>], 
[SteelScrew, Wrench, SteelScrew]]);

//AirVent
recipes.remove(AirVent);
recipes.addShaped(AirVent, [
[SteelScrew, IronBars, SteelScrew],
[IronBars, SteelPlate, IronBars],
[SteelScrew, IronBars, SteelScrew]]);

//OxygenConcentrator
recipes.remove(OxygenConcentrator);
recipes.addShaped(OxygenConcentrator, [
[SteelPlate, AirVent, SteelPlate],
[SteelPlate, AirFan, SteelPlate],
[TCanister, LVPump, TCanister]]);

//Full Solar Panel
recipes.remove(GCFullSolPanel);
recipes.addShaped(GCFullSolPanel, [
[GCSolPanel, GCSolPanel, GCSolPanel],
[GCAlWire, BWafer, GCAlWire],
[GCSolPanel, GCSolPanel, GCSolPanel]]);

//Solar Panel
recipes.remove(GCSolPanel);
Assembler.addRecipe(GCSolPanel, <ProjRed|Core:projectred.core.part:59>, <Railcraft:part.plate:1>, 200, 60);

//Tin Canister



//Copper Canister
recipes.remove(CCanister);
Extruder.addRecipe(CCanister * 2, <Railcraft:part.plate:3> * 7, <gregtech:gt.metaitem.01:32354> * 0, 120, 30);

//Oxygen Pipe
recipes.remove(OxygenPipe);
Extruder.addRecipe(OxygenPipe * 2 , <IC2:blockAlloyGlass>, <gregtech:gt.metaitem.01:32359> * 0, 60, 64);

//Steel Pole
recipes.remove(SteelPole);
Extruder.addRecipe(SteelPole, <GalacticraftCore:item.basicItem:9> * 2, <gregtech:gt.metaitem.01:32352> * 0, 600, 64);

//Battery
recipes.remove(<GalacticraftCore:item.battery:*>);
recipes.addShapeless(<GalacticraftCore:item.battery:*>, [<gregtech:gt.metaitem.01:32500>]);

//Aluminium Wire
recipes.remove(GCAlWire);
recipes.addShapeless(GCAlWire, [<ore:cableGt01Aluminium>]);

//Heavy Aluminium Wire
recipes.remove(GCHeavyAlWire);
recipes.addShaped(GCHeavyAlWire * 4, [
[AlPlate, AlPlate, AlPlate],
[GCAlWire, GCAlWire, GCAlWire],
[AlPlate, AlPlate, AlPlate]]);

//Remove Wafer & Use PR Wafer
BWafer.add(<ProjRed|Core:projectred.core.part:12>);
BWafer.remove(<GalacticraftCore:item.basicItem:13>);
NEI.hide(<GalacticraftCore:item.basicItem:13>);
AdvWafer.add(<ProjRed|Core:projectred.core.part:13>);
AdvWafer.remove(<GalacticraftCore:item.basicItem:14>);
NEI.hide(<GalacticraftCore:item.basicItem:14>);
SolWafer.add(<ProjRed|Core:projectred.core.part:59>);
SolWafer.remove(<GalacticraftCore:item.basicItem:12>);
NEI.hide(<GalacticraftCore:item.basicItem:12>);

//Red Core
recipes.remove(RedCore);
recipes.addShaped(RedCore, [
[null, <ore:ringRedAlloy>, null],
[<ore:ringRedAlloy>, <ore:lensDiamond>, <ore:ringRedAlloy>],
[null, <ore:ringRedAlloy>, null]]);

//Ambiete Thermal Controller
recipes.remove(<GalacticraftCore:item.basicItem:20>);
recipes.addShaped(<GalacticraftCore:item.basicItem:20>,  [
[<ore:circuitAdvanced>, AirVent, <ore:circuitAdvanced>],
[CompressedBronze, CompressedSteel, CompressedBronze],
[CompressedAl, AdvWafer, CompressedAl]]);

//Thermal Cloth
recipes.remove(ThermalCloth);
recipes.addShaped(ThermalCloth , [
[AlFoil, MetIronWF, AlFoil],
[MetIronWF, <ore:clothManaweave>, MetIronWF],
[AlFoil, MetIronWF, AlFoil]]);

//Canister
recipes.remove(GCCanister);
mods.gregtech.Assembler.addRecipe(GCCanister, <GalacticraftCore:item.basicItem:9> * 4, <gregtech:gt.metaitem.01:28305> * 4, 200, 64);
mods.gregtech.Assembler.addRecipe(<GalacticraftCore:item.canister>,null, <gregtech:gt.metaitem.01:17057> * 4, 200, 64);
//======== Machines Recipes ========

//Rocket Launch Pad
recipes.remove(<GalacticraftCore:tile.landingPad>);
recipes.addShaped(<GalacticraftCore:tile.landingPad> * 3, [
[CompressedIron, CompressedIron, CompressedIron],
[AdvAlloy, AdvAlloy, AdvAlloy],
[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>]]);

//Buggy Fueling Pad
recipes.remove(<GalacticraftCore:tile.landingPad:1>);
recipes.addShaped(<GalacticraftCore:tile.landingPad:1> * 3, [
[CompressedSteel, CompressedSteel, CompressedSteel],
[AdvAlloy, AdvAlloy, AdvAlloy],
[<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>]]);

//Oxygen Collector
recipes.remove(<GalacticraftCore:tile.oxygenCollector>);
recipes.addShaped(<GalacticraftCore:tile.oxygenCollector>, [
[AlPlate, OxygenConcentrator, AlPlate],
[AirVent, AirFan, LVMotor],
[SteelPlate, BronzePlate, SteelPlate]]);

//Oxygen Compressor
recipes.remove(<GalacticraftCore:tile.oxygenCompressor>);
recipes.addShaped(<GalacticraftCore:tile.oxygenCompressor>, [
[AlPlate, OxygenConcentrator, AlPlate],
[MVPiston, GCCanister, MVMotor],
[SteelPlate, BronzePlate, SteelPlate]]);

//Oxygen Decompressor
recipes.remove(<GalacticraftCore:tile.oxygenCompressor:4>);
recipes.addShaped(<GalacticraftCore:tile.oxygenCompressor:4>, [
[AlPlate, OxygenConcentrator, AlPlate],
[LVMotor, GCCanister, AirFan],
[SteelPlate, BronzePlate, SteelPlate]]);

//Oxygen Storage Module
recipes.remove(<GalacticraftCore:tile.machine2:8>);
recipes.addShaped(<GalacticraftCore:tile.machine2:8>, [
[SteelPlate, SteelPlate, SteelPlate],
[GCOHT, GCOHT, GCOHT],
[SteelPlate, SteelPlate, SteelPlate]]);

//Oxygen Bubble Distributor
recipes.remove(<GalacticraftCore:tile.distributor>);
recipes.addShaped(<GalacticraftCore:tile.distributor>, [
[AlPlate, AirFan, AlPlate],
[AirVent, LVMotor, AirVent],
[SteelPlate, AirFan, SteelPlate]]);

//Oxygen Detector
recipes.remove(<GalacticraftCore:tile.oxygenDetector>);
recipes.addShaped(<GalacticraftCore:tile.oxygenDetector>, [
[SteelPlate, SteelPlate, SteelPlate],
[AirVent, LVSensor, AirVent],
[AlPlate, <gregtech:gt.blockmachines:2000>, AlPlate]]);

//Oxygen Sealer
recipes.remove(<GalacticraftCore:tile.sealer>);
recipes.addShaped(<GalacticraftCore:tile.sealer>, [
[AlPlate, AirVent, AlPlate],
[AirVent, <GalacticraftCore:tile.distributor>, AirVent],
[SteelPlate, <GalacticraftCore:tile.oxygenDetector>, SteelPlate]]);

//Fuel Loader
recipes.remove(<GalacticraftCore:tile.fuelLoader>);
recipes.addShaped(<GalacticraftCore:tile.fuelLoader>, [
[SteelPlate, BWafer, SteelPlate],
[MVPump, <gregtech:gt.metaitem.01:32405>, MVMotor],
[AlPlate, <ore:pipeMediumSteel>, AlPlate]]);

//Cargo Loader
recipes.remove(<GalacticraftCore:tile.cargo>);
recipes.addShaped(<GalacticraftCore:tile.cargo>, [
[AlPlate, <minecraft:hopper>, AlPlate],
[MVConveyor, <gregtech:gt.blockmachines:9232>, MVConveyor],
[SteelPlate, <ore:pipeMediumBrass>, SteelPlate]]);

//Cargo Unloader
recipes.remove(<GalacticraftCore:tile.cargo:4>);
recipes.addShaped(<GalacticraftCore:tile.cargo:4>, [
[SteelPlate, <ore:pipeMediumBrass>, SteelPlate],
[MVConveyor, <gregtech:gt.blockmachines:9232>, MVConveyor],
[AlPlate, <minecraft:hopper>, AlPlate]]);

//Nasa Workbench
recipes.remove(<GalacticraftCore:tile.rocketWorkbench>);
recipes.addShaped(<GalacticraftCore:tile.rocketWorkbench>, [
[MVRobotArm, ComMon, MVRobotArm],
[<ore:waferAdvanced>, <minecraft:crafting_table>, <ore:waferAdvanced>],
[<ore:circuitAdvanced>, <gregtech:gt.blockcasings:2>, <ore:circuitAdvanced>]]);

//Air Lock Frame
recipes.remove(<GalacticraftCore:tile.airLockFrame>);
recipes.addShaped(<GalacticraftCore:tile.airLockFrame> * 3, [
[SteelPlate, <ore:screwStainlessSteel>, SteelPlate],
[BWafer, AirVent, BWafer],
[AlPlate, <ore:screwStainlessSteel>, AlPlate]]);

//Air Lock Controller
recipes.remove(<GalacticraftCore:tile.airLockFrame:1>);
recipes.addShaped(<GalacticraftCore:tile.airLockFrame:1>, [
[MetIronPlate, OxygenConcentrator, MetIronPlate],
[AirVent, ComMon, AirVent],
[AdvWafer, <ore:wireGt01RedAlloy>, AdvWafer]]);

//Basic Solar Panel
recipes.remove(<GalacticraftCore:tile.solar>);
recipes.addShaped(<GalacticraftCore:tile.solar>, [
[null, GCFullSolPanel, null],
[SteelPlate, SteelPole, SteelPlate],
[GCAlWire, <gregtech:gt.blockmachines:11>, GCAlWire]]);

//Advanced Solar Panel
recipes.remove(<GalacticraftCore:tile.solar:4>);
recipes.addShaped(<GalacticraftCore:tile.solar:4>, [
[AlPlate, <GalacticraftCore:tile.solar>, AlPlate],
[AdvWafer, LVMotor, LVSensor],
[GCHeavyAlWire, AlPlate, GCHeavyAlWire]]);

//Energy Storage Module
recipes.remove(<GalacticraftCore:tile.machineTiered>);
recipes.addShaped(<GalacticraftCore:tile.machineTiered>, [
[CompressedSteel, CompressedSteel, CompressedSteel],
[<ore:cableGt01AnyCopper>, <IC2:itemBatChargeRE:*>, <ore:cableGt01AnyCopper>],
[BWafer, <gregtech:gt.blockmachines:11>, BWafer]]);

//Energy Storage Cluster
recipes.remove(<GalacticraftCore:tile.machineTiered:8>);
recipes.addShaped(<GalacticraftCore:tile.machineTiered:8>, [
[CompressedDesh, CompressedDesh, CompressedDesh],
[<ore:cableGt02Gold>, <IC2:itemBatChargeAdv:*>, <ore:cableGt02Gold>],
[AdvWafer, <gregtech:gt.blockmachines:12>, AdvWafer]]);

//Spin Truster
recipes.remove(<GalacticraftCore:tile.spinThruster>);
recipes.addShaped(<GalacticraftCore:tile.spinThruster>, [
[CompressedTi, CompressedTi, CompressedTi],
[<GalacticraftCore:item.fuelCanisterPartial:1>, AdvWafer, <GalacticraftCore:item.fuelCanisterPartial:1>],
[<GalacticraftCore:item.engine>, T1Plate, <GalacticraftCore:item.engine>]]);

//Display Screen
recipes.remove(<GalacticraftCore:tile.viewScreen>);
recipes.addShaped(<GalacticraftCore:tile.viewScreen>, [
[SteelPlate,GCSolPanel,SteelPlate],
[BWafer, <gregtech:gt.metaitem.01:32740>, BWafer],
[SteelPlate, SteelPlate, SteelPlate]]);

//Telemetry Unit
recipes.remove(<GalacticraftCore:tile.telemetry>);
recipes.addShaped(<GalacticraftCore:tile.telemetry>, [
[FreqMod, TinPlate, LVEmitter],
[BWafer, TinPlate, BWafer],
[TinPlate, CopperPlate, TinPlate]]);

//Arc Lamp
recipes.remove(<GalacticraftCore:tile.arclamp>);
recipes.addShaped(<GalacticraftCore:tile.arclamp>, [
[DeshPlate,DeshPlate,DeshPlate],
[DeshPlate, <GalacticraftCore:item.battery:*>, <ProjRed|Illumination:projectred.illumination.lamp:16>],
[DeshPlate, DeshPlate, DeshPlate]]);

//Energy Beam Reflector
recipes.remove(<GalacticraftMars:tile.beamReflector>);
recipes.addShaped(<GalacticraftMars:tile.beamReflector>, [
[DeshRing, RedCore, DeshRing],
[<ore:screwDesh>, <ore:stickDesh>, <ore:screwDesh>],
[CompressedDesh, CompressedDesh, CompressedDesh]]);

//Energy Beam Receiver
recipes.remove(<GalacticraftMars:tile.beamReceiver>);
recipes.addShaped(<GalacticraftMars:tile.beamReceiver>, [
[CompressedTin, DeshRing, CompressedTin],
[DeshRing, RedCore, DeshRing],
[CompressedTin, DeshRing, CompressedTin]]);

//Short range Teleporter
recipes.remove(<GalacticraftMars:tile.telepadShort>);
recipes.addShaped(<GalacticraftMars:tile.telepadShort>, [
[TiPlate, CompressedDesh, TiPlate],
[RedCore, <IC2:blockMachine2>, RedCore],
[TiPlate, CompressedDesh, TiPlate]]);

//Cryogenic Chamber
recipes.remove(<GalacticraftMars:tile.marsMachine:4>);
recipes.addShaped(<GalacticraftMars:tile.marsMachine:4>, [
[T3Plate, null, T3Plate],
[<GalacticraftMars:item.null:3>, <CarpentersBlocks:itemCarpentersBed>, <GalacticraftMars:item.null:3>],
[T3Plate, <minecraft:clock>, T3Plate]]);

//Launch Controller
recipes.remove(<GalacticraftMars:tile.marsMachine:8>);
recipes.addShaped(<GalacticraftMars:tile.marsMachine:8>, [
[AdvWafer, <GalacticraftCore:item.basicItem:19>, AdvWafer],
[T3Plate, <gregtech:gt.blockmachines:13>, T3Plate],
[<ore:cableGt02Aluminium>, T3Plate, <ore:cableGt02Aluminium>]]);

//Communications Dish (Decoration Machine)
//recipes.remove(<GalacticraftCore:tile.dish>);
recipes.addShaped(<GalacticraftCore:tile.dish>, [
[AdvWafer, <gregtech:gt.metaitem.01:32691>, AdvWafer],
[CompressedDesh, <gregtech:gt.blockmachines:12>, CompressedDesh],
[<ore:cableGt02Aluminium>, CompressedDesh, <ore:cableGt02Aluminium>]]);

//======== Blocks Recipes ========

//Tin Decoration Block
recipes.remove(TinDecoBlock);
recipes.addShaped(TinDecoBlock * 6, [
[HHammer, <ore:stone>, null],
[<ore:stone>, CompressedTin, <ore:stone>],
[null, <ore:stone>, Wrench]]);

recipes.remove(<GalacticraftCore:tile.gcBlockCore:3>);
recipes.addShaped(<GalacticraftCore:tile.gcBlockCore:3> * 6, [
[null, <ore:stone>, HHammer],
[<ore:stone>, CompressedTin, <ore:stone>],
[Wrench, <ore:stone>, null]]);

//Sealable Oxygen Pipe
recipes.remove(<GalacticraftCore:tile.enclosed:1>);
recipes.addShaped(<GalacticraftCore:tile.enclosed:1>, [
[null, HHammer, null],
[TinDecoBlock, OxygenPipe, TinDecoBlock],
[null, File, null]]);

//Sealable Aluminium Wire
recipes.remove(<GalacticraftCore:tile.enclosed:14>);
recipes.addShaped(<GalacticraftCore:tile.enclosed:14>, [
[null, HHammer, null],
[TinDecoBlock, GCAlWire, TinDecoBlock],
[null, File, null]]);

//Sealable heavy Aluminium Wire
recipes.remove(<GalacticraftCore:tile.enclosed:15>);
recipes.addShaped(<GalacticraftCore:tile.enclosed:15>, [
[null, HHammer, null],
[TinDecoBlock, GCHeavyAlWire, TinDecoBlock],
[null, File, null]]);

// --- Walk away
recipes.remove(<GalacticraftMars:tile.walkway>);
recipes.addShaped(<GalacticraftMars:tile.walkway> * 5, [
[CompressedDesh, CompressedDesh, CompressedDesh],
[null, CompressedDesh, null],
[null, null, null]]);

// --- Walk Away Aluminium
recipes.removeShaped(<GalacticraftMars:tile.walkwayWire>);
recipes.addShaped(<GalacticraftMars:tile.walkwayWire> * 5, [
[CompressedDesh, CompressedDesh, CompressedDesh],
[GCHeavyAlWire, CompressedDesh, GCHeavyAlWire],
[GCHeavyAlWire, GCHeavyAlWire, GCHeavyAlWire]]);

// --- Walk Away Pipes
recipes.removeShaped(<GalacticraftMars:tile.walkwayOxygenPipe>);
recipes.addShaped(<GalacticraftMars:tile.walkwayOxygenPipe> * 5, [
[CompressedDesh, CompressedDesh, CompressedDesh],
[OxygenPipe, CompressedDesh, OxygenPipe],
[OxygenPipe, OxygenPipe, OxygenPipe]]);

//Astro Miner Base
recipes.remove(<GalacticraftMars:tile.minerBase>);
recipes.addShaped(<GalacticraftMars:tile.minerBase> * 4, [
[CompressedTi, <IronChest:BlockIronChest>, CompressedTi],
[RedCore, <ore:frameGtTungsten>, RedCore],
[CompressedSteel, <GalacticraftCore:tile.machineTiered>, CompressedSteel]]);

//======== Tools & Suit Recipes ========

//Oxygen Mask
recipes.remove(<GalacticraftCore:item.oxygenMask>);
Assembler.addRecipe(<GalacticraftCore:item.oxygenMask>, <IC2:itemArmorHazmatHelmet>, <IC2:blockAlloyGlass> * 2, <liquid:glue> * 144, 400, 60);

//Oxygen Gear
recipes.remove(<GalacticraftCore:item.oxygenGear>);
recipes.addShaped(<GalacticraftCore:item.oxygenGear>, [
[null, LVSensor, null],
[OxygenPipe, OxygenConcentrator, OxygenPipe],
[OxygenPipe, null, OxygenPipe]]);

//Frequencey Module
recipes.remove(FreqMod);
recipes.addShaped(FreqMod, [
[CompressedAl, <gregtech:gt.metaitem.01:32690>, CompressedAl],
[BWafer, <gregtech:gt.metaitem.01:32740>, BWafer],
[CompressedTin, <GalacticraftCore:item.battery:*>, CompressedTin]]);

//Light Oxygen Tank
recipes.removeShaped(<GalacticraftCore:item.oxygenTankLightFull:900>);
recipes.addShaped(<GalacticraftCore:item.oxygenTankLightFull:900>, [
[IronPlate, OxygenPipe, IronPlate],
[SteelPlate, <ore:cellEmpty>, SteelPlate],
[CompressedIron, IronPlate, CompressedIron]]);

//Medium Oxygen Tank
recipes.removeShaped(<GalacticraftCore:item.oxygenTankMedFull:1800>);
recipes.addShaped(<GalacticraftCore:item.oxygenTankMedFull:1800>, [
[AlPlate, OxygenPipe,AlPlate],
[SLSteelPlate, <GalacticraftCore:item.oxygenTankLightFull:*>, SLSteelPlate],
[CompressedAl, AlPlate, CompressedAl]]);

//Heavy Oxygen Tank
recipes.removeShaped(<GalacticraftCore:item.oxygenTankHeavyFull:2700>);
recipes.addShaped(<GalacticraftCore:item.oxygenTankHeavyFull:2700>, [
[DeshPlate, OxygenPipe,DeshPlate],
[TiPlate, <GalacticraftCore:item.oxygenTankMedFull:*>, TiPlate],
[CompressedDesh, DeshPlate, CompressedDesh]]);

//Sensor Lens
recipes.remove(<GalacticraftCore:item.sensorLens>);
recipes.addShaped(<GalacticraftCore:item.sensorLens>, [
[null, <ore:ringRedAlloy>, null],
[<ore:circuitAdvanced>, <ore:lensDiamond>, <ore:circuitAdvanced>],
[<ore:screwStainlessSteel>, <ore:craftingToolScrewdriver>, <ore:screwStainlessSteel>]]);

//Heavy Duty Helm
recipes.remove(<GalacticraftCore:item.steel_helmet>);
recipes.addShaped(<GalacticraftCore:item.steel_helmet>, [
[CompressedSteel, CompressedSteel, CompressedSteel],
[CompressedSteel, HHammer, CompressedSteel],
[null, null, null]]);

//Heavy Duty Chest Plate
recipes.remove(<GalacticraftCore:item.steel_chestplate>);
recipes.addShaped(<GalacticraftCore:item.steel_chestplate>, [
[CompressedSteel, HHammer, CompressedSteel],
[CompressedSteel, CompressedSteel, CompressedSteel],
[CompressedSteel, CompressedSteel, CompressedSteel]]);

//Heavy Duty Leggings
recipes.remove(<GalacticraftCore:item.steel_leggings>);
recipes.addShaped(<GalacticraftCore:item.steel_leggings>, [
[CompressedSteel, CompressedSteel, CompressedSteel],
[CompressedSteel, HHammer, CompressedSteel],
[CompressedSteel, null, CompressedSteel]]);

//Heavy Duty Boots
recipes.remove(<GalacticraftCore:item.steel_boots>);
recipes.addShaped(<GalacticraftCore:item.steel_boots>, [
[CompressedSteel, null, CompressedSteel],
[CompressedSteel, HHammer, CompressedSteel],
[null, null, null]]);

//Desh Helmet
recipes.remove(<GalacticraftMars:item.deshHelmet>);
recipes.addShaped(<GalacticraftMars:item.deshHelmet>, [
[CompressedDesh, CompressedDesh, CompressedDesh],
[CompressedDesh, HHammer, CompressedDesh],
[null, null, null]]);

//Desh Chest Plate
recipes.remove(<GalacticraftMars:item.deshChestplate>);
recipes.addShaped(<GalacticraftMars:item.deshChestplate>, [
[CompressedDesh, HHammer, CompressedDesh],
[CompressedDesh, CompressedDesh, CompressedDesh],
[CompressedDesh, CompressedDesh, CompressedDesh]]);

//Desh Leggings
recipes.remove(<GalacticraftMars:item.deshLeggings>);
recipes.addShaped(<GalacticraftMars:item.deshLeggings>, [
[CompressedDesh, CompressedDesh, CompressedDesh],
[CompressedDesh, HHammer, CompressedDesh],
[CompressedDesh, null, CompressedDesh]]);

//Desh Boots
recipes.remove(<GalacticraftMars:item.deshBoots>);
recipes.addShaped(<GalacticraftMars:item.deshBoots>, [
[CompressedDesh, null, CompressedDesh],
[CompressedDesh, HHammer, CompressedDesh],
[null, null, null]]);

//Titanium Helm
recipes.remove(<GalacticraftMars:item.titanium_helmet>);
recipes.addShaped(<GalacticraftMars:item.titanium_helmet>, [
[CompressedTi, CompressedTi, CompressedTi],
[CompressedTi, HHammer, CompressedTi],
[null, null, null]]);

//Titanium Chest Plate
recipes.remove(<GalacticraftMars:item.titanium_chestplate>);
recipes.addShaped(<GalacticraftMars:item.titanium_chestplate>, [
[CompressedTi, HHammer, CompressedTi],
[CompressedTi, CompressedTi, CompressedTi],
[CompressedTi, CompressedTi, CompressedTi]]);

//Titanium Leggings
recipes.remove(<GalacticraftMars:item.titanium_leggings>);
recipes.addShaped(<GalacticraftMars:item.titanium_leggings>, [
[CompressedTi, CompressedTi, CompressedTi],
[CompressedTi, HHammer, CompressedTi],
[CompressedTi, null, CompressedTi]]);

//Titanium Boots
recipes.remove(<GalacticraftMars:item.titanium_boots>);
recipes.addShaped(<GalacticraftMars:item.titanium_boots>, [
[CompressedTi, null, CompressedTi],
[CompressedTi, HHammer, CompressedTi],
[null, null, null]]);

//Thermal Padding Helm
recipes.remove(<GalacticraftMars:item.thermalPadding>);
Assembler.addRecipe(<GalacticraftMars:item.thermalPadding>, ThermalCloth * 5, <IC2:itemArmorHazmatHelmet>, 750, 400);

//Thermal Padding Chestpiece
recipes.remove(<GalacticraftMars:item.thermalPadding:1>);
Assembler.addRecipe(<GalacticraftMars:item.thermalPadding:1>, ThermalCloth * 8, <IC2:itemArmorHazmatChestplate>, 1200, 400);

//Thermal Padding Leggings
recipes.remove(<GalacticraftMars:item.thermalPadding:2>);
Assembler.addRecipe(<GalacticraftMars:item.thermalPadding:2>, ThermalCloth * 7, <IC2:itemArmorHazmatLeggings>, 1050, 400);

//Thermal Padding Boots
recipes.remove(<GalacticraftMars:item.thermalPadding:3>);
Assembler.addRecipe(<GalacticraftMars:item.thermalPadding:3>, ThermalCloth * 4, <IC2:itemArmorRubBoots>, 600, 400);

//Grappler
recipes.remove(<GalacticraftMars:item.grapple>);
recipes.addShaped(<GalacticraftMars:item.grapple>, [
[null, null, <ore:toolHeadArrowMeteoricSteel>],
[String, String, String],
[<ore:ringMeteoricSteel>, null, null]]);

//======== Compressed Plate ========

//Cu, Sn, Al, Fe50C, SnCu3, Fe
Compressor.addRecipe(<GalacticraftCore:item.basicItem:6>, <gregtech:gt.metaitem.01:18035>);
Compressor.addRecipe(<GalacticraftCore:item.basicItem:7>, <gregtech:gt.metaitem.01:18057>);
Compressor.addRecipe(<GalacticraftCore:item.basicItem:8>, <gregtech:gt.metaitem.01:18019>);
Compressor.addRecipe(<GalacticraftCore:item.basicItem:9>, <gregtech:gt.metaitem.01:18305>);
Compressor.addRecipe(<GalacticraftCore:item.basicItem:10>, <gregtech:gt.metaitem.01:18300>);
Compressor.addRecipe(<GalacticraftCore:item.basicItem:11>, <gregtech:gt.metaitem.01:18032>);

//Meteoric Iron, Ti, Desh
Compressor.addRecipe(<GalacticraftCore:item.meteoricIronIngot:1>, <gregtech:gt.metaitem.01:18340>);
Compressor.addRecipe(<GalacticraftMars:item.itemBasicAsteroids:6>, <gregtech:gt.metaitem.01:18028>);
Compressor.addRecipe(<GalacticraftMars:item.null:5>, <gregtech:gt.metaitem.01:18884>);

//Heavy Duty Alloy Ingot T1
recipes.remove(HDAI_T1);
recipes.addShaped(HDAI_T1, [
[<ore:boltNickel>, HHammer, <ore:boltNickel>], 
[CompressedBronze, CompressedAl, CompressedSteel], 
[<ore:boltNickel>, null, <ore:boltNickel>]]);
Extruder.addRecipe(T1Plate, HDAI_T1, <gregtech:gt.metaitem.01:32350> * 0, 400, 120);

//Heavy Duty Alloy Ingot T2
recipes.remove(HDAI_T2);
recipes.addShaped(HDAI_T2, [
[null, <ore:boltTitanium>, <ore:boltTitanium>], 
[HHammer, T1Plate, CompressedMeteoricIron], 
[null, <ore:boltTitanium>, <ore:boltTitanium>]]);
ImplosionCompressor.addRecipe([T2Plate, <gregtech:gt.metaitem.01:28> * 2], HDAI_T2, 24);

//Heavy Duty Alloy Ingot T3
recipes.remove(HDAI_T3);
recipes.addShaped(HDAI_T3, [
[null, <ore:boltEuropium>, <ore:boltEuropium>], 
[HHammer, T2Plate, CompressedDesh], 
[null, <ore:boltEuropium>, <ore:boltEuropium>]]);
ImplosionCompressor.addRecipe([T3Plate, <gregtech:gt.metaitem.01:70> * 2], HDAI_T3, 4);

//======== NASA Craft Parts ========

//Tier 1 Booster
recipes.remove(<GalacticraftCore:item.engine:1>);
recipes.addShaped(<GalacticraftCore:item.engine:1>, [
[CompressedMeteoricIron, CompressedMeteoricIron, CompressedMeteoricIron],
[T1Plate, <GalacticraftCore:item.fuelCanisterPartial:1>, T1Plate],
[T1Plate, AirVent, T1Plate]]);

//Tier 1 Rocket Engine
recipes.remove(<GalacticraftCore:item.engine>);
recipes.addShaped(<GalacticraftCore:item.engine>, [
[<gregtech:gt.metaitem.01:32731>, <gregtech:gt.metaitem.01:32476>, <minecraft:stone_button>],
[T1Plate, <gregtech:gt.blockcasings3:14>, T1Plate],
[T1Plate, <ore:craftingToolHardHammer>, T1Plate]]);

//Heavy Rocket Engine
recipes.remove(<GalacticraftMars:item.itemBasicAsteroids:1>);
recipes.addShaped(<GalacticraftMars:item.itemBasicAsteroids:1> , [
[<GalacticraftCore:item.engine:1>, T3Plate, <GalacticraftCore:item.engine:1>],
[T3Plate, T3Plate, T3Plate],
[<GalacticraftCore:item.engine>, T3Plate, <GalacticraftCore:item.engine>]]);

//Rocket Fins
recipes.remove(<GalacticraftCore:item.rocketFins>);
recipes.addShaped(<GalacticraftCore:item.rocketFins>, [
[<ore:craftingToolHardHammer>, CompressedSteel, <ore:craftingToolFile>],
[T1Plate, CompressedSteel, T1Plate],
[T1Plate, <ore:craftingToolSaw>, T1Plate]]);

//Heavy Rocket Fins
recipes.remove(<GalacticraftMars:item.itemBasicAsteroids:2>);
recipes.addShaped(<GalacticraftMars:item.itemBasicAsteroids:2>, [
[<ore:craftingToolHardHammer>, T2Plate, <ore:craftingToolFile>],
[T3Plate, T2Plate, T3Plate],
[T3Plate, <ore:craftingToolSaw>, T3Plate]]);

//Nose Cone
recipes.remove(<GalacticraftCore:item.noseCone>);
recipes.addShaped(<GalacticraftCore:item.noseCone>, [
[<ore:craftingToolScrewdriver>, <ProjRed|Illumination:projectred.illumination.cagelamp2.inv:14>, <ore:craftingToolHardHammer>],
[<ore:screwNickel>, T1Plate, <ore:screwNickel>],
[T1Plate, T1Plate, T1Plate]]);

//Heavy Nose Cone
recipes.remove(<GalacticraftMars:item.heavyNoseCone>);
recipes.addShaped(<GalacticraftMars:item.heavyNoseCone>, [
[<ore:craftingToolScrewdriver>, <GalacticraftCore:item.noseCone>, <ore:craftingToolHardHammer>],
[<ore:screwEuropium>, T3Plate, <ore:screwEuropium>],
[T3Plate, T3Plate, T3Plate]]);

//Buggy Wheel
recipes.remove(<GalacticraftCore:item.buggymat>);
recipes.addShaped(<GalacticraftCore:item.buggymat>, [
[CompressedSteel, <ore:plateRubber>, CompressedSteel],
[<ore:plateRubber>, CompressedTi, <ore:plateRubber>],
[CompressedSteel, <ore:plateRubber>, CompressedSteel]]);

//Buggy Seat
recipes.remove(<GalacticraftCore:item.buggymat:1>);
recipes.addShaped(<GalacticraftCore:item.buggymat:1>, [
[null, RubberBlock, CompressedSteel],
[RubberBlock, RubberBlock, CompressedSteel],
[CompressedSteel, CompressedSteel, CompressedSteel]]);

//Buggy Storage Box
recipes.remove(<GalacticraftCore:item.buggymat:2>);
recipes.addShaped(<GalacticraftCore:item.buggymat:2>, [
[CompressedSteel, RubberBlock, CompressedSteel],
[CompressedSteel, <IronChest:BlockIronChest>, CompressedSteel],
[CompressedSteel, CompressedSteel, CompressedSteel]]);

//Orion Drive
recipes.remove(<GalacticraftMars:item.orionDrive>);
recipes.addShaped(<GalacticraftMars:item.orionDrive>, [
[CompressedTi, <GalacticraftMars:item.itemBasicAsteroids:8>, CompressedTi],
[<ore:circuitMaster>, <ore:oc:hdd3>, <ore:circuitMaster>],
[CompressedSteel, <GalacticraftMars:item.itemBasicAsteroids:8>, CompressedSteel]]);
