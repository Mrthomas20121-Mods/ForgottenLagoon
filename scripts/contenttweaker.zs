#loader contenttweaker

import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.basic.BlockBuilderBasic;

// strange sand aquamarine shale
new BlockBuilder(<blockmaterial:sand>)
    .setRequiresTool()
    .withHardnessAndResistance(0.5f)
    .withHarvestLevel(1)
    .withHarvestTool(<tooltype:shovel>)
    .withType<BlockBuilderBasic>()
    .build("strange_aquamarine_shale");

// crystral aquamarine shale
new BlockBuilder(<blockmaterial:sand>)
    .setRequiresTool()
    .withHardnessAndResistance(0.5f)
    .withHarvestLevel(1)
    .withHarvestTool(<tooltype:shovel>)
    .withType<BlockBuilderBasic>()
    .build("crystal_aquamarine_shale");

// midnight aquamarine shale
new BlockBuilder(<blockmaterial:sand>)
    .setRequiresTool()
    .withHardnessAndResistance(0.5f)
    .withHarvestLevel(1)
    .withHarvestTool(<tooltype:shovel>)
    .withType<BlockBuilderBasic>()
    .build("midnight_aquamarine_shale");