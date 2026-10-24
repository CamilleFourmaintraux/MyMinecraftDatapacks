# Runs as and at each projectile that has not landed yet.

# A projectile stuck in a block is ignored from now on (saves an NBT read every tick).
execute if entity @s[nbt={inGround:1b}] run return run tag @s add agtg.landed

# Read the motion once from the entity, then work from storage (cheaper than repeated entity reads).
data modify storage arrows_go_through_glass:tmp motion set from entity @s Motion
function arrows_go_through_glass:projectile/read_speed
execute if score #speed_sq agtg.tmp < #min_speed_sq agtg.tmp run return 0

# Fast enough: scan the path it will travel this tick, starting from its current position.
# #dist starts at -30 so the scan reaches 0.3 blocks past the end of the movement (safety margin).
scoreboard players set #dist agtg.tmp -30
scoreboard players set #steps agtg.tmp 0
data modify storage arrows_go_through_glass:tmp aim.x set from storage arrows_go_through_glass:tmp motion[0]
data modify storage arrows_go_through_glass:tmp aim.y set from storage arrows_go_through_glass:tmp motion[1]
data modify storage arrows_go_through_glass:tmp aim.z set from storage arrows_go_through_glass:tmp motion[2]
function arrows_go_through_glass:projectile/aim with storage arrows_go_through_glass:tmp aim
