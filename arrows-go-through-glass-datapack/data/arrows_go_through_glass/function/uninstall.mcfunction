# Removes everything the datapack created. Disable the datapack right after running this,
# otherwise the load function recreates the scoreboards on the next /reload.
scoreboard objectives remove agtg.config
scoreboard objectives remove agtg.tmp
scoreboard objectives remove agtg.const
tag @e[tag=agtg.landed] remove agtg.landed
data remove storage arrows_go_through_glass:tmp motion
data remove storage arrows_go_through_glass:tmp aim
tellraw @s {"text":"[Arrows Go Through Glass] Uninstalled. Now run /datapack disable on this pack.","color":"aqua"}
