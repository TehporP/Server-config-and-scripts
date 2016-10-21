import mods.gregtech.Assembler;
import mods.gregtech.Wiremill;
import mods.ic2.Compressor;
 
//Reomve old recipes
recipes.remove(<Railcraft:machine.alpha:15>);
recipes.remove(<Railcraft:machine.alpha:8>);
recipes.remove(<Railcraft:machine.alpha:14>);
recipes.remove(<Railcraft:machine.alpha:3>);
recipes.remove(<Railcraft:machine.alpha:12>);
recipes.remove(<Railcraft:machine.alpha:7>);
recipes.remove(<Railcraft:machine.alpha:13>);
recipes.remove(<Railcraft:machine.alpha:11>);
recipes.remove(<Railcraft:machine.alpha:6>);
recipes.remove(<Railcraft:machine.alpha:1>);
recipes.remove(<Railcraft:track:2264>);
recipes.remove(<Railcraft:machine.beta:5>);
recipes.remove(<Railcraft:detector:10>);
recipes.remove(<Railcraft:machine.beta:6>);
recipes.remove(<Railcraft:machine.gamma:2>);
recipes.remove(<Railcraft:machine.gamma:3>);
recipes.remove(<Railcraft:machine.beta:9>);
recipes.remove(<Railcraft:machine.beta:8>);
recipes.remove(<Railcraft:machine.beta:7>);
recipes.removeShaped(<Railcraft:machine.beta:2> * 8, [[<minecraft:iron_bars>, <ore:plateIron>, <minecraft:iron_bars>], [<ore:plateIron>, <minecraft:lever>, <ore:plateIron>], [<minecraft:iron_bars>, <ore:plateIron>, <minecraft:iron_bars>]]);
recipes.removeShaped(<Railcraft:machine.beta:1> * 8, [[<minecraft:glass_pane>, <ore:plateIron>, <minecraft:glass_pane>], [<ore:plateIron>, <ore:paneGlassColorless>, <ore:plateIron>], [<minecraft:glass_pane>, <ore:plateIron>, <minecraft:glass_pane>]]);
recipes.removeShapeless(<Railcraft:machine.beta> * 8, [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>, <ore:plateIron>]);
recipes.removeShaped(<Railcraft:machine.beta:14> * 8, [[<minecraft:glass_pane>, <ore:plateSteel>, <minecraft:glass_pane>], [<ore:plateSteel>, <minecraft:glass_pane>, <ore:plateSteel>], [<minecraft:glass_pane>, <ore:plateSteel>, <minecraft:glass_pane>]]);
recipes.removeShaped(<Railcraft:machine.beta:15> * 8, [[<minecraft:iron_bars>, <ore:plateSteel>, <minecraft:iron_bars>], [<ore:plateSteel>, <minecraft:lever>, <ore:plateSteel>], [<minecraft:iron_bars>, <ore:plateSteel>, <minecraft:iron_bars>]]);
recipes.removeShapeless(<Railcraft:machine.beta:13> * 8, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]);



//Iron tank
recipes.addShaped(<Railcraft:machine.beta:1>*4, [[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], [<ore:stickIron>, <minecraft:glass>, <ore:stickIron>], [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);
recipes.addShaped(<Railcraft:machine.beta:2>, [[<gregtech:gt.metaitem.02:31032>, <gregtech:gt.blockmachines:5122>, <gregtech:gt.metaitem.02:31032>], [<gregtech:gt.blockmachines:5122>, <Railcraft:machine.beta>, <gregtech:gt.blockmachines:5122>], [<gregtech:gt.metaitem.02:31032>, <gregtech:gt.blockmachines:5122>, <gregtech:gt.metaitem.02:31032>]]);
recipes.addShaped(<Railcraft:machine.beta>*4, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, null, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

//Steel tank
recipes.addShaped(<Railcraft:machine.beta:14>*4, [[<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>], [<ore:stickSteel>, <minecraft:glass>, <ore:stickSteel>], [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>]]);
recipes.addShaped(<Railcraft:machine.beta:15>, [[<gregtech:gt.metaitem.02:31305>, <gregtech:gt.blockmachines:5132>, <gregtech:gt.metaitem.02:31305>], [<gregtech:gt.blockmachines:5132>, <Railcraft:machine.beta:13>, <gregtech:gt.blockmachines:5132>], [<gregtech:gt.metaitem.02:31305>, <gregtech:gt.blockmachines:5132>, <gregtech:gt.metaitem.02:31305>]]);
recipes.addShaped(<Railcraft:machine.beta:13>*4, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:plateSteel>, null, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

//Water Tank
recipes.addShaped(<Railcraft:machine.alpha:14>*8, [[<minecraft:planks>, <gregtech:gt.blockmachines:5122>, <ore:plankWood>], [<gregtech:gt.blockmachines:5122>, <minecraft:sponge>, <gregtech:gt.blockmachines:5122>], [<ore:plankWood>, <ore:pipeMediumAnyBronze>, <minecraft:planks>]]);

//Coke Oven
recipes.addShaped(<Railcraft:machine.alpha:7>, [[<minecraft:slime_ball>, <minecraft:brick>, <minecraft:slime_ball>], [<minecraft:brick>, <minecraft:slime_ball>, <minecraft:brick>], [<minecraft:slime_ball>, <minecraft:brick>, <minecraft:slime_ball>]]);

//Steam Oven
recipes.addShaped(<Railcraft:machine.alpha:3> * 2, [[<ore:plateSteel>, <gregtech:gt.blockmachines:103>, <ore:plateSteel>], [<ore:plateSteel>, <gregtech:gt.blockcasings2:12>, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

//Tunnelbore
recipes.addShaped(<Railcraft:cart.bore>,
 [[<gregtech:gt.blockmachines:3>, <minecraft:minecart>, <gregtech:gt.blockmachines:3>],
  [<gregtech:gt.blockmachines:101>, <minecraft:minecart>, <gregtech:gt.blockmachines:101>],
  [null, <minecraft:chest_minecart>, null]]);
 
//Borehead
recipes.addShapeless(<Railcraft:borehead.diamond>, [<gregtech:gt.metaitem.01:32722>]);
 
//Locomotive
 recipes.addShaped(<Railcraft:cart.loco.steam.solid>,
 [[null, null, null],
  [null, null, <gregtech:gt.blockmachines:101>],
  [<minecraft:iron_bars>, <minecraft:chest_minecart>, <minecraft:minecart>]]);
 
recipes.addShaped(<Railcraft:cart.undercutter>,
 [[<ore:dyeYellow>, <minecraft:redstone_lamp>, <ore:dyeYellow>],
  [<minecraft:piston>, <ore:blockSteel>, <minecraft:piston>],
  [<gregtech:gt.metaitem.01:32650>, <minecraft:minecart>, <gregtech:gt.metaitem.01:32650>]]);
 
recipes.addShaped(<Railcraft:cart.track.relayer>,
 [[<ore:dyeYellow>, <minecraft:redstone_lamp>, <ore:dyeYellow>],
  [<minecraft:blaze_rod>, <ore:blockSteel>, <minecraft:blaze_rod>],
  [<gregtech:gt.metaitem.01:32650>, <minecraft:minecart>, <gregtech:gt.metaitem.01:32650>]]);
 
 
//Addition of recipes
Wiremill.addRecipe(<Railcraft:firestone.cut>, <Railcraft:firestone.raw>, 36482, 7);
 
//BlockCoke
Compressor.addRecipe(<Railcraft:cube>, <Railcraft:fuel.coke> * 9);


//Engraving Bench
recipes.addShaped(<Railcraft:machine.alpha:13>,[[<ore:craftingToolKnife>, <ore:plateSteel>, <minecraft:book>],
  [<ore:plateSteel>, <minecraft:crafting_table>, <ore:plateSteel>],
  [<minecraft:piston>, <ore:plateSteel>, <minecraft:piston>]]);

//Feed Station
recipes.addShaped(<Railcraft:machine.alpha:11>,
 [[<ore:plankWood>, <minecraft:golden_carrot>, <ore:plankWood>],
  [<minecraft:golden_carrot>, <ore:plateSteel>, <minecraft:golden_carrot>],
  [<ore:plankWood>, <minecraft:golden_carrot>, <ore:plankWood>]]);

//Trade Station
recipes.addShaped(<Railcraft:machine.alpha:6>,
 [[<ore:plateSteel>, <ore:paneGlass>, <ore:plateSteel>],
  [<ore:gemEmerald>, <minecraft:dispenser>, <ore:gemEmerald>],
  [<ore:plateSteel>, <ore:paneGlass>, <ore:plateSteel>]]);

//Steam Turbine
recipes.addShaped(<Railcraft:machine.alpha:1> * 3,
 [[<ore:blockSteel>, <ore:plateSteel>, <ore:blockSteel>],
  [<ore:plateSteel>, null, <ore:plateSteel>],
  [<ore:blockSteel>, <ore:plateSteel>, <ore:blockSteel>]]);

//Disposal Track
recipes.addShaped(<Railcraft:track:2264> * 16,
 [[<Railcraft:part.rail>, <Railcraft:part.tie>, <Railcraft:part.rail>],
  [<Railcraft:part.rail>, <ore:plateSteel>, <Railcraft:part.rail>],
  [<Railcraft:part.rail>, <Railcraft:part.tie>, <Railcraft:part.rail>]]);

//Energy Detector
recipes.addShaped(<Railcraft:detector:10>,
 [[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
  [<ore:plateTin>, <minecraft:stone_pressure_plate>, <ore:plateTin>],
  [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);

//Adv Item Loader
recipes.addShaped(<Railcraft:machine.gamma:2>,
 [[<ore:plateSteel>, <ore:dustRedstone>, <ore:plateSteel>],
  [<ore:dustRedstone>, <Railcraft:machine.gamma>, <ore:dustRedstone>],
  [<ore:plateSteel>, <gregtech:gt.metaitem.01:32630>, <ore:plateSteel>]]);

//Adv Item Unloader
recipes.addShaped(<Railcraft:machine.gamma:3>,
 [[<ore:plateSteel>, <ore:dustRedstone>, <ore:plateSteel>],
  [<ore:dustRedstone>, <Railcraft:machine.gamma:1>, <ore:dustRedstone>],
  [<ore:plateSteel>, <gregtech:gt.metaitem.01:32630>, <ore:plateSteel>]]);

//Liquid Fueled Firebox
recipes.addShaped(<Railcraft:machine.beta:6>, [[<minecraft:brick>, <minecraft:brick>, <minecraft:brick>], [<ore:plateSteel>, <gregtech:gt.blockcasings3:14>, <ore:plateSteel>], [<irontank:ironTank>, <ore:plateSteel>, <irontank:ironTank>]]);

//Soild Fueled Firebox
recipes.addShaped(<Railcraft:machine.beta:5>, [[<minecraft:brick>, <minecraft:brick>, <minecraft:brick>], [<ore:plateSteel>, <gregtech:gt.blockcasings3:14>, <ore:plateSteel>], [<ore:plateSteel>, <minecraft:chest>, <ore:plateSteel>]]);

//Engines
recipes.addShaped(<Railcraft:machine.beta:9>, [[<gregtech:gt.metaitem.01:18305>, <gregtech:gt.metaitem.01:18305>, <gregtech:gt.metaitem.01:18305>], [<gregtech:gt.metaitem.02:31305>, <gregtech:gt.metaitem.01:11305>, <gregtech:gt.metaitem.02:31305>], [<irontank:goldTank>, <Railcraft:machine.beta:8>, <irontank:goldTank>]]);

recipes.addShaped(<Railcraft:machine.beta:8>, [[<gregtech:gt.metaitem.01:18032>, <gregtech:gt.metaitem.01:18032>, <gregtech:gt.metaitem.01:18032>], [<gregtech:gt.metaitem.02:31032>, <minecraft:iron_ingot>, <gregtech:gt.metaitem.02:31032>], [<irontank:ironTank>, <Railcraft:machine.beta:7>, <irontank:ironTank>]]);

recipes.addShaped(<Railcraft:machine.beta:7>, [[<gregtech:gt.metaitem.01:18301>, <gregtech:gt.metaitem.01:18301>, <gregtech:gt.metaitem.01:18301>], [<gregtech:gt.metaitem.02:31301>, <gregtech:gt.metaitem.01:11301>, <gregtech:gt.metaitem.02:31301>], [<irontank:copperTank>, <BuildCraft|Core:engineBlock>, <irontank:copperTank>]]);