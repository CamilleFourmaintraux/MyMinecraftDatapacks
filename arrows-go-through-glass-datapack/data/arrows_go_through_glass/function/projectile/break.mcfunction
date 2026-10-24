# Shatters the block at the current position and slows the projectile down.
# Runs as the projectile, positioned at the block.

# Destroy the block (break sound and particles) without any drop:
# block_drops is switched off only for this command, then restored to its previous value.
execute store result score #block_drops agtg.tmp run gamerule minecraft:block_drops
gamerule minecraft:block_drops false
setblock ~ ~ ~ air destroy
execute if score #block_drops agtg.tmp matches 1 run gamerule minecraft:block_drops true

# motion = motion * kept_speed / 100 (values read at 1/1000 precision).
execute store result score #v agtg.tmp run data get storage arrows_go_through_glass:tmp motion[0] 1000
scoreboard players operation #v agtg.tmp *= #kept_speed agtg.config
execute store result storage arrows_go_through_glass:tmp motion[0] double 0.00001 run scoreboard players get #v agtg.tmp

execute store result score #v agtg.tmp run data get storage arrows_go_through_glass:tmp motion[1] 1000
scoreboard players operation #v agtg.tmp *= #kept_speed agtg.config
execute store result storage arrows_go_through_glass:tmp motion[1] double 0.00001 run scoreboard players get #v agtg.tmp

execute store result score #v agtg.tmp run data get storage arrows_go_through_glass:tmp motion[2] 1000
scoreboard players operation #v agtg.tmp *= #kept_speed agtg.config
execute store result storage arrows_go_through_glass:tmp motion[2] double 0.00001 run scoreboard players get #v agtg.tmp

data modify entity @s Motion set from storage arrows_go_through_glass:tmp motion

# Update the speed so the scan knows whether the projectile can still break the next block.
function arrows_go_through_glass:projectile/read_speed
