import crafttweaker.api.item.IItemStack;

petalRecipe(<item:blue_skies:camellia>, <item:botania:magenta_petal>);
petalRecipe(<item:blue_skies:crystal_flower>, <item:botania:light_gray_petal>);
petalRecipe(<item:blue_skies:snowbloom>, <item:botania:white_petal>);
petalRecipe(<item:blue_skies:moonlit_bloom>, <item:botania:blue_petal>);
petalRecipe(<item:blue_skies:nightcress>, <item:botania:blue_petal>);
petalRecipe(<item:blue_skies:flare_floret>, <item:botania:red_petal>);
petalRecipe(<item:blue_skies:blaze_bud>, <item:botania:orange_petal>);
petalRecipe(<item:blue_skies:blush_blossom>, <item:botania:pink_petal>);
petalRecipe(<item:blue_skies:midday_bayhop>, <item:botania:pink_petal>);
petalRecipe(<item:blue_skies:chillweed>, <item:botania:light_blue_petal>);
petalRecipe(<item:blue_skies:frose>, <item:botania:light_blue_petal>);
petalRecipe(<item:blue_skies:polar_posy>, <item:botania:lime_petal>);
petalRecipe(<item:blue_skies:briskbloom>, <item:botania:purple_petal>);
petalRecipe(<item:blue_skies:lucentroot>, <item:botania:yellow_petal>);
petalRecipe(<item:blue_skies:sea_moss>, <item:botania:green_petal>);
petalRecipe(<item:blue_skies:muckweed>, <item:botania:gray_petal>);
blockPetalRecipe(<item:blue_skies:taratite>, <item:botania:cyan_petal>);
blockPetalRecipe(<item:blue_skies:cinderstone>, <item:botania:brown_petal>);
blockPetalRecipe(<item:blue_skies:midnight_sandstone>, <item:botania:black_petal>);

<recipetype:thermal:pulverizer>.addRecipe("rune_to_resources", [<item:blue_skies:moonstone>%50, <item:thermal:cinnabar_dust> % 50] , <item:forbidden_arcanus:rune>, 2, 1000);

function petalRecipe(flower as IItemStack, petal as IItemStack) as void {
    var name = flower.registryName.getPath()+"_to_petal";
    craftingTable.addShapeless(name, petal*2, [flower, <item:blue_skies:moonstone>]);
    <recipetype:thermal:pulverizer>.addRecipe(name, [petal*3 % 100, petal*2 % 50, <item:thermal:cinnabar_dust> % 10] , flower, 2, 1000);
    <recipetype:lazierae2:centrifuge>.addRecipe(name, petal*8, 70, 4000, flower);
}

function blockPetalRecipe(block as IItemStack, petal as IItemStack) as void {
    var name = block.registryName.getPath()+"_to_petal";
    <recipetype:thermal:pulverizer>.addRecipe(name, [petal*4 % 100, petal*2 % 50, <item:thermal:cinnabar_dust> % 30] , block, 2, 500);
    <recipetype:lazierae2:centrifuge>.addRecipe(name, petal*9, 70, 4000, block);
}