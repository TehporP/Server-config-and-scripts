//Nerf of EIO   //                                         
//By MlINE      //                                           
//////////////////

//Import
import mods.gregtech.Assembler;
import mods.gregtech.PlateBender;
import mods.gregtech.Wiremill;
import mods.gregtech.BlastFurnace;
import mods.gregtech.AlloySmelter;
import mods.gregtech.ChemicalBath;
import mods.gregtech.FluidExtractor;
import mods.gregtech.FluidCanner;
import mods.gregtech.Mixer;
import mods.nei.NEI;
import mods.gregtech.ChemicalReactor;

//Disable
recipes.remove(<EnderIO:blockSagMill>);
recipes.remove(<EnderIO:blockAlloySmelter>);
recipes.remove(<EnderIO:blockZombieGenerator>);
recipes.remove(<EnderIO:blockCombustionGenerator>);
recipes.remove(<EnderIO:blockStirlingGenerator>);
recipes.remove(<EnderIO:blockSolarPanel>);
recipes.remove(<EnderIO:blockSolarPanel:1>);
recipes.remove(<EnderIO:blockCapBank:1>);
recipes.remove(<EnderIO:blockCapBank:2>);
recipes.remove(<EnderIO:blockCapBank:3>);
recipes.remove(<EnderIO:blockPainter>);
recipes.remove(<EnderIO:blockCrafter>);
recipes.remove(<EnderIO:blockVat>);
recipes.remove(<EnderIO:blockPowerMonitor>);
recipes.remove(<EnderIO:blockFarmStation>);
recipes.remove(<EnderIO:blockWirelessCharger>);
recipes.remove(<EnderIO:blockTank>);
recipes.remove(<EnderIO:blockTank:1>);
recipes.remove(<EnderIO:blockReservoir>);
recipes.remove(<EnderIO:blockVacuumChest>);
recipes.remove(<EnderIO:blockTransceiver>);
recipes.remove(<EnderIO:blockInventoryPanel>);
recipes.remove(<EnderIO:blockEnderIo>);
recipes.remove(<EnderIO:blockTravelAnchor>);
recipes.remove(<EnderIO:blockTelePad>);
recipes.remove(<EnderIO:blockSliceAndSplice>);
recipes.remove(<EnderIO:blockSoulBinder>);
recipes.remove(<EnderIO:blockKillerJoe>);
recipes.remove(<EnderIO:blockAttractor>);
recipes.remove(<EnderIO:blockSpawnGuard>);
recipes.remove(<EnderIO:blockExperienceObelisk>);
recipes.remove(<EnderIO:blockWeatherObelisk>);
recipes.remove(<EnderIO:blockEnchanter>);
recipes.remove(<EnderIO:blockDarkSteelAnvil>);
recipes.remove(<EnderIO:blockDarkIronBars>);
recipes.remove(<EnderIO:itemRedstoneConduit>);
recipes.remove(<EnderIO:itemRedstoneConduit:1>);
recipes.remove(<EnderIO:itemRedstoneConduit:2>);
recipes.remove(<EnderIO:itemPowerConduit>);
recipes.remove(<EnderIO:itemPowerConduit:1>);
recipes.remove(<EnderIO:itemPowerConduit:2>);
recipes.remove(<EnderIO:itemLiquidConduit>);
recipes.remove(<EnderIO:itemLiquidConduit:1>);
recipes.remove(<EnderIO:itemLiquidConduit:2>);
recipes.remove(<EnderIO:itemItemConduit>);
recipes.remove(<EnderIO:itemMEConduit>);
recipes.remove(<EnderIO:itemMEConduit:1>);
recipes.remove(<EnderIO:itemBasicFilterUpgrade>);
recipes.remove(<EnderIO:itemBasicFilterUpgrade:1>);
recipes.remove(<EnderIO:itemExtractSpeedUpgrade>);
recipes.remove(<EnderIO:itemExtractSpeedUpgrade:1>);
recipes.remove(<EnderIO:itemMachinePart>);
recipes.remove(<EnderIO:itemMachinePart:1>);
recipes.remove(<EnderIO:itemMaterial:1>);
recipes.remove(<EnderIO:itemMaterial:2>);
recipes.remove(<EnderIO:itemConduitProbe:1>);
recipes.remove(<EnderIO:item.darkSteel_helmet>);
recipes.remove(<EnderIO:item.darkSteel_chestplate>);
recipes.remove(<EnderIO:item.darkSteel_leggings>);
recipes.remove(<EnderIO:item.darkSteel_boots>);
recipes.remove(<EnderIO:item.darkSteel_sword>);
recipes.remove(<EnderIO:item.darkSteel_pickaxe>);
recipes.remove(<EnderIO:item.darkSteel_axe>);
recipes.remove(<EnderIO:item.darkSteel_shears>);
recipes.remove(<EnderIO:itemMagnet>);

//Disable Capacitor
recipes.remove(<EnderIO:itemBasicCapacitor>);
recipes.remove(<EnderIO:itemBasicCapacitor:1>);
recipes.remove(<EnderIO:itemBasicCapacitor:2>);
recipes.remove(<gregtech:gt.metaitem.01:32306>);

//New Item
Assembler.addRecipe(<EnderIO:itemBasicFilterUpgrade>, <EnderIO:itemBasicCapacitor>, <ore:circuitBasic>, <liquid:molten.tin> * 120, 200, 30);

//New Capacitor
//Basic
Assembler.addRecipe(<EnderIO:itemBasicCapacitor>, <ore:circuitBasic> * 2, <gregtech:gt.blockmachines:1380> * 8, <liquid:molten.tin> * 250, 1200, 128);
//Adv
Assembler.addRecipe(<EnderIO:itemBasicCapacitor:1>, <ore:circuitAdvanced> * 2, <gregtech:gt.metaitem.01:17043> * 3, <liquid:molten.tin> * 500, 1900, 196);
//Add Rubidium
recipes.addShapeless(<gregtech:gt.metaitem.01:2043> * 3, [<ore:dustCobalt>, <ore:dustCobalt>, <ore:dustIron>, <ore:dustIron>, <ore:dustIron>, <ore:dustSilver>, <ore:dustSilver>, <ore:dustAluminum>, <ore:dustAluminum>]);
furnace.remove(<gregtech:gt.metaitem.01:11043>);
mods.gregtech.BlastFurnace.addRecipe([<gregtech:gt.metaitem.01:11043>], <liquid:oxygen> * 2050, [<gregtech:gt.metaitem.01:2043>], 2300, 186, 2700);
//Ula
Assembler.addRecipe(<EnderIO:itemBasicCapacitor:2>, <ore:circuitMaster> * 2, <gregtech:gt.blockmachines:1564> * 2, <liquid:molten.rubidium> * 288, 2400, 320);

//New Ingot
//Charged Alloy
mods.gregtech.AlloySmelter.addRecipe(<EnderIO:itemAlloy:1>, <EnderIO:itemAlloy>, <minecraft:glowstone_dust> * 12, 600, 96);
//Pluse Alloy
mods.gregtech.AlloySmelter.addRecipe(<EnderIO:itemAlloy:2>, <EnderIO:itemAlloy:1>, <gregtech:gt.metaitem.01:2533> * 8, 800, 128);
//Redstone Alloy
mods.gregtech.BlastFurnace.addRecipe([<EnderIO:itemAlloy:3>], <liquid:molten.redstone> * 2304, [<gregtech:gt.metaitem.01:11308>], 2400, 164, 1700);
//Conductive Ingot
mods.gregtech.ChemicalBath.addRecipe([<EnderIO:itemAlloy:4>], <minecraft:iron_ingot>, <liquid:molten.steel> * 288, [10000], 1400, 32);
//Phased Ingot
mods.gregtech.ChemicalBath.addRecipe([<EnderIO:itemAlloy:5>], <EnderIO:itemAlloy:4>, <liquid:molten.enderium> * 1152, [10000], 1600, 96);
//Enderium
mods.gregtech.FluidExtractor.addRecipe(<gregtech:gt.metaitem.01:2805>, <minecraft:ender_pearl> , <liquid:molten.enderium> * 144, 6000, 20, 4);
//Soul Ingot
mods.gregtech.BlastFurnace.addRecipe([<EnderIO:itemAlloy:7>], <liquid:molten.aluminium> * 100, [<minecraft:gold_ingot>, <minecraft:soul_sand> * 32], 2400, 120, 1700);

//Glass
mods.gregtech.AlloySmelter.addRecipe(<EnderIO:blockFusedQuartz> * 2, <minecraft:quartz> * 4, <ore:dustObsidian> * 2, 100, 30);
mods.gregtech.AlloySmelter.addRecipe(<EnderIO:blockFusedQuartz:1>, <minecraft:glass>, <ore:dustGlass>, 100, 16);
mods.gregtech.AlloySmelter.addRecipe(<EnderIO:blockFusedQuartz:2>, <EnderIO:blockFusedQuartz>, <ore:dustGlowstone> * 3, 100, 16);
mods.gregtech.AlloySmelter.addRecipe(<EnderIO:blockFusedQuartz:3>, <EnderIO:blockFusedQuartz:1>, <ore:dustGlowstone> * 3, 100, 16);
mods.gregtech.AlloySmelter.addRecipe(<EnderIO:blockFusedQuartz:4>, <EnderIO:blockFusedQuartz>, <ore:dyeBlack>, 100, 16);
mods.gregtech.AlloySmelter.addRecipe(<EnderIO:blockFusedQuartz:5>, <EnderIO:blockFusedQuartz:1>, <ore:dyeBlack>, 100, 16);

//Pipe


mods.gregtech.Assembler.addRecipe(<EnderIO:itemItemConduit>, <gregtech:gt.blockmachines:5110>, <ore:plateIron> * 2, <liquid:glue> * 100, 200, 64);

mods.gregtech.Assembler.addRecipe(<EnderIO:itemLiquidConduit>, <EnderIO:itemItemConduit>, <minecraft:dye:2> * 4, <liquid:glue> * 100, 200, 64);

mods.gregtech.Assembler.addRecipe(<EnderIO:itemLiquidConduit:1>, <EnderIO:itemLiquidConduit>, <gregtech:gt.metaitem.01:32600> * 2, <liquid:glue> * 100, 200, 128);

mods.gregtech.Assembler.addRecipe(<EnderIO:itemLiquidConduit:2>, <EnderIO:itemLiquidConduit:1>, <gregtech:gt.metaitem.01:17532> * 4, <liquid:glue> * 100, 200, 256);

//New Block
//Sharpless
recipes.addShapeless(<EnderIO:itemExtractSpeedUpgrade>, [<EnderIO:itemBasicFilterUpgrade>, <EnderIO:itemAlloy:1>]);
recipes.addShapeless(<EnderIO:itemExtractSpeedUpgrade:1>, [<EnderIO:itemBasicFilterUpgrade>, <ore:ingotElectricalSteel>]);
recipes.addShapeless(<EnderIO:blockPowerMonitor>, [<EnderIO:blockCapBank:1>, <EnderIO:itemBasicFilterUpgrade>]);
recipes.addShapeless(<EnderIO:blockSolarPanel:1>, [<EnderIO:blockSolarPanel>, <EnderIO:blockSolarPanel>, <EnderIO:blockSolarPanel>, <EnderIO:blockSolarPanel>]);

//Sharped
recipes.addShaped(<EnderIO:blockEnchanter>, [[<ore:bookWritten>, <EnderIO:itemBasicCapacitor:1>, <ore:bookWritten>], [<gregtech:gt.metaitem.01:32487>, <minecraft:enchanting_table>, <ore:bookWritten>], [<ore:blockVibrantAlloy>, <ore:blockRedstoneAlloy>, <ore:blockPulsatingIron>]]);
recipes.addShaped(<EnderIO:blockSoulBinder>, [[<ore:ingotSoularium>, <EnderIO:itemFrankenSkull>, <ore:ingotSoularium>], [<ore:ingotSoularium>, <gregtech:gt.blockmachines:12>, <ore:ingotSoularium>], [<EnderIO:itemAlloy:7>, <EnderIO:blockEndermanSkull:2>, <ore:ingotSoularium>]]);
recipes.addShaped(<EnderIO:blockSliceAndSplice>, [[<ore:craftingToolSaw>, <gregtech:gt.metaitem.01:32651>, <ore:craftingToolWrench>], [<gregtech:gt.metaitem.01:32651>, <gregtech:gt.blockmachines:212>, <gregtech:gt.metaitem.01:32651>], [<ore:craftingToolBlade>, <EnderIO:itemBasicCapacitor>, <ore:craftingToolSolderingIron>]]);
recipes.addShaped(<gregtech:gt.metaitem.02:16100> * 8, [[<gregtech:gt.metaitem.02:19302>]]);
recipes.addShaped(<Botania:pool:1>, [[<gregtech:gt.metaitem.02:19302>], [<gregtech:gt.metaitem.02:19302>]]);
recipes.addShaped(<gregtech:gt.metaitem.02:24355> * 32, [[<minecraft:snow_layer>, <minecraft:snow_layer>, <minecraft:snow_layer>], [<minecraft:snow_layer>, <minecraft:snow_layer>]]);
recipes.addShaped(<EnderIO:blockTravelAnchor>, [[<EnderIO:itemAlloy:5>, <ore:pearlEnder>, <EnderIO:itemAlloy:5>], [<EnderIO:itemAlloy:3>, <EnderIO:blockEnderIo>, <EnderIO:itemAlloy:3>], [<ore:ingotVibrantAlloy>, <EnderIO:itemBasicCapacitor:1>, <ore:ingotVibrantAlloy>]]);
recipes.addShaped(<EnderIO:blockEnderIo>, [[<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>], [<ore:blockGlassHardened>, <EnderIO:itemBasicCapacitor>, <ore:blockGlassHardened>], [<ore:ingotEnergeticAlloy>, <ore:pearlEnderEye>, <ore:ingotEnergeticAlloy>]]);
recipes.addShaped(<EnderIO:blockInventoryPanel>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <EnderIO:itemBasicCapacitor>, <ore:plateIron>], [<ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>]]);
recipes.addShaped(<EnderIO:blockTransceiver>, [[<EnderIO:itemBasicCapacitor:1>, <EnderIO:itemFrankenSkull:4>, <EnderIO:itemBasicCapacitor:1>], [<ore:craftingTeleporter>, <gregtech:gt.blockmachines:13>, <ore:craftingTeleporter>], [<EnderIO:itemAlloy:3>, <EnderIO:itemBasicCapacitor:2>, <EnderIO:itemAlloy:3>]]);
recipes.addShaped(<EnderIO:blockVacuumChest>, [[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>], [<ore:plateAluminium>, <EnderIO:itemMagnet:16>, <ore:plateAluminium>], [<ore:plateAluminium>, <EnderIO:blockBuffer>, <ore:plateAluminium>]]);
recipes.addShaped(<EnderIO:itemMachinePart>, [[<ore:barsIron>, <ore:barsIron>, <ore:barsIron>], [<ore:barsIron>, <ore:frameGtAluminium>, <ore:barsIron>], [<ore:barsIron>, <ore:barsIron>, <ore:barsIron>]]);
NEI.hide(<Botania:pool:1>);//[[<ore:blockGlass>, <Railcraft:part.plate>, <ore:blockGlass>], [<ore:blockGlass>, null, <ore:blockGlass>], [<ore:blockGlass>, <Railcraft:part.plate>, <ore:blockGlass>]]);
recipes.addShaped(<EnderIO:blockReservoir> * 2, [[<gregtech:gt.metaitem.01:17028>, <gregtech:gt.metaitem.01:17028>, <gregtech:gt.metaitem.01:17028>], [<gregtech:gt.metaitem.01:17028>, <ore:craftingTank>, <gregtech:gt.metaitem.01:17028>], [<gregtech:gt.metaitem.01:17028>, <gregtech:gt.metaitem.01:17028>, <gregtech:gt.metaitem.01:17028>]]);
recipes.addShaped(<EnderIO:blockWirelessCharger>, [[<ore:ingotDarkSteel>, <EnderIO:itemFrankenSkull:4>, <ore:ingotDarkSteel>], [<gregtech:gt.metaitem.01:32692>, <gregtech:gt.blockmachines:13>, <gregtech:gt.metaitem.01:32692>], [<ore:ingotDarkSteel>, <gregtech:gt.metaitem.01:32501>, <ore:ingotDarkSteel>]]);
recipes.addShaped(<EnderIO:itemBasicFilterUpgrade:1>, [[<ore:gearGtSmallMagnalium>, <ore:craftingToolScrewdriver>, <ore:rotorSteelMagnetic>], [<ore:circuitBasic>, <EnderIO:itemBasicFilterUpgrade>, <ore:circuitBasic>], [<ore:rotorSteelMagnetic>, <ore:craftingToolFile>, <ore:gearGtSmallMagnalium>]]);
recipes.addShaped(<Botania:pool:1>, [[<gregtech:gt.metaitem.02:19302>], [<gregtech:gt.metaitem.02:19302>]]);
recipes.addShaped(<gregtech:gt.metaitem.02:24033> * 8, [[<minecraft:snow_layer>, <minecraft:snow_layer>], [<minecraft:snow_layer>, <minecraft:snow_layer>]]);
recipes.addShaped(<minecraft:wool:12> * 32, [[<minecraft:snow_layer>, <minecraft:snow_layer>], [<minecraft:snow_layer>, <minecraft:snow_layer>, <minecraft:snow_layer>]]);
recipes.addShaped(<EnderIO:blockFarmStation>, [[<EnderIO:itemAlloy:3>, <ore:ingotPhasedIron>, <EnderIO:itemAlloy:3>], [<minecraft:diamond_axe>, <EnderIO:itemFrankenSkull:2>, <minecraft:diamond_hoe>], [<EnderIO:itemBasicCapacitor:1>, <gregtech:gt.blockmachines:13>, <EnderIO:itemBasicCapacitor:1>]]);
recipes.addShaped(<EnderIO:blockVat>, [[<gregtech:gt.blockmachines:5132>, <ore:craftingToolWrench>, <gregtech:gt.blockmachines:5132>], [<gregtech:gt.blockmachines:491>, <gregtech:gt.blockmachines:12>, <gregtech:gt.blockmachines:501>], [<gregtech:gt.blockmachines:5132>, <EnderIO:itemBasicCapacitor>, <gregtech:gt.blockmachines:5132>]]);
recipes.addShaped(<EnderIO:blockCrafter>, [[<ore:craftingToolHardHammer>, <EnderIO:itemFrankenSkull>, <ore:craftingTableWood>], [<ore:craftingToolFile>, <gregtech:gt.blockmachines:12>, <ore:craftingToolScrewdriver>], [<ore:craftingTableWood>, <EnderIO:itemBasicCapacitor>, <ore:craftingToolWrench>]]);
recipes.addShaped(<EnderIO:blockPainter>, [[<IC2:itemToolPainter>, <IC2:itemToolPainter>, <IC2:itemToolPainter>], [<ore:dyeLightBlue>, <gregtech:gt.blockmachines:12>, <ore:dye>], [<ore:dyeLightBlue>, <EnderIO:itemBasicCapacitor>, <ore:dyeLightBlue>]]);
recipes.addShaped(<gregtech:gt.blockores:20129> * 8, [[null, null, <ore:wireFineInvar>], [null, <ore:wireFineInvar>, null], [<ore:wireFineInvar>, null, null]]);
recipes.addShaped(<EnderIO:blockCapBank:3>, [[<ore:cableGt04TungstenSteel>, <EnderIO:itemBasicCapacitor:1>, <ore:cableGt04TungstenSteel>], [<ore:batteryMaster>, <ore:batteryMaster>, <ore:batteryMaster>], [<ore:cableGt04TungstenSteel>, <EnderIO:itemBasicCapacitor:2>, <ore:cableGt04TungstenSteel>]]);
recipes.addShaped(<EnderIO:blockCapBank:2>, [[<ore:cableGt02Silver>, <EnderIO:itemBasicCapacitor:1>, <ore:cableGt02Silver>], [<gregtech:gt.metaitem.01:32502>, <gregtech:gt.metaitem.01:32502>, <gregtech:gt.metaitem.01:32502>], [<ore:cableGt02Silver>, <EnderIO:itemBasicCapacitor:1>, <gregtech:gt.blockmachines:1467>]]);
recipes.addShaped(<EnderIO:blockCapBank:1>, [[<ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>], [<gregtech:gt.blockmachines:1427>, <gregtech:gt.metaitem.01:32501>, <gregtech:gt.blockmachines:1427>], [<ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>]]);
recipes.addShaped(<EnderIO:blockSolarPanel>, [[<ore:paneGlassColorless>, <EnderIO:blockFusedQuartz:2>, <ore:paneGlassColorless>], [<EnderIO:blockFusedQuartz:2>, <gregtech:gt.metaitem.01:32750>, <EnderIO:blockFusedQuartz:2>], [<ore:itemWeatherCrystal>, <EnderIO:itemBasicCapacitor>, <ore:itemWeatherCrystal>]]);
recipes.addShaped(<EnderIO:blockZombieGenerator>, [[<ore:ingotElectricalSteel>, <EnderIO:itemSoulVessel>, <ore:ingotElectricalSteel>], [<EnderIO:itemBasicCapacitor>, <EnderIO:itemFrankenSkull>, <EnderIO:itemBasicCapacitor>], [<gregtech:gt.metaitem.01:32611>, <ore:ingotEnergeticAlloy>, <gregtech:gt.metaitem.01:32611>]]);
recipes.addShaped(<EnderIO:blockTank>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:plateSteel>, <irontank:silverTank>, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
recipes.addShaped(<EnderIO:blockTank:1>, [[<gregtech:gt.metaitem.01:17321>, <gregtech:gt.metaitem.01:17321>, <gregtech:gt.metaitem.01:17321>], [<gregtech:gt.metaitem.01:17321>, <irontank:goldTank>, <gregtech:gt.metaitem.01:17321>], [<gregtech:gt.metaitem.01:17321>, <gregtech:gt.metaitem.01:17321>, <gregtech:gt.metaitem.01:17321>]]);
