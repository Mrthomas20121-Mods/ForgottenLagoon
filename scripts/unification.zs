import crafttweaker.api.item.IItemStack;
import mods.jei.JEI;

var itemsToRemoveAndHide = [
    <item:tconstruct:copper_ingot>, 
    <item:tconstruct:copper_nugget>,
    <item:tconstruct:copper_block>,
    <item:eidolon:lead_ingot>,
    <item:eidolon:lead_nugget>,
    <item:eidolon:lead_block>,
    <item:eidolon:lead_ore>,
    <item:titanium:gold_gear>,
    <item:titanium:iron_gear>,
    <item:titanium:diamond_gear>,
    <item:forbidden_arcanus:edelwood_bucket>,
    <item:forbidden_arcanus:pixie_spawn_egg>,
    <item:forbidden_arcanus:arcane_dark_stone>,
    <item:forbidden_arcanus:obsidian_helmet>,
    <item:forbidden_arcanus:obsidian_shoulder_pads>,
    <item:forbidden_arcanus:obsidian_knee_pads>,
    <item:forbidden_arcanus:obsidian_boots>,
    <item:forbidden_arcanus:obsidian_sword>,
    <item:forbidden_arcanus:obsidian_shovel>,
    <item:forbidden_arcanus:obsidian_pickaxe>,
    <item:forbidden_arcanus:obsidian_axe>,
    <item:forbidden_arcanus:obsidian_hoe>,
    <item:forbidden_arcanus:infernum_pickaxe>,
    <item:forbidden_arcanus:slimec_pickaxe>,
    <item:blue_skies:alchemy_table>,
    <item:tconstruct:copper_ore>,
    <item:tconstruct:copper_ingot>,
    <item:tconstruct:copper_nugget>,
    <item:tconstruct:copper_block>,
    <item:appliedenergistics2:facade>,
    <item:botania:orechid>,
    <item:botania:orechid_ignem>,
] as IItemStack[];

// copper
<tag:items:forge:ingots>.remove(<item:tconstruct:copper_ingot>);
<tag:items:forge:ingots/copper>.remove(<item:tconstruct:copper_ingot>);

<tag:items:forge:nuggets>.remove(<item:tconstruct:copper_nugget>);
<tag:items:forge:nuggets/copper>.remove(<item:tconstruct:copper_nugget>);

<tag:items:forge:storage_blocks>.remove(<item:tconstruct:copper_block>);
<tag:items:forge:storage_blocks/copper>.remove(<item:tconstruct:copper_block>);

<tag:blocks:forge:storage_blocks>.remove(<block:tconstruct:copper_block>);
<tag:blocks:forge:storage_blocks/copper>.remove(<block:tconstruct:copper_block>);

<tag:items:forge:ores>.remove(<item:tconstruct:copper_ore>);
<tag:items:forge:ores/copper>.remove(<item:tconstruct:copper_ore>);

<tag:blocks:forge:ores>.remove(<block:tconstruct:copper_ore>);
<tag:blocks:forge:ores/copper>.remove(<block:tconstruct:copper_ore>);

// lead
<tag:items:forge:ingots>.remove(<item:eidolon:lead_ingot>);
<tag:items:forge:ingots/lead>.remove(<item:eidolon:lead_ingot>);

<tag:items:forge:nuggets>.remove(<item:eidolon:lead_nugget>);
<tag:items:forge:nuggets/lead>.remove(<item:eidolon:lead_nugget>);

<tag:items:forge:storage_blocks>.remove(<item:eidolon:lead_block>);
<tag:items:forge:storage_blocks/lead>.remove(<item:eidolon:lead_block>);

<tag:blocks:forge:storage_blocks>.remove(<block:eidolon:lead_block>);
<tag:blocks:forge:storage_blocks/lead>.remove(<block:eidolon:lead_block>);

<tag:items:forge:ores>.remove(<item:eidolon:lead_ore>);
<tag:items:forge:ores/lead>.remove(<item:eidolon:lead_ore>);

<tag:blocks:forge:ores>.remove(<block:eidolon:lead_ore>);
<tag:blocks:forge:ores/lead>.remove(<block:eidolon:lead_ore>);

// arcane gold
<tag:items:forge:ingots>.remove(<item:forbidden_arcanus:arcane_gold_ingot>);
<tag:items:forge:ingots/arcane_gold>.remove(<item:forbidden_arcanus:arcane_gold_ingot>);

<tag:items:forge:nuggets>.remove(<item:forbidden_arcanus:arcane_gold_nugget>);
<tag:items:forge:nuggets/arcane_gold>.remove(<item:forbidden_arcanus:arcane_gold_nugget>);

<tag:items:forge:storage_blocks>.remove(<item:forbidden_arcanus:arcane_gold_block>);
<tag:items:forge:storage_blocks/arcane_gold>.remove(<item:forbidden_arcanus:arcane_gold_block>);

<tag:blocks:forge:storage_blocks>.remove(<block:forbidden_arcanus:arcane_gold_block>);
<tag:blocks:forge:storage_blocks/arcane_gold>.remove(<block:forbidden_arcanus:arcane_gold_block>);

// titanium gears
<tag:items:forge:gears>.remove(<item:titanium:gold_gear>, <item:titanium:iron_gear>, <item:titanium:diamond_gear>);
<tag:items:forge:gears/gold>.remove(<item:titanium:gold_gear>);
<tag:items:forge:gears/iron>.remove(<item:titanium:iron_gear>);
<tag:items:forge:gears/diamond>.remove(<item:titanium:diamond_gear>);

craftingTable.removeByName("hostilenetworks:living_matter/overworldian/iron_ingot");
craftingTable.removeByName("hostilenetworks:living_matter/overworldian/carrot");
craftingTable.removeByName("hostilenetworks:living_matter/overworldian/potato");
blastFurnace.removeByName("tconstruct:common/materials/copper_ingot_blasting");
furnace.removeByName("tconstruct:common/materials/copper_ingot_smelting");
blastFurnace.removeByName("thermal:smelting/lead_ingot_from_dust_blasting");
furnace.removeByName("thermal:smelting/lead_ingot_from_dust_smelting");
blastFurnace.removeByName("thermal:smelting/lead_ingot_from_ore_blasting");
furnace.removeByName("thermal:smelting/lead_ingot_from_ore_smelting");

for item in itemsToRemoveAndHide {
    JEI.hideItem(item);
    craftingTable.removeRecipe(item);
}

// hide categories
JEI.hideCategory("blue_skies:alchemy");
JEI.hideCategory("botania:orechid");
JEI.hideCategory("botania:orechid_ignem");

// remove recipe for mystical flowers
craftingTable.removeByRegex("botania:petal.*");

hideRegex("druidcraft:moonstone.*");

// hide and remove forbidden arcanus weapons and arcane gold stuff.
hideRegex("forbidden_arcanus:arcane_gold.*");
hideRegex("forbidden_arcanus:reinforced_arcane_gold.*");
hideRegex("forbidden_arcanus:tyr.*");
hideRegex("forbidden_arcanus:mortem.*");
hideRegex("forbidden_arcanus:draco_arcanus.*");
hideRegex("forbidden_arcanus:.*_blacksmith_gavel");
hideRegex("forbidden_arcanus:blacksmith_gavel.*");
hideRegex("forbidden_arcanus:edelwood_.*_bucket");

function hideRegex(regex as string) as void {
    craftingTable.removeByRegex(regex);
    JEI.hideRegex(regex);
}