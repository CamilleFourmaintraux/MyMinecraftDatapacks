# Arrows Go Through Glass - main loop.
# Tick functions run before entities move, so a block found on a projectile's path
# can be removed before the projectile reaches it this tick.

# Respect the vanilla gamerule: nothing happens when projectiles are not allowed to break blocks.
execute store result score #enabled agtg.tmp run gamerule minecraft:projectiles_can_break_blocks
execute unless score #enabled agtg.tmp matches 1 run return 0

# Keep the config in a sane range (it can be edited at any time with /scoreboard).
execute if score #min_speed agtg.config matches ..-1 run scoreboard players set #min_speed agtg.config 0
execute if score #min_speed agtg.config matches 20001.. run scoreboard players set #min_speed agtg.config 20000
execute if score #kept_speed agtg.config matches ..-1 run scoreboard players set #kept_speed agtg.config 0
execute if score #kept_speed agtg.config matches 101.. run scoreboard players set #kept_speed agtg.config 100

# Speeds are compared squared, so no square root is needed.
scoreboard players operation #min_speed_sq agtg.tmp = #min_speed agtg.config
scoreboard players operation #min_speed_sq agtg.tmp *= #min_speed agtg.config

execute as @e[type=#arrows_go_through_glass:projectiles,tag=!agtg.landed] at @s run function arrows_go_through_glass:projectile/tick
