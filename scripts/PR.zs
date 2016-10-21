//////////////////////////////////////////////////////////////////////////////////////
// Project Red ModTweaker Script                                                    //
// Version: 1.0.0                                                                   //
// By: Siriulx, EXTER, DreamMasterXXL                                               //
// Requirement: Tconstruct, Gregtech                                                //
//////////////////////////////////////////////////////////////////////////////////////

//======== Mod Import ========

import mods.nei.NEI;
import mods.tconstruct.Smeltery;
import mods.tconstruct.Casting;
import mods.gregtech.FluidSolidifier;
import mods.gregtech.CuttingSaw;
import mods.gregtech.Assembler;
import mods.gregtech.PrecisionLaser;
import mods.gregtech.Wiremill;
import minetweaker.oredict.IOreDictEntry;
import minetweaker.item.IItemStack;

var dyes = [
  <ore:dyeBlack>,
  <ore:dyeRed>,
  <ore:dyeGreen>,
  <ore:dyeBrown>,
  <ore:dyeBlue>,
  <ore:dyePurple>,
  <ore:dyeCyan>,
  <ore:dyeLightGray>,
  <ore:dyeGray>,
  <ore:dyePink>,
  <ore:dyeLime>,
  <ore:dyeYellow>,
  <ore:dyeLightBlue>,
  <ore:dyeMagenta>,
  <ore:dyeOrange>,
  <ore:dyeWhite>
] as IOreDictEntry[];

var inswires = [
  <ProjRed|Transmission:projectred.transmission.wire:16>,
  <ProjRed|Transmission:projectred.transmission.wire:15>,
  <ProjRed|Transmission:projectred.transmission.wire:14>,
  <ProjRed|Transmission:projectred.transmission.wire:13>,
  <ProjRed|Transmission:projectred.transmission.wire:12>,
  <ProjRed|Transmission:projectred.transmission.wire:11>,
  <ProjRed|Transmission:projectred.transmission.wire:10>,
  <ProjRed|Transmission:projectred.transmission.wire:9>,
  <ProjRed|Transmission:projectred.transmission.wire:8>,
  <ProjRed|Transmission:projectred.transmission.wire:7>,
  <ProjRed|Transmission:projectred.transmission.wire:6>,
  <ProjRed|Transmission:projectred.transmission.wire:5>,
  <ProjRed|Transmission:projectred.transmission.wire:4>,
  <ProjRed|Transmission:projectred.transmission.wire:3>,
  <ProjRed|Transmission:projectred.transmission.wire:2>,
  <ProjRed|Transmission:projectred.transmission.wire:1>
] as IItemStack[];

val redwire = <ProjRed|Transmission:projectred.transmission.wire:0>;

//Remove TiC Making Red Alloy
Smeltery.removeAlloy(<liquid:redmetal.molten>);
Casting.removeTableRecipe(<ProjRed|Core:projectred.core.part:10>);
Smeltery.removeMelting(<ProjRed|Core:projectred.core.part:10>);
Smeltery.removeMelting(<minecraft:redstone>);
Smeltery.removeMelting(<minecraft:redstone_block>);

//Hide Useless Materials
NEI.hide(<ProjRed|Core:projectred.core.part:52>);
NEI.hide(<ProjRed|Core:projectred.core.part:53>);
NEI.hide(<ProjRed|Core:projectred.core.part:54>);

//Remove PR Red/Blue Alloy
// --- Red
recipes.remove(<ProjRed|Core:projectred.core.part:40>);
furnace.remove(<ore:ingotRedAlloy>);
NEI.hide(<ProjRed|Core:projectred.core.part:10>);
NEI.hide(<ProjRed|Core:projectred.core.part:40>);
// --- Blue
recipes.remove(<ProjRed|Core:projectred.core.part:57>);
furnace.remove(<ore:ingotElectrotineAlloy>);
NEI.hide(<ProjRed|Core:projectred.core.part:55>);
NEI.hide(<ProjRed|Core:projectred.core.part:57>);

//Mirror GT Blue Materials Ore Dic to PR
// --- Red
<ore:ingotElectrotineAlloy>.add(<gregtech:gt.metaitem.01:11309>);
<ore:ingotElectrotineAlloy>.remove(<ProjRed|Core:projectred.core.part:55>);
NEI.hide(<ProjRed|Core:projectred.core.part:55>);
// --- Blue
<ore:dustElectrotine>.add(<gregtech:gt.metaitem.01:2812>);
<ore:dustElectrotine>.remove(<ProjRed|Core:projectred.core.part:56>);
NEI.hide(<ProjRed|Core:projectred.core.part:56>);

//Change Wafers Recipes
// --- Basic Wafer
recipes.remove(<ProjRed|Core:projectred.core.part:41>);
NEI.hide(<ProjRed|Core:projectred.core.part:41>);
furnace.remove(<ProjRed|Core:projectred.core.part:11>);
recipes.remove(<ProjRed|Core:projectred.core.part:12>);
FluidSolidifier.addRecipe(<ProjRed|Core:projectred.core.part:11>, <gregtech:gt.metaitem.01:32313> * 0, <liquid:molten.silicon> * 576, 960, 8);
CuttingSaw.addRecipe([<ProjRed|Core:projectred.core.part:12> * 3 , <gregtech:gt.metaitem.01:2020>], <ProjRed|Core:projectred.core.part:11>, <liquid:ic2distilledwater> * 20, 200, 30);
// --- Adv Wafer
recipes.remove(<ProjRed|Core:projectred.core.part:42>);
furnace.remove(<ProjRed|Core:projectred.core.part:13>);
Assembler.addRecipe(<ProjRed|Core:projectred.core.part:42>, <ProjRed|Core:projectred.core.part:12>, <minecraft:redstone> * 8, null, 40, 30);
PrecisionLaser.addRecipe(<ProjRed|Core:projectred.core.part:13>, <ProjRed|Core:projectred.core.part:42>, <ore:craftingLensRed> * 0, 120, 120);
// --- Charged Wafer
recipes.remove(<ProjRed|Core:projectred.core.part:43>);
furnace.remove(<ProjRed|Core:projectred.core.part:14>);
Assembler.addRecipe(<ProjRed|Core:projectred.core.part:43>, <ProjRed|Core:projectred.core.part:12>, <minecraft:glowstone_dust> * 8, null, 40, 30);
PrecisionLaser.addRecipe(<ProjRed|Core:projectred.core.part:14>, <ProjRed|Core:projectred.core.part:43>, <ore:craftingLensYellow> * 0, 120, 120);
// --- Solar Wafer
recipes.remove(<ProjRed|Core:projectred.core.part:58>);
furnace.remove(<ProjRed|Core:projectred.core.part:59>);
Assembler.addRecipe(<ProjRed|Core:projectred.core.part:58>, <ProjRed|Core:projectred.core.part:12>, <gregtech:gt.metaitem.01:2812> * 8, null, 40, 30);
PrecisionLaser.addRecipe(<ProjRed|Core:projectred.core.part:59>, <ProjRed|Core:projectred.core.part:58>, <ore:craftingLensBlue> * 0, 120, 120);

//Change Red Alloy Wire Recipe
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire>);
Wiremill.addRecipe(<ProjRed|Transmission:projectred.transmission.wire> * 4, <gregtech:gt.blockmachines:2001>, 200, 2);

// Insulated Red Alloy Wires
for i, dye in dyes {
  var iwire = inswires[i];
  recipes.remove(iwire);
  recipes.addShapeless(iwire * 2,[redwire, redwire, <ore:plateRubber>, dye]);
}

// --- IC Workbench
recipes.remove(<ProjRed|Fabrication:projectred.integration.icblock>);
recipes.addShaped(<ProjRed|Fabrication:projectred.integration.icblock>, [
[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
[<gregtech:gt.metaitem.01:17809>, <BuildCraft|Factory:autoWorkbenchBlock>, <gregtech:gt.metaitem.01:17809>],
[<gregtech:gt.metaitem.01:17809>, <gregtech:gt.metaitem.01:17809>, <gregtech:gt.metaitem.01:17809>]]);

// --- IC Printer
recipes.remove(<ProjRed|Fabrication:projectred.integration.icblock:1>);
recipes.addShaped(<ProjRed|Fabrication:projectred.integration.icblock:1>, [
[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
[<ore:plateObsidian>, <ore:stickSteel>, <ore:plateObsidian>],
[<ore:stickSteel>, <gregtech:gt.blockmachines:321>, <ore:stickSteel>]]);

// --- IC Blue Print
recipes.remove(<ProjRed|Fabrication:projectred.fabrication.icblueprint>);
Assembler.addRecipe(<ProjRed|Fabrication:projectred.fabrication.icblueprint>, <gregtech:gt.metaitem.01:32712>, <gregtech:gt.metaitem.01:17526> * 4, <liquid:molten.redstone> * 144, 600, 30);

// --- IC Chip
recipes.remove(<ProjRed|Fabrication:projectred.fabrication.icchip>);
Assembler.addRecipe(<ProjRed|Fabrication:projectred.fabrication.icchip>, <IC2:itemPartCircuit>, <gregtech:gt.metaitem.01:17526>, <liquid:molten.redstone> * 144, 300, 30); 
