# TrueStoneTools

A small data pack that makes stone tools require **real stone** instead of cobblestone.

Every stone tool keeps its exact vanilla shape. Only the material changes:

| Before | After |
| --- | --- |
| Cobblestone | **Stone** |
| Cobbled Deepslate | **Deepslate** |
| Blackstone | Blackstone (unchanged) |

## Why?

Going from wooden tools to stone tools is almost instant in vanilla: break a few blocks with a wooden pickaxe and you already have everything you need. With this pack, you first have to smelt cobblestone into stone, which means building a furnace and finding fuel before your first stone pickaxe.

Blackstone is left untouched: it only appears in the Nether, and by the time you get there, early progression no longer needs to be slowed down.

## Affected items

**Vanilla:** stone sword, pickaxe, axe, shovel, hoe and spear (spear on 1.21.11+ only).

**Mod compatibility** (only loaded when the mod is present, on Fabric or NeoForge):

- More Delight: `moredelight:stone_knife`
- Basic Weapons: `basicweapons:stone_dagger`, `stone_hammer`, `stone_club` (both patterns), `stone_quarterstaff`, `stone_glaive`, `stone_pike`

The Basic Weapons dagger keeps both of its original recipes: stone above a stick normally, and stone diagonal to a stick when Farmer's Delight is installed (so it doesn't clash with the Farmer's Delight knife).

The furnace and the brewing stand still accept cobblestone, and stone tools can still be repaired with cobblestone in an anvil.

## Customizing the materials

All recipes use one shared item tag: `truestonetools:stone_tool_materials`

```json
{
  "values": ["minecraft:stone", "minecraft:blackstone", "minecraft:deepslate"]
}
```

Another data pack (or a modpack) can add items to it, for example a modded stone variant.

## Compatibility

| Minecraft version | Data pack format | Status |
| --- | --- | --- |
| 1.21 – 1.21.1 | 48 | Supported (via the `legacy_1_21` overlay) |
| 1.21.2 – 1.21.10 | 57 – 88.0 | Supported |
| **1.21.11** | **94.1** | **Main target** |
| 26.1 – 26.3 | 101.1 – 121.0 | Supported |

## Installation

1. Download `TrueStoneTools.zip`.
2. Put the zip (do not extract it) in your world's `datapacks` folder, or add it from the "Data Packs" screen when creating a world.
3. Run `/reload` if the world is already open.
