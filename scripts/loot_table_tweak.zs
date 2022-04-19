import crafttweaker.api.loot.conditions.vanilla.LootTableId;
import crafttweaker.api.loot.conditions.LootConditionBuilder;
import crafttweaker.api.loot.modifiers.CommonLootModifiers;

// remove all of these items from all loot tables
loot.modifiers.register(
    "remove_resources_from_chests",
    LootConditionBuilder.create(),
    CommonLootModifiers.removeAll(<item:minecraft:iron_ingot>, <item:minecraft:diamond>, <item:minecraft:gold_ingot>, <item:minecraft:glowstone_dust>, <item:minecraft:iron_nugget>, <item:botania:manasteel_ingot>, <item:sophisticatedbackpacks:backpack>, <item:sophisticatedbackpacks:iron_backpack>, <item:minecraft:flint_and_steel>)
);