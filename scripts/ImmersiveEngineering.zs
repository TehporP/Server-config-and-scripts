//disabled items
recipes.remove(<ImmersiveEngineering:material:16>);
recipes.remove(<ImmersiveEngineering:material:15>);
recipes.remove(<ImmersiveEngineering:material:14>);

//new magentie iron rod making
recipes.remove(<gregtech:gt.metaitem.01:23354>);

mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:gt.metaitem.01:2354>, <gregtech:gt.blockores:870>*2, <IC2:itemDust:9>, 500,320,null,null);
//new coil recipes
recipes.remove(<ImmersiveEngineering:coil:2>);
recipes.remove(<ImmersiveEngineering:coil:1>);
recipes.remove(<ImmersiveEngineering:coil>);

recipes.addShaped(<ImmersiveEngineering:coil>, [[null, <ore:craftingToolHardHammer>, null], [<ore:ingotCopper>, <ore:woodStick>, <ore:ingotCopper>], [null, <ore:ingotCopper>, null]]);
recipes.addShaped(<ImmersiveEngineering:coil:2>, [[null, <ore:craftingToolHardHammer>, null], [<ore:ingotSteel>, <ore:woodStick>, <ore:ingotSteel>], [<ore:ingotAluminium>, <ore:ingotSteel>, <ore:ingotAluminium>]]);
recipes.addShaped(<ImmersiveEngineering:coil:1>, [[null, <ore:craftingToolHardHammer>, null], [<ore:ingotElectrum>, <ore:woodStick>, <ore:ingotElectrum>], [null, <ore:ingotElectrum>, null]]);

//stuff
recipes.remove(<ImmersiveEngineering:metalDevice>);
recipes.addShaped(<ImmersiveEngineering:metalDevice>, [[null, <ore:ingotCopper>, null], [<ore:plankWood>, <ore:ingotCopper>, <ore:plankWood>], [<ore:plankWood>, <ore:ingotCopper>, <ore:plankWood>]]);

recipes.remove(<ImmersiveEngineering:metalDevice:1>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:1>, [[<ImmersiveEngineering:metalDevice:2>, <ore:plateIron>, <ImmersiveEngineering:metalDevice:2>], [<ImmersiveEngineering:storage:8>, <ImmersiveEngineering:storage:8>, <ImmersiveEngineering:storage:8>], [<ImmersiveEngineering:metalDevice:2>, <ore:plateIron>, <ImmersiveEngineering:metalDevice:2>]]);

recipes.remove(<ImmersiveEngineering:metalDevice:2>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:2>, [[null, <ore:ingotAnyIron>, null], [<ore:plankWood>, <ore:ingotAnyIron>, <ore:plankWood>], [<ore:plankWood>, <ore:ingotAnyIron>, <ore:plankWood>]]);

recipes.remove(<ImmersiveEngineering:metalDevice:3>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:3>, [[<ImmersiveEngineering:metalDevice:2>, <ore:plateIron>, <ImmersiveEngineering:metalDevice:2>], [<ImmersiveEngineering:storage:9>, <ImmersiveEngineering:metalDevice:1>, <ImmersiveEngineering:storage:9>], [<ImmersiveEngineering:metalDevice:2>, <ore:plateIron>, <ImmersiveEngineering:metalDevice:2>]]);

recipes.remove(<ImmersiveEngineering:metalDevice:4>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:4>, [[<ImmersiveEngineering:metalDevice>,null, <ImmersiveEngineering:metalDevice:2>], [<ImmersiveEngineering:coil>, <ImmersiveEngineering:storage:8>, <ImmersiveEngineering:coil:1>], [<ore:ingotAnyIron>, <minecraft:iron_ingot>, <ore:ingotAnyIron>]]);

recipes.remove(<ImmersiveEngineering:metalDevice:5>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:5>, [[null, <ore:ingotSteel>, null], [<ore:blockGlass>, <ore:ingotSteel>, <ore:blockGlass>], [null, <ore:ingotSteel>, null]]);

recipes.remove(<ImmersiveEngineering:metalDevice:6>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:6>, [[<ore:blockGlass>, <ore:ingotAluminum>, <ore:blockGlass>], [<ore:blockGlass>, <ore:ingotAluminum>, <ore:blockGlass>], [<ore:blockGlass>, <ore:ingotAluminum>, <ore:blockGlass>]]);

recipes.remove(<ImmersiveEngineering:metalDevice:7>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:7>, [[<ImmersiveEngineering:metalDevice:6>, <ore:plateSteel>, <ImmersiveEngineering:metalDevice:6>], [<ImmersiveEngineering:storage:10>, <ImmersiveEngineering:metalDevice:3>, <ImmersiveEngineering:storage:10>], [<ImmersiveEngineering:metalDevice:6>, <ore:plateSteel>, <ImmersiveEngineering:metalDevice:6>]]);

recipes.remove(<ImmersiveEngineering:metalDevice:8>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:8>, [[<ImmersiveEngineering:metalDevice:2>, null, <ImmersiveEngineering:metalDevice:6>], [<ImmersiveEngineering:coil:1>, <ImmersiveEngineering:storage:10>, <ImmersiveEngineering:coil:2>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);

recipes.remove(<ImmersiveEngineering:metalDevice:9>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:9>, [[<ore:plateIron>, <gregtech:gt.metaitem.02:31299>, <ore:plateIron>], [<ImmersiveEngineering:coil>, <ore:woodStick>, <ImmersiveEngineering:coil>], [<ore:plateIron>, <ImmersiveEngineering:storage:8>, <ore:plateIron>]]);

recipes.remove(<ImmersiveEngineering:metalDevice:10>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:10>, [[<ore:plateCopper>, <gregtech:gt.blockmachines:5112>, <ore:plateCopper>], [<gregtech:gt.blockmachines:5112>, <ImmersiveEngineering:metalDevice:9>, <gregtech:gt.blockmachines:5112>], [<ore:plateCopper>, <gregtech:gt.blockmachines:5112>, <ore:plateCopper>]]);

recipes.remove(<ImmersiveEngineering:metalDevice:11>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:11> * 8, [[<gregtech:gt.metaitem.01:17880>, <gregtech:gt.metaitem.01:17880>, <gregtech:gt.metaitem.01:17880>], [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>], [<ore:plateIron>, <gregtech:gt.metaitem.02:31299>, <ore:plateIron>]]);

recipes.remove(<ImmersiveEngineering:metalDevice:12>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:12>, [[<ImmersiveEngineering:storage:8>, <ImmersiveEngineering:metalDevice>, <ImmersiveEngineering:storage:8>], [<ImmersiveEngineering:metalDevice>, <minecraft:iron_block>, <ImmersiveEngineering:metalDevice>], [<ImmersiveEngineering:storage:8>, <ImmersiveEngineering:metalDevice>, <ImmersiveEngineering:storage:8>]]);

recipes.remove(<ImmersiveEngineering:metalDevice:13>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:13>, [[<ore:craftingTableWood>, <gregtech:gt.blockmachines:5602>, <ore:craftingTableWood>], [<gregtech:gt.blockmachines:5602>, <ImmersiveEngineering:material:11>, <gregtech:gt.blockmachines:5602>], [<ore:craftingTableWood>, <gregtech:gt.blockmachines:5602>, <ore:craftingTableWood>]]);

recipes.remove(<ImmersiveEngineering:metalDevice:14>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:14>, [[<ImmersiveEngineering:metalDecoration:1>, <gregtech:gt.metaitem.01:32602>, <ImmersiveEngineering:metalDecoration:1>], [<ImmersiveEngineering:metalDecoration:1>, <ore:stickSteel>, <ImmersiveEngineering:metalDecoration:1>], [<ImmersiveEngineering:metalDecoration:5>, <ImmersiveEngineering:drillhead>, <ImmersiveEngineering:metalDecoration:5>]]);

recipes.remove(<ImmersiveEngineering:metalDevice2:11>);
recipes.addShaped(<ImmersiveEngineering:metalDevice2:11>, [[<ImmersiveEngineering:metalDevice>, <ore:gearGtStone>, <ImmersiveEngineering:metalDevice>], [<ore:plateIron>, <ImmersiveEngineering:material:5>, <ore:plateIron>], [<minecraft:iron_bars>, <ImmersiveEngineering:metalDevice2:5>, <minecraft:iron_bars>]]);

recipes.remove(<ImmersiveEngineering:metalDecoration:4>);
recipes.addShaped(<ImmersiveEngineering:metalDecoration:4>, [[<ore:plateCopper>, <ImmersiveEngineering:metalDevice2:5>, <ore:plateCopper>], [<ImmersiveEngineering:metalDevice2:5>, <BuildCraft|Factory:tankBlock>, <ImmersiveEngineering:metalDevice2:5>], [<ore:plateCopper>, <ImmersiveEngineering:metalDevice2:5>, <ore:plateCopper>]]);

//Engineering Block & Mechanical Component
recipes.remove(<ImmersiveEngineering:metalDecoration:5>);
recipes.remove(<ImmersiveEngineering:metalDecoration:7>);
recipes.remove(<ImmersiveEngineering:material:11>);
recipes.remove(<ImmersiveEngineering:material:12>);

recipes.addShaped(<ImmersiveEngineering:material:11> * 2, [[<ore:plateCopper>, <ore:plateIron>, <ore:plateCopper>], [<ore:plateIron>, <gregtech:gt.metaitem.02:31299>, <ore:plateIron>], [<ore:plateCopper>, <ore:plateIron>, <ore:plateCopper>]]);

recipes.addShaped(<ImmersiveEngineering:material:12>, [[<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>], [<ore:plateSteel>, <ImmersiveEngineering:material:11>, <ore:plateSteel>], [<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>]]);

recipes.addShaped(<ImmersiveEngineering:metalDecoration:5> * 2, [[<ore:plateSteel>, <gregtech:gt.metaitem.02:31299>, <ore:plateSteel>], [<ImmersiveEngineering:material:12>, <ImmersiveEngineering:metalDecoration:10>, <ImmersiveEngineering:material:12>], [<ore:plateSteel>, <gregtech:gt.metaitem.02:31299>, <ore:plateSteel>]]);

recipes.addShaped(<ImmersiveEngineering:metalDecoration:7> * 2, [[<ore:plateIron>, <ore:gearGtStone>, <ore:plateIron>], [<ImmersiveEngineering:material:11>, <ImmersiveEngineering:metalDecoration:10>, <ImmersiveEngineering:material:11>], [<ore:plateIron>, <ore:gearGtStone>, <ore:plateIron>]]);

//generator block
recipes.remove(<ImmersiveEngineering:metalDecoration:6>);
recipes.addShaped(<ImmersiveEngineering:metalDecoration:6> * 2, [[<ImmersiveEngineering:metalDevice:2>, <ImmersiveEngineering:storage:8>, <ImmersiveEngineering:metalDevice:2>], [<ImmersiveEngineering:coil>, <ImmersiveEngineering:metalDevice:10>, <ImmersiveEngineering:coil>], [<ImmersiveEngineering:metalDevice:2>, <ImmersiveEngineering:storage:8>, <ImmersiveEngineering:metalDevice:2>]]);

//new Graphite recipes
mods.immersiveengineering.ArcFurnace.removeRecipe(<ImmersiveEngineering:metal:20>);
furnace.remove(<ImmersiveEngineering:metal:20>);


mods.immersiveengineering.BlastFurnace.addRecipe(<ImmersiveEngineering:metal:20>,<ImmersiveEngineering:metal:19>, 6000, null);


recipes.remove(<ImmersiveEngineering:metalDecoration>);
recipes.addShapeless(<ImmersiveEngineering:metalDecoration>,[<ore:ingotSteel>,<minecraft:fence>,<ore:ingotSteel>]);

//disable old steel-making recipes
mods.railcraft.BlastFurnace.removeRecipe(<Railcraft:ingot>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<ImmersiveEngineering:metal:7>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<ImmersiveEngineering:storage:7>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ImmersiveEngineering:metal:7>);

//new steel recipes
mods.immersiveengineering.BlastFurnace.addRecipe(<gregtech:gt.metaitem.01:11305>, <ore:ingotIron>, 4000, <gregtech:gt.metaitem.01:2915>);
mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:gt.metaitem.01:11305>,<ore:dustIron>,null, 250, 1200,[<ore:dustCoal>],null);
mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:gt.metaitem.01:11305>,<ore:ingotIron>, null, 300, 1600,[<ore:dustCoal>],null);
mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:gt.metaitem.01:11305>,<ore:dustSteel>, null, 400, 400,null,null);

//new slag process recipes
mods.gregtech.Sifter.addRecipe([<gregtech:gt.metaitem.01:2032>,<IC2:itemDust:4>,<gregtech:gt.metaitem.01:2028>], <ImmersiveEngineering:material:13>, [4000,1500,1000], 10, 5);

//Arc Furnce Al-making
mods.immersiveengineering.BlastFurnace.removeRecipe(<gregtech:gt.metaitem.01:11019>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<ImmersiveEngineering:metal:1>);
mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:gt.metaitem.01:11019>,<ore:dustBauxite>, null,550, 1500,null,null);
mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:gt.metaitem.01:11019>,<ore:oreAluminium>, <ImmersiveEngineering:material:13>*4,550, 2500,null,null);
mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:gt.metaitem.01:11019>,<ore:oreBauxite>, <ImmersiveEngineering:material:13>*4,600, 2500,null,null);

//disable stainless steel 
mods.immersiveengineering.ArcFurnace.removeRecipe(<gregtech:gt.metaitem.01:11306>);