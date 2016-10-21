mods.thaumcraft.Research.refreshResearchRecipe("DISTILESSENTIA");  
mods.thaumcraft.Research.refreshResearchRecipe("TUBES");
mods.thaumcraft.Research.refreshResearchRecipe("ADVALCHEMYFURNACE");


//New Enchanting Table Recipe
mods.thaumcraft.Research.addResearch("ENCHANTINGTABLE", "BASICS", "humanus 5, praecantatio 5", 1, -4, 0, <minecraft:enchanting_table>);
game.setLocalization("en_US", "tc.research_name.ENCHANTINGTABLE", "Enchanting Table!");
game.setLocalization("zh_CN", "tc.research_name.ENCHANTINGTABLE", "\u9644\u9B54\u53F0!");
game.setLocalization("en_US", "tc.research_text.ENCHANTINGTABLE", "You need it!");
game.setLocalization("zh_CN", "tc.research_text.ENCHANTINGTABLE", "\u4F60\u4E0D\u9700\u8981\u8FD9\u4E2A\u4E48?");
game.setLocalization("en_US", "tc.research_page.ENCHANTINGTABLE.1", "Just an enchanting table");
game.setLocalization("zh_CN", "tc.research_page.ENCHANTINGTABLE.1", "\u4F60\u7A81\u7136\u53D1\u73B0\u8FD9\u672C\u9B54\u5BFC\u624B\u518C\u6709\u7740\u66F4\u591A\u7684\u7528\u5904\u3002\u8FD9\u672C\u4E66\u5177\u6709\u795E\u5947\u7684\u9B54\u6CD5\u7279\u6027\uFF0C\u53EF\u4EE5\u628A\u4F60\u8F9B\u82E6\u79EF\u6512\u4E0B\u6765\u7684\u7ECF\u9A8C\uFF0C\u987A\u5229\u7684\u6CE8\u5165\u5230\u6B66\u5668\u548C\u88C5\u5907\u91CC\u3002\u901A\u8FC7\u5728\u9576\u6709\u94BB\u77F3\u7684\u9ED1\u66DC\u77F3\u56FE\u817E\u4E0A\u653E\u7F6E\u8FD9\u672C\u4E66\uFF0C\u7136\u540E\u6CE8\u5165\u4E00\u5B9A\u91CF\u7684\u9B54\u529B\uFF0C\u4F60\u6210\u529F\u7684\u505A\u51FA\u4E86\u9644\u9B54\u53F0\uFF01");
mods.thaumcraft.Research.setSecondary("ENCHANTINGTABLE", true);
mods.thaumcraft.Research.addPrereq("ENCHANTINGTABLE", "THAUMONOMICON", false);
mods.thaumcraft.Infusion.addRecipe("ENCHANTINGTABLE",<Thaumcraft:ItemThaumonomicon:0>, [<minecraft:diamond>, <Thaumcraft:blockCosmeticSolid:0>, <minecraft:diamond>, <Thaumcraft:blockCosmeticSolid:0>, <minecraft:diamond>, <Thaumcraft:blockCosmeticSolid:0>, <minecraft:diamond>, <Thaumcraft:blockCosmeticSolid:0>], "praecantatio 20, humanus 5, alienis 5", <minecraft:enchanting_table>, 5);
mods.thaumcraft.Research.addPage("ENCHANTINGTABLE", "tc.research_page.ENCHANTINGTABLE.1");
mods.thaumcraft.Research.addInfusionPage("ENCHANTINGTABLE", <minecraft:enchanting_table>);

//Modify DISTILESSENTIA
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockStoneDevice>);
mods.thaumcraft.Arcane.addShaped("DISTILESSENTIA",
<Thaumcraft:blockStoneDevice>, "aqua 8, ignis 8", [
[<gregtech:gt.metaitem.01:17330>, <gregtech:gt.metaitem.01:17330>, <gregtech:gt.metaitem.01:17330>], 
[<gregtech:gt.blockmachines:5122>, <gregtech:gt.blockmachines:119>, <gregtech:gt.blockmachines:5122>], 
[<gregtech:gt.metaitem.01:17330>, <gregtech:gt.metaitem.01:17330>, <gregtech:gt.metaitem.01:17330>]]);
mods.thaumcraft.Research.refreshResearchRecipe("DISTILESSENTIA");

//Modify TC TUBES
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockTube>);
mods.thaumcraft.Arcane.addShaped("TUBES",<Thaumcraft:blockTube> * 12, "aqua 8, ordo 8", [
[<gregtech:gt.metaitem.01:17330>, <gregtech:gt.metaitem.01:17330>, <gregtech:gt.metaitem.01:17330>], 
[<gregtech:gt.metatool.01:16>, <Thaumcraft:ItemResource:3>, <gregtech:gt.metatool.01:12>], 
[<gregtech:gt.metaitem.01:17330>, <gregtech:gt.metaitem.01:17330>, <gregtech:gt.metaitem.01:17330>]]);
mods.thaumcraft.Research.refreshResearchRecipe("TUBES");

//Modify ADVALCHEMYFURNACE
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockMetalDevice:3>);
mods.thaumcraft.Arcane.addShaped("ADVALCHEMYFURNACE",<Thaumcraft:blockMetalDevice:3> * 4, "terra 80, aqua 80, ordo 220", [
[<ore:plateDoubleTungstenSteel>, <Thaumcraft:blockMetalDevice:9>, <Thaumcraft:ItemResource:16>], 
[<Thaumcraft:blockMetalDevice:9>, <Thaumcraft:ItemEldritchObject:3>, <Thaumcraft:blockMetalDevice:9>], 
[<Thaumcraft:ItemResource:16>, <Thaumcraft:blockMetalDevice:9>, <ore:plateDoubleTungstenSteel>]]);
mods.thaumcraft.Research.refreshResearchRecipe("ADVALCHEMYFURNACE");

//Modify Iron WandCaps
recipes.remove(<Thaumcraft:WandCap>);
recipes.addShaped(<Thaumcraft:WandCap>,[
[<gregtech:gt.metatool.01:12>, <ore:ringIron>, <gregtech:gt.metatool.01:18>],
[<ore:foilIron>, null, <ore:foilIron>],
[null, null, null]]);
mods.thaumcraft.Research.refreshResearchRecipe("BASICTHAUMATURGY");

//Modify Gold WandCaps
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:WandCap:1>);
mods.thaumcraft.Arcane.addShaped("CAP_gold", <Thaumcraft:WandCap:1>, "ignis 6, ordo 6, aer 6", [
[<gregtech:gt.metatool.01:12>, <ore:ringGold>, <gregtech:gt.metatool.01:18>],
[<ore:foilGold>, <Thaumcraft:WandCap>, <ore:foilGold>],
[null, null, null]]);
mods.thaumcraft.Research.refreshResearchRecipe("CAP_gold");

//Modify Copper WandCaps
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:WandCap:3>);
mods.thaumcraft.Arcane.addShaped("CAP_copper", <Thaumcraft:WandCap:3>, "ignis 4, ordo 4, aer 4", [
[<gregtech:gt.metatool.01:12>, <ore:ringCopper>, <gregtech:gt.metatool.01:18>],
[<ore:foilCopper>, <Thaumcraft:WandCap>, <ore:foilCopper>],
[null, null, null]]);
mods.thaumcraft.Research.refreshResearchRecipe("CAP_copper");

//Modify Silver WandCaps
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:WandCap:5>);
mods.thaumcraft.Arcane.addShaped("CAP_silver", <Thaumcraft:WandCap:5>, "ignis 8, ordo 8, aer 8", [
[<gregtech:gt.metatool.01:12>, <ore:ringSilver>, <gregtech:gt.metatool.01:18>],
[<ore:foilSilver>, <Thaumcraft:WandCap:1>, <ore:foilSilver>],
[null, null, null]]);
mods.thaumcraft.Research.refreshResearchRecipe("CAP_silver");

//Modify Thaumium WandCaps
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:WandCap:6>);
mods.thaumcraft.Arcane.addShaped("CAP_thaumium", <Thaumcraft:WandCap:6>, "ignis 12, ordo 12, aer 12", [
[<gregtech:gt.metatool.01:12>, <ore:ringThaumium>, <gregtech:gt.metatool.01:18>],
[<ore:foilThaumium>, <Thaumcraft:WandCap:1>, <ore:foilThaumium>],
[null, null, null]]);
mods.thaumcraft.Research.refreshResearchRecipe("CAP_thaumium");

//Modify Void WandCaps
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:WandCap:8>);
mods.thaumcraft.Arcane.addShaped("CAP_void", <Thaumcraft:WandCap:8>, "perditio 54, ordo 54, ignis 36, aer 36", [
[<ore:nuggetVoid>, <ore:nuggetVoid>, <ore:nuggetVoid>], 
[<ore:nuggetVoid>, <Thaumcraft:WandCap:6>, <ore:nuggetVoid>], 
[<gregtech:gt.metatool.01:12>, null, <gregtech:gt.metatool.01:18>]]);
mods.thaumcraft.Research.refreshResearchRecipe("CAP_void");

//Modify Node Stabilizer
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:9>);
mods.thaumcraft.Arcane.addShaped("NODESTABILIZER", <Thaumcraft:blockStoneDevice:9>, "aqua 32, ordo 32, terra 32", [
[null, <ore:ingotGold>, null], 
[<ore:blockQuartz>, <minecraft:piston>, <ore:blockQuartz>], 
[<ore:ingotSteel>, <Thaumcraft:ItemResource:1>, <ore:ingotSteel>]]);
mods.thaumcraft.Research.refreshResearchRecipe("NODESTABILIZER");

//Modify Node Stabilizer Adv.
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:blockStoneDevice:10>);
mods.thaumcraft.Infusion.addRecipe("NODESTABILIZERADV", <Thaumcraft:blockStoneDevice:9>, [<Thaumcraft:ItemResource:1>, <gregtech:gt.metaitem.01:17019>, <Thaumcraft:ItemResource>, <gregtech:gt.metaitem.01:17019>, <Thaumcraft:ItemResource:1>, <gregtech:gt.metaitem.01:17019>, <Thaumcraft:ItemResource>, <gregtech:gt.metaitem.01:17019>], "auram 32, ordo 16, potentia 16, praecantatio 16", <Thaumcraft:blockStoneDevice:10>, 10);
mods.thaumcraft.Research.refreshResearchRecipe("NODESTABILIZERADV");

//Modify Node Transducer
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:11>);
mods.thaumcraft.Arcane.addShaped("VISPOWER", <Thaumcraft:blockStoneDevice:11>, "ignis 32, aer 32, perditio 32", [
[<ore:plateRedAlloy>, <minecraft:comparator>, <ore:plateRedAlloy>], 
[<ore:ingotStainlessSteel>, <Thaumcraft:blockStoneDevice:9>, <ore:ingotStainlessSteel>], 
[<ore:plateRedAlloy>, <Thaumcraft:ItemResource:1>, <ore:plateRedAlloy>]]);
mods.thaumcraft.Research.refreshResearchRecipe("VISPOWER");

//Modify Vis Relay
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockMetalDevice:14>);
mods.thaumcraft.Arcane.addShaped("VISPOWER", <Thaumcraft:blockMetalDevice:14>, "ignis 8, ordo 8", [
[null, <ore:ingotAluminum>, null], 
[<ore:ingotAluminum>, <Thaumcraft:ItemShard:6>, <ore:ingotAluminum>], 
[null, <ore:ingotAluminum>, null]]);
mods.thaumcraft.Research.refreshResearchRecipe("VISPOWER");

//Modify Vis Charge Relay
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockMetalDevice:2>);
mods.thaumcraft.Arcane.addShaped("VISCHARGERELAY", <Thaumcraft:blockMetalDevice:2>, "ignis 16, ordo 16, aer 16", [
[null, <Thaumcraft:blockMetalDevice:14>, null], 
[<Thaumcraft:WandRod>, null, <Thaumcraft:WandRod>], 
[<ore:ingotStainlessSteel>, null, <ore:ingotStainlessSteel>]]);
mods.thaumcraft.Research.refreshResearchRecipe("VISCHARGERELAY");

//add WARNING message
game.setLocalization("zh_CN", "derp.research_page.WARNING", "\u00A7n\u6CE8\u610F\uFF1A\u00A7r<BR><BR>\u7531\u4E8E\u6B64\u7269\u8FC7\u4E8E\u5371\u9669\uFF0C\u5408\u6210\u5DF2\u88AB\u9E73\u72F8\u733F\u548C\u8C10\u3002<BR>PS:\u90FD\u662FTP\u7684\u9519<BR>");


//remove TC Primal Focus
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:FocusPrimal>);
mods.thaumcraft.Research.clearPages("FOCUSPRIMAL");
mods.thaumcraft.Research.addPage("FOCUSPRIMAL", "tc.research_page.FOCUSPRIMAL.1");
mods.thaumcraft.Research.addPage("FOCUSPRIMAL", "derp.research_page.WARNING");

//remove TC Arcane Bore
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockWoodenDevice:4>);
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:blockWoodenDevice:5>);
mods.thaumcraft.Research.clearPages("ARCANEBORE");
mods.thaumcraft.Research.addPage("ARCANEBORE", "tc.research_page.ARCANEBORE.1");
mods.thaumcraft.Research.addPage("ARCANEBORE", "tc.research_page.ARCANEBORE.2");
mods.thaumcraft.Research.addPage("ARCANEBORE", "tc.research_page.ARCANEBORE.3");
mods.thaumcraft.Research.addPage("ARCANEBORE", "derp.research_page.WARNING");

//remove TC TransIron
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemNugget>);
mods.thaumcraft.Research.clearPages("TRANSIRON");
mods.thaumcraft.Research.addPage("TRANSIRON", "tc.research_page.TRANSIRON.1");
mods.thaumcraft.Research.addPage("ARCANEBORE", "derp.research_page.WARNING");

//remove bukkit aspects
mods.thaumcraft.Aspects.remove(<minecraft:bucket>, "metallum 8");
mods.thaumcraft.Aspects.remove(<minecraft:bucket>, "vacuos 1");
