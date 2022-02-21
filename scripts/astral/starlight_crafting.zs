
val air = <item:minecraft:air>;

// nether grout recipe, unlock the nether
craftingTable.removeRecipe(<item:tconstruct:nether_grout>);
<recipetype:astralsorcery:altar>.addRecipe("nether_grout", "ATTUNEMENT", <item:tconstruct:nether_grout>*4, [
[<tag:items:malum:ether>, air, air, air, <item:thermal:basalz_powder>],
[air, <item:thermal:sulfur>, <item:malum:runewood_planks>, <item:thermal:sulfur>, air],
[air, <item:malum:runewood_planks>, <item:tconstruct:grout>, <item:malum:runewood_planks>, air],
[air, <item:thermal:sulfur>, <item:malum:runewood_planks>, <item:thermal:sulfur>, air],
[<item:malum:solar_sapball>, air, air, air, <tag:items:malum:ether>]
], 50, 50);
