var air = <item:minecraft:air>;

craftingTable.removeRecipe(<item:atum:scarab>);
craftingTable.addShaped("atum/scarab", <item:atum:scarab>, [
    [<item:tinkers_reforged:electrical_copper_ingot>, air, <item:tinkers_reforged:electrical_copper_ingot>],
    [air, <item:tinkersarchery:tantalum_ingot>, air]
]);