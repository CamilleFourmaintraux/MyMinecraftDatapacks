# Saplings to Sticks

A small datapack that lets you craft any sapling into a stick.

## Features

- Shapeless recipe: **1 sapling → 1 stick**
- Works with every sapling in the `#minecraft:saplings` item tag, including modded saplings (e.g. Biomes O' Plenty, Ecologic) with no per-mod compatibility needed
- The recipe is unlocked in the recipe book as soon as you pick up a sapling

Vanilla saplings covered: oak, spruce, birch, jungle, acacia, dark oak, cherry, pale oak, azalea, flowering azalea and mangrove propagule.

## Compatibility

- Minecraft **1.21 – 1.21.11**
- Works on singleplayer worlds and servers, no mod required

## Installation

1. Download the `.zip` file
2. Put it in your world's `datapacks` folder (or select it when creating a new world)
3. Run `/reload` or rejoin the world

## Adding a missing modded sapling

If a mod doesn't add its saplings to `#minecraft:saplings`, you can add them yourself without editing this pack. Create a small datapack with the following file:

`data/saplingstosticks/tags/item/saplings.json`

```json
{
  "replace": false,
  "values": [
    "modid:example_sapling"
  ]
}
```

## License

All rights reserved unless stated otherwise.
