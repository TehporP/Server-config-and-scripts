//////////////////////////////////////////////////////////////////////////////////////
// Apple&Milk&Tea ModTweaker Script                                                 //
// Version: 1.0.1                                                                   //
// By: Siriulx                                                                      //
// Requirement: IC2, AMTWeaker, Tconstruct                                          //
//////////////////////////////////////////////////////////////////////////////////////

//======== Mod Import ========

import mods.nei.NEI;
import mods.ic2.Compressor;
import mods.tconstruct.Casting;
import mods.tconstruct.Smeltery;
import mods.amt.Plate;

//======== Variables ========
val dustFlint = <gregtech:gt.metaitem.01:2802>;
val gearChalcedony = <DCsAppleMilk:defeatedcrow.condensedMilk:3>;
val cassis_preserve = <DCsAppleMilk:defeatedcrow.condensedMilk:1>;

//Change Recipe of Chalcedony Shears
recipes.remove(<DCsAppleMilk:defeatedcrow.chalcedonyShears>);
recipes.addShaped(<DCsAppleMilk:defeatedcrow.chalcedonyShears>, [
[null, <DCsAppleMilk:defeatedcrow.chalcedony>, <minecraft:shears>], 
[null, <ore:stickCarbon>, <DCsAppleMilk:defeatedcrow.chalcedony>], 
[<ore:stickCarbon>, null, null]]);

//Change Chalcedony Recipe
furnace.remove(<DCsAppleMilk:defeatedcrow.chalcedony>);
Compressor.addRecipe(<DCsAppleMilk:defeatedcrow.chalcedony>, dustFlint * 4);

//Remove Chalcedony Gear Form GearIron Ore Dictionary
<ore:gearIron>.remove(gearChalcedony);

//Change Chalcedony Gear Recipe
Casting.removeTableRecipe(gearChalcedony);
Smeltery.removeMelting(gearChalcedony);
recipes.remove(gearChalcedony);
recipes.addShaped(gearChalcedony, [
[null, <ore:blockChalcedony>, null], 
[<ore:blockChalcedony>, <ore:gearIron>, <ore:blockChalcedony>], 
[null, <ore:blockChalcedony>, null]]);

//Remove MAWPC charms
recipes.remove(<DCsAppleMilk:defeatedcrow.princessClam:*>);
NEI.hide(<DCsAppleMilk:defeatedcrow.princessClam:*>);

//Remove Energy Related items
recipes.remove(<DCsAppleMilk:defeatedcrow.batBox>);
recipes.remove(<DCsAppleMilk:defeatedcrow.EHandle>);
recipes.remove(<DCsAppleMilk:defeatedcrow.yuzuBatContainer>);
recipes.remove(<DCsAppleMilk:defeatedcrow.gelBatContainer>);
recipes.remove(<DCsAppleMilk:defeatedcrow.battery:2>);
recipes.remove(<DCsAppleMilk:defeatedcrow.redGel>);
vanilla.loot.removeChestLoot("dungeonChest", <DCsAppleMilk:defeatedcrow.battery>);
NEI.hide(<DCsAppleMilk:defeatedcrow.batBox>);
NEI.hide(<DCsAppleMilk:defeatedcrow.EHandle>);
NEI.hide(<DCsAppleMilk:defeatedcrow.yuzuBatContainer>);
NEI.hide(<DCsAppleMilk:defeatedcrow.gelBatContainer>);
NEI.hide(<DCsAppleMilk:defeatedcrow.battery:*>);
NEI.hide(<DCsAppleMilk:defeatedcrow.redGel>);

//Remove Jaw Crusher
recipes.remove(<DCsAppleMilk:defeatedcrow.advProcessor>);
recipes.remove(<DCsAppleMilk:defeatedcrow.jawPlate:*>);
recipes.remove(<DCsAppleMilk:defeatedcrow.slotPanel>);
NEI.hide(<DCsAppleMilk:defeatedcrow.advProcessor>);
NEI.hide(<DCsAppleMilk:defeatedcrow.jawPlate:*>);
NEI.hide(<DCsAppleMilk:defeatedcrow.slotPanel>);

//Remove Tools
recipes.remove(<DCsAppleMilk:defeatedcrow.onixSword>);
recipes.remove(<DCsAppleMilk:defeatedcrow.yuzuGatling>);
recipes.remove(<DCsAppleMilk:defeatedcrow.fossilCannon>);
recipes.remove(<DCsAppleMilk:defeatedcrow.firestarter>);
recipes.remove(<DCsAppleMilk:defeatedcrow.chalcedonyStoneCutter>);
recipes.remove(<DCsAppleMilk:defeatedcrow.chalcedonyKnife>);
NEI.hide(<DCsAppleMilk:defeatedcrow.onixSword>);
NEI.hide(<DCsAppleMilk:defeatedcrow.yuzuGatling>);
NEI.hide(<DCsAppleMilk:defeatedcrow.fossilCannon>);
NEI.hide(<DCsAppleMilk:defeatedcrow.firestarter>);
NEI.hide(<DCsAppleMilk:defeatedcrow.chalcedonyStoneCutter>);
NEI.hide(<DCsAppleMilk:defeatedcrow.chalcedonyKnife>);

//Remove bug Compressor Door
//recipes.remove(<DCsAppleMilk:defeatedcrow.containeritemDoorW:7>);
//recipes.removeShapeless(<minecraft:wooden_door>);
//NEI.hide(<DCsAppleMilk:defeatedcrow.containeritemDoorW:7>);
//recipes.remove(<DCsAppleMilk:defeatedcrow.containeritemDoorI:7>);
//recipes.removeShapeless(<minecraft:iron_door>);
//NEI.hide(<DCsAppleMilk:defeatedcrow.containeritemDoorI:7>);

//Remove Slime Ball Recipe
Plate.removeRecipe(<minecraft:slime_ball>);
furnace.remove(<minecraft:slime_ball>);

//Remove Leather Recipe
Plate.removeRecipe(<minecraft:leather>);
recipes.removeShapeless(<minecraft:leather>);

//Remove Cassis Preserve Recipe
recipes.removeShapeless(<minecraft:magma_cream>, [cassis_preserve, <minecraft:blaze_powder>]);
recipes.addShapeless(<minecraft:magma_cream>, [<ore:slimeball>, <minecraft:blaze_powder>]);
recipes.removeShapeless(<minecraft:sticky_piston>, [cassis_preserve, <minecraft:piston>]);
recipes.addShapeless(<minecraft:sticky_piston>, [<ore:slimeball>, <minecraft:piston>]);
recipes.remove(<minecraft:lead>);

//Change Recipe of Tea Maker
recipes.remove(<DCsAppleMilk:defeatedcrow.teaMakerNext>);
recipes.addShaped(<DCsAppleMilk:defeatedcrow.teaMakerNext>, [
[<ore:ingotSilver>, <minecraft:water_bucket>, <ore:ingotSilver>], 
[<ore:glass>, <minecraft:water_bucket>, <ore:glass>], 
[<ore:ingotSilver>, <minecraft:blaze_rod>, <ore:ingotSilver>]]);

//Change Recipe of Ice Maker
recipes.remove(<DCsAppleMilk:defeatedcrow.iceMaker>);
recipes.addShaped(<DCsAppleMilk:defeatedcrow.iceMaker>, [
[null, <ore:gearChalcedony>, null], 
[<ore:ingotSilver>, <ore:gemIce>, <ore:ingotSilver>], 
[<ore:ingotSilver>, null, <ore:ingotSilver>]]);

//Change Recipe of Food Processor
recipes.remove(<DCsAppleMilk:defeatedcrow.processor>);
recipes.addShaped(<DCsAppleMilk:defeatedcrow.processor>, [
[<ore:glass>, <ore:glass>, <ore:glass>], 
[<ore:ingotSilver>, <ore:barsIron>, <ore:ingotSilver>], 
[<ore:ingotSilver>, <ore:gearChalcedony>, <ore:ingotSilver>]]);

//Change Recipe of Teppan
recipes.remove(<DCsAppleMilk:defeatedcrow.teppanII>);
recipes.addShaped(<DCsAppleMilk:defeatedcrow.teppanII>, [
[<ore:ingotSteel>, null, <ore:ingotSteel>], 
[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], 
[null, <ore:craftingFurnace>, null]]);

//Change Recipe of Evaporator
recipes.remove(<DCsAppleMilk:defeatedcrow.evaporator>);
recipes.addShaped(<DCsAppleMilk:defeatedcrow.evaporator>, [
[null, <ore:ingotSilver>, null], 
[<ore:bottleEmpty>, <ore:itemBlazeRod>, <ore:bottleEmpty>], 
[<ore:ingotSilver>, <ore:gearChalcedony>, <ore:ingotSilver>]]);

//Remove Easy Charcoal Container Recipe
furnace.remove(<DCsAppleMilk:defeatedcrow.Charcoalcontainer>);
recipes.addShaped(<DCsAppleMilk:defeatedcrow.Charcoalcontainer>, [
[<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>],
[<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>],
[<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>]]);
furnace.setFuel(<DCsAppleMilk:defeatedcrow.Charcoalcontainer>, 0);

//Remove Easy Gunpowder Recipe
recipes.removeShapeless(<minecraft:gunpowder>, [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:glowstone_dust>]);
