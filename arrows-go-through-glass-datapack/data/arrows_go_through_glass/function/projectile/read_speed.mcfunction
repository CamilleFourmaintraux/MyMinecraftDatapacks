# Computes the squared speed of the motion stored in arrows_go_through_glass:tmp motion.
# Output: #speed_sq agtg.tmp, in (hundredths of a block per tick)^2.

execute store result score #vx agtg.tmp run data get storage arrows_go_through_glass:tmp motion[0] 100
execute store result score #vy agtg.tmp run data get storage arrows_go_through_glass:tmp motion[1] 100
execute store result score #vz agtg.tmp run data get storage arrows_go_through_glass:tmp motion[2] 100

# Clamp each component to +/-200 blocks/tick so the squares cannot overflow.
scoreboard players operation #vx agtg.tmp < #max agtg.const
scoreboard players operation #vx agtg.tmp > #min agtg.const
scoreboard players operation #vy agtg.tmp < #max agtg.const
scoreboard players operation #vy agtg.tmp > #min agtg.const
scoreboard players operation #vz agtg.tmp < #max agtg.const
scoreboard players operation #vz agtg.tmp > #min agtg.const

scoreboard players operation #vx agtg.tmp *= #vx agtg.tmp
scoreboard players operation #vy agtg.tmp *= #vy agtg.tmp
scoreboard players operation #vz agtg.tmp *= #vz agtg.tmp

scoreboard players operation #speed_sq agtg.tmp = #vx agtg.tmp
scoreboard players operation #speed_sq agtg.tmp += #vy agtg.tmp
scoreboard players operation #speed_sq agtg.tmp += #vz agtg.tmp
