import mods.tconstruct.Smeltery;

mods.tconstruct.Smeltery.removeMelting(<ore:dustSteel>);
recipes.addShapeless(<minecraft:clay>,[<minecraft:water_bucket>.giveBack(<minecraft:bucket>),<minecraft:gravel>,<ore:sand>]);

mods.gregtech.AlloySmelter.addRecipe(<TConstruct:Smeltery:4>, <minecraft:stone>, <minecraft:coal> * 4, 300, 15);

mods.gregtech.AlloySmelter.addRecipe(<TConstruct:Smeltery:5>, <minecraft:cobblestone>, <minecraft:coal> * 4, 300, 15);

recipes.addShapeless(<TConstruct:materials:2>*4,[<ore:craftingToolHardHammer>,<ore:craftingToolFile>,<TConstruct:Smeltery:4>]);

furnace.addRecipe(<TConstruct:Smeltery:4>, <TConstruct:Smeltery:5>,1);