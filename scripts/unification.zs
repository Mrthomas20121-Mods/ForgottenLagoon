import crafttweaker.api.item.IItemStack;
import mods.jei.JEI;

var recipesToRemove = [
    "industrialforegoing:machine_frame_pity",
    "minecraft:piston",
    "glassential:glass_dark",
    "glassential:glass_ethereal",
    "glassential:glass_ghostly",
    "glassential:glass_light",
    "glassential:glass_redstone",
    "rftoolsbase:dimensionalshard",
    "hostilenetworks:living_matter/overworldian/iron_ingot",
    "hostilenetworks:living_matter/overworldian/carrot",
    "hostilenetworks:living_matter/overworldian/potato",
    "extendedcrafting:basic_table",
    "extendedcrafting:advanced_table",
    "extendedcrafting:elite_table",
    "thermal:machine_furnace",
    "thermal:machine_sawmill",
    "thermal:machine_pulverizer",
    "thermal:machine_smelter"
] as string[];

for recipeToRemove in recipesToRemove {
    craftingTable.removeByName(recipeToRemove);
}

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
    <item:appliedenergistics2:gold_dust>,
    <item:appliedenergistics2:iron_dust>,
    <item:bloodmagic:ironsand>,
    <item:bloodmagic:goldsand>,
    <item:bloodmagic:coalsand>,
    <item:appliedenergistics2:nether_quartz_dust>,
    <item:eidolon:pewter_blend>
] as IItemStack[];

for item in itemsToRemoveAndHide {
    JEI.hideItem(item);
    craftingTable.removeRecipe(item);
}

<tag:items:forge:dusts>.remove(<item:appliedenergistics2:nether_quartz_dust>);
<tag:items:forge:dusts/quartz>.remove(<item:appliedenergistics2:nether_quartz_dust>);
<tag:items:appliedenergistics2:nether_quartz_dust>.remove(<item:appliedenergistics2:nether_quartz_dust>);
<tag:items:appliedenergistics2:dusts/quartz>.remove(<item:appliedenergistics2:nether_quartz_dust>);

// coal dust
<tag:items:forge:dusts>.remove(<item:bloodmagic:coalsand>);
<tag:items:forge:dusts/coal>.remove(<item:bloodmagic:coalsand>);
// iron dust
<tag:items:forge:dusts>.remove(<item:appliedenergistics2:iron_dust>, <item:bloodmagic:ironsand>);
<tag:items:forge:dusts/iron>.remove(<item:appliedenergistics2:iron_dust>, <item:bloodmagic:ironsand>);
// gold dust
<tag:items:forge:dusts>.remove(<item:appliedenergistics2:gold_dust>, <item:bloodmagic:goldsand>);
<tag:items:forge:dusts/gold>.remove(<item:appliedenergistics2:gold_dust>, <item:bloodmagic:goldsand>);

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

// remove charged certus quartz
<tag:items:appliedenergistics2:crystals/certus>.remove(<item:appliedenergistics2:charged_certus_quartz_crystal>);

blastFurnace.removeByName("tconstruct:common/materials/copper_ingot_blasting");
furnace.removeByName("tconstruct:common/materials/copper_ingot_smelting");

furnace.removeByName("tconstruct:smeltery/scorched/scorched_brick");
furnace.removeByName("tconstruct:smeltery/seared/seared_brick");

// hide categories
JEI.hideCategory("blue_skies:alchemy");
JEI.hideCategory("botania:orechid");
JEI.hideCategory("botania:orechid_ignem");
JEI.hideCategory("appliedenergistics2:grinder");
JEI.hideCategory("appliedenergistics2:appliedenergistics2.inscriber");

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

removeFurnaceRecipe("eidolon:smelt_lead_dust", "eidolon:blast_lead_dust");
removeFurnaceRecipe("eidolon:smelt_lead_ore", "eidolon:blast_lead_ore");
removeFurnaceRecipe("eidolon:smelt_pewter_blend", "eidolon:blast_pewter_blend");

function removeFurnaceRecipe(furnaceRecipe as string, blastRecipe as string) as void {
    blastFurnace.removeByName(blastRecipe);
    furnace.removeByName(furnaceRecipe);
}