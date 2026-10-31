# Coal Ores Require Stone Tool

Coal ores and blocks of coal can no longer be harvested with a wooden pickaxe: a **stone pickaxe or better** is now required.

With a wooden (or golden) pickaxe, they still break, but slowly, and drop nothing (no coal, no experience) - exactly like iron ore does in vanilla.

## How it works

The pack only appends coal ores and blocks of coal to the vanilla block tag `#minecraft:needs_stone_tool`. Vanilla tool materials already deny drops for that tag on wooden and golden tools, so no function, no tick and no performance cost are involved.

Gold tools sit at the same tier as wood in vanilla, so golden pickaxes cannot harvest them either.

## Compatibility

- **Any coal ore from any mod** is covered as long as it is in `#minecraft:coal_ores` or the common convention tag `#c:ores/coal` (the latter is optional, so the pack loads fine without Fabric API).
- **Any modded block of coal** in the common convention tag `#c:storage_blocks/coal` (optional as well) is covered too.
- **Universal Ores**: its granite, diorite, andesite, tuff and calcite coal ores are covered.
- **Jade / WTHIT-style tooltips**: they read the same vanilla tool rules, so the stone pickaxe is shown as the minimum harvest tool.
- **Modded tools** following the vanilla tier system respect the new requirement automatically.
- Never overwrites the tag (`"replace": false`), so other packs and mods adding to it keep working.

## Supported versions

Minecraft Java Edition **1.21 to 1.21.11**.

## Installation

Drop the zip into the `datapacks` folder of your world (or use a global datapack loader), then run `/reload` or restart the world.
