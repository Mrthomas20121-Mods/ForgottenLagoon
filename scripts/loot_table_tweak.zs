import crafttweaker.api.loot.conditions.vanilla.LootTableId;
import crafttweaker.api.loot.conditions.vanilla.RandomChance;
import crafttweaker.api.loot.conditions.LootConditionBuilder;
import crafttweaker.api.loot.modifiers.CommonLootModifiers;

// remove diamonds and iron from any loot table
loot.modifiers.register(
    "no_bones",
    LootConditionBuilder.create()
        .add<LootTableId>(condition => { condition.withTableId(<resource:minecraft:chests/desert_pyramid>); }),
    CommonLootModifiers.remove(<item:minecraft:bone>)
);