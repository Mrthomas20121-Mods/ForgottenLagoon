import crafttweaker.api.loot.conditions.vanilla.LootTableId;
import crafttweaker.api.loot.conditions.LootConditionBuilder;
import crafttweaker.api.loot.modifiers.CommonLootModifiers;

// remove diamonds and iron from any loot table
loot.modifiers.register(
    "remove_iron",
    LootConditionBuilder.create(),
    CommonLootModifiers.removeAll(<item:minecraft:iron_ingot>, <item:minecraft:diamond>, <item:minecraft:gold_ingot>, <item:minecraft:glowstone_dust>, <item:minecraft:iron_nugget>, <item:botania:manasteel_ingot>)
);