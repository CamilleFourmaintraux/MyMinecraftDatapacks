# Arrows Go Through Glass - setup, runs on world load and on /reload.

scoreboard objectives add agtg.config dummy
scoreboard objectives add agtg.tmp dummy
scoreboard objectives add agtg.const dummy

# Constants used to clamp motion components before squaring them (avoids int overflow).
scoreboard players set #max agtg.const 20000
scoreboard players set #min agtg.const -20000

# Default config, only written if the value does not exist yet (keeps player changes across reloads).
# #min_speed : speed needed to break a block, in hundredths of a block per tick (250 = 2.5 blocks/tick).
# #kept_speed: percentage of its speed a projectile keeps after breaking a block (40 = 40%).
execute unless score #min_speed agtg.config = #min_speed agtg.config run scoreboard players set #min_speed agtg.config 250
execute unless score #kept_speed agtg.config = #kept_speed agtg.config run scoreboard players set #kept_speed agtg.config 40
