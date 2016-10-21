//Product Hydrogen by lquid Sulfur Acid
mods.gregtech.ChemicalReactor.addRecipe(null,<liquid:hydrogen>*250,<ore:dustIron>,null,<liquid:sulfuricacid>*250,1000);
mods.gregtech.ChemicalReactor.addRecipe(null,<liquid:hydrogen>*250,<ore:dustTin>,null,<liquid:sulfuricacid>*250,1000);
mods.gregtech.ChemicalReactor.addRecipe(null,<liquid:hydrogen>*250,<ore:dustZinc>,null,<liquid:sulfuricacid>*250,1000);
mods.gregtech.ChemicalReactor.addRecipe(null,<liquid:hydrogen>*250,<ore:dustMagnesium>,null,<liquid:sulfuricacid>*250,1000);
mods.gregtech.ChemicalReactor.addRecipe(null,<liquid:hydrogen>*250,<ore:dustAluminium>,null,<liquid:sulfuricacid>*250,1000);

//Product Hydrogen by Methane in BlastFurnace
mods.gregtech.BlastFurnace.addRecipe([<gregtech:gt.metaitem.01:30001>*2,<gregtech:gt.metaitem.01:2010>],<liquid:liquidmethane>*1000, [<IC2:itemCellEmpty>*2], 1500, 120, 2000);

//Product water by buring Hydrogen
mods.gregtech.ChemicalReactor.addRecipe(<IC2:itemCellEmpty>*3,<liquid:water>*1000,<gregtech:gt.metaitem.01:30001>*2,<gregtech:gt.metaitem.01:30013>,null,200);

//add tin can recipes
recipes.remove(<GalacticraftCore:item.canister>);
recipes.addShaped(<GalacticraftCore:item.canister>*4,[[<gregtech:gt.metaitem.01:22057>,<gregtech:gt.metaitem.01:22057>,<gregtech:gt.metaitem.01:22057>],[<gregtech:gt.metaitem.01:22057>,<ore:craftingToolHardHammer>,<gregtech:gt.metaitem.01:22057>],[<gregtech:gt.metaitem.01:22057>,<gregtech:gt.metaitem.01:22057>,<gregtech:gt.metaitem.01:22057>]]);

recipes.addShaped(<IC2:itemDynamite>,[[null,<minecraft:string>,null],[<minecraft:paper>,<minecraft:gunpowder>,<minecraft:paper>],[<minecraft:paper>,<IC2:itemCellEmpty>,<minecraft:paper>]]);

recipes.remove(<gregtech:gt.blockreinforced:5>);

recipes.addShaped(<gregtech:gt.blockreinforced:5>,[[<ore:plankWood>,<minecraft:string>,<ore:plankWood>],[<IC2:itemDynamite>,<IC2:itemDynamite>,<IC2:itemDynamite>],[<ore:plankWood>,<IC2:itemDynamite>,<ore:plankWood>]]);

recipes.addShapeless(<minecraft:tnt>,[<gregtech:gt.blockreinforced:5>,<minecraft:paper>,<ore:dyeRed>]);

val dustal1=<ore:dustAluminum>;
val dustal2=<ore:dustAluminium>;
dustal1.addAll(dustal2);

val ingotal1=<ore:ingotAluminum>;
val ingotal2=<ore:ingotAluminium>;
ingotal1.addAll(ingotal2);
recipes.remove(<gregtech:gt.metaitem.01:32309>);
recipes.remove(<gregtech:gt.blockmachines:551>);
recipes.remove(<gregtech:gt.metaitem.01:23355>);
recipes.remove(<gregtech:gt.metaitem.01:23356>);
recipes.remove(<gregtech:gt.metaitem.01:23008>);
recipes.remove(<gregtech:gt.metaitem.01:23010>);
recipes.remove(<gregtech:gt.metaitem.01:23019>);
recipes.remove(<gregtech:gt.metaitem.01:23028>);
recipes.remove(<gregtech:gt.metaitem.01:23030>);
recipes.remove(<gregtech:gt.metaitem.01:23031>);
recipes.remove(<gregtech:gt.metaitem.01:23032>);
recipes.remove(<gregtech:gt.metaitem.01:23033>);
recipes.remove(<gregtech:gt.metaitem.01:23034>);
recipes.remove(<gregtech:gt.metaitem.01:23305>);
recipes.remove(<gregtech:gt.metaitem.01:23304>);
recipes.remove(<gregtech:gt.metaitem.01:23303>);
recipes.remove(<gregtech:gt.metaitem.01:23302>);
recipes.remove(<gregtech:gt.metaitem.01:23301>);
recipes.remove(<gregtech:gt.metaitem.01:23300>);
recipes.remove(<gregtech:gt.metaitem.01:23129>);
recipes.remove(<gregtech:gt.metaitem.01:23103>);
recipes.remove(<gregtech:gt.metaitem.01:23101>);
recipes.remove(<gregtech:gt.metaitem.01:23084>);
recipes.remove(<gregtech:gt.metaitem.01:23085>);
recipes.remove(<gregtech:gt.metaitem.01:23086>);
recipes.remove(<gregtech:gt.metaitem.01:23089>);
recipes.remove(<gregtech:gt.metaitem.01:23090>);
recipes.remove(<gregtech:gt.metaitem.01:23096>);
recipes.remove(<gregtech:gt.metaitem.01:23097>);
recipes.remove(<gregtech:gt.metaitem.01:23098>);
recipes.remove(<gregtech:gt.metaitem.01:23100>);
recipes.remove(<gregtech:gt.metaitem.01:23083>);
recipes.remove(<gregtech:gt.metaitem.01:23081>);
recipes.remove(<gregtech:gt.metaitem.01:23070>);
recipes.remove(<gregtech:gt.metaitem.01:23067>);
recipes.remove(<gregtech:gt.metaitem.01:23057>);
recipes.remove(<gregtech:gt.metaitem.01:23054>);
recipes.remove(<gregtech:gt.metaitem.01:23048>);
recipes.remove(<gregtech:gt.metaitem.01:23052>);
recipes.remove(<gregtech:gt.metaitem.01:23035>);


recipes.addShaped(<gregtech:gt.blockmachines:551>, [[<gregtech:gt.blockmachines:1360>, <gregtech:gt.metaitem.02:22354>, <gregtech:gt.blockmachines:1360>], [<ImmersiveEngineering:graphiteElectrode>, <gregtech:gt.blockmachines:11>, <ImmersiveEngineering:graphiteElectrode>], [<gregtech:gt.blockmachines:1360>, <gregtech:gt.metaitem.02:22354>, <gregtech:gt.blockmachines:1360>]]);


