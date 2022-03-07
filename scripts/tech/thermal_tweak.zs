// remove sand and red sand recipe
<recipetype:thermal:centrifuge>.removeRecipe([<item:minecraft:sand>, <item:thermal:bitumen>, <item:thermal:tar>], [<fluid:thermal:crude_oil>]);
<recipetype:thermal:centrifuge>.removeRecipe([<item:minecraft:red_sand>, <item:thermal:bitumen>, <item:thermal:tar>], [<fluid:thermal:crude_oil>]);

// new oil sand recipe
<recipetype:thermal:centrifuge>.addRecipe("centrifuge/oil_sand", [<item:atum:sand>, <item:thermal:bitumen> % 50, <item:thermal:tar>], <fluid:thermal:crude_oil> * 150, <item:thermal:oil_sand>, 10000);