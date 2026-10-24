# Arrows Go Through Glass (datapack)

Minecraft Java Edition 1.21.11 (data pack format 94).

Arrows flying fast enough shatter glass panes and keep flying, losing most of their speed.
A full-power bow or crossbow shot breaks a pane over a long distance; a weak shot, a skeleton
arrow or a dispenser arrow does not. At normal speeds an arrow can only break one pane, since it
is too slow afterwards; an arrow given an extreme speed (for example with commands) can go
through several.

## Installation

Put the zip file in the `datapacks` folder of your world, then run `/reload` or reopen the world.

## Enabling / disabling

The datapack follows the vanilla gamerule:

```
/gamerule minecraft:projectiles_can_break_blocks false
```

## Configuration

Values are scoreboard scores and can be changed at any time:

| Setting | Default | Meaning |
|---|---|---|
| `#min_speed` | `250` | Speed needed to break a block, in hundredths of a block per tick (250 = 2.5 blocks/tick). A full-power bow shot starts at 3.0, a crossbow at 3.15. |
| `#kept_speed` | `40` | Percentage of its speed the projectile keeps after breaking a block. |

```
/scoreboard players set #min_speed agtg.config 200
/scoreboard players set #kept_speed agtg.config 40
/function arrows_go_through_glass:config/show
/function arrows_go_through_glass:config/reset
```

### Breakable blocks and projectiles

- Breakable blocks: block tag `arrows_go_through_glass:breakable` (all glass panes, plus `#c:glass_panes`
  when a mod loader provides it).
- Projectiles: entity type tag `arrows_go_through_glass:projectiles` (`#minecraft:arrows`, i.e. arrows
  and spectral arrows). Tridents can be added (`minecraft:trident`); other projectiles such as snowballs
  are not supported by the datapack.
- Blocks the path scan sees through: block tag `arrows_go_through_glass:passable` (air, fluids, plants,
  torches, rails...).

To change them, override these tags from another datapack loaded above this one.

Broken blocks never drop anything.

## Known limitations

- The datapack checks the blocks on the arrow's path cell by cell, not the pane's thin hitbox:
  an arrow passing very close to a pane, through the same block cell, can break it.
- A mob standing right in front of a pane does not protect it: the pane can break even if the
  arrow hits the mob.
- Partial blocks (slabs, fences, carpets...) on the path stop the scan, so a pane right behind
  them may not break.

## Uninstalling

```
/function arrows_go_through_glass:uninstall
/datapack disable "file/arrows-go-through-glass-datapack-1.0.0.zip"
```
