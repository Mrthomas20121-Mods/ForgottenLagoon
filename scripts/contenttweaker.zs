#loader contenttweaker

import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.basic.BlockBuilderBasic;

new BlockBuilder(<blockmaterial:rock>)
    .withType<BlockBuilderBasic>()
    .build("sapphire_ore");

new BlockBuilder(<blockmaterial:rock>)
    .withType<BlockBuilderBasic>()
    .build("ruby_ore");