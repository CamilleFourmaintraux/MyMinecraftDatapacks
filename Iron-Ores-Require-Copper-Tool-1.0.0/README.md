# Iron Ores Require Copper Tool

Iron ores, blocks of raw iron and blocks of iron can no longer be harvested with a stone pickaxe: a **copper pickaxe or better** is now required.

Tool progression becomes **wood → stone → copper → iron**.

With a stone (or wooden, or golden) pickaxe, these blocks still break, but slowly, and drop nothing - exactly like diamond ore with a stone pickaxe in vanilla.

## How it works

Vanilla has no `needs_copper_tool` tag: stone and copper pickaxes share the same harvest restrictions. The pack therefore appends these blocks to the vanilla block tag `#minecraft:incorrect_for_stone_tool`, which only stone-tier tools use. Wooden and golden pickaxes were already unable to harvest them. No function, no tick and no performance cost are involved.

Blocks of raw iron are included because they generate naturally in large ore veins; without them, the requirement could be bypassed.

## Compatibility

- **Any iron ore from any mod** is covered as long as it is in `#minecraft:iron_ores` or the common convention tag `#c:ores/iron`.
- **Any modded block of raw iron / block of iron** in `#c:storage_blocks/raw_iron` / `#c:storage_blocks/iron` is covered too.
- Convention tags are optional, so the pack loads fine without Fabric API.
- **Universal Ores**: its granite, diorite, andesite, tuff and calcite iron ores are covered.
- **Modded tools** built on the vanilla stone tool material respect the new requirement automatically.
- Never overwrites the tag (`"replace": false`), so other packs and mods adding to it keep working.

### Known limitation: Jade

Jade for Minecraft 1.21.9 - 1.21.11 does not know about copper tools, so its tooltip shows the **iron pickaxe** as the minimum harvest tool. The harvestable check mark is still correct: holding a copper pickaxe shows that the block can be harvested.

## Supported versions

Minecraft Java Edition **1.21.9 to 1.21.11** only. Copper tools do not exist before 1.21.9, so older versions refuse to load the pack instead of making iron require an iron pickaxe.

## Installation

Drop the zip into the `datapacks` folder of your world (or use a global datapack loader), then run `/reload` or restart the world.
