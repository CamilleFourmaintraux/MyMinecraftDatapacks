# Recursive scan along the projectile's path, one sample every 0.2 blocks.
# Runs as the projectile, positioned at the sample point, rotated along its motion.

# Breakable block on the path: shatter it and slow the projectile down.
execute if block ~ ~ ~ #arrows_go_through_glass:breakable run function arrows_go_through_glass:projectile/break

# Too slow to break anything else this tick (also limits it to one pane at normal speeds).
execute if score #speed_sq agtg.tmp < #min_speed_sq agtg.tmp run return 0

# Any other solid block stops the scan: the projectile will hit it before what lies behind.
# The first sample (the projectile's own position) is never treated as an obstacle.
execute if score #steps agtg.tmp matches 1.. unless block ~ ~ ~ #arrows_go_through_glass:passable unless block ~ ~ ~ #arrows_go_through_glass:breakable run return 0

scoreboard players add #dist agtg.tmp 20
scoreboard players add #steps agtg.tmp 1

# Hard limit for extreme speeds (500 samples = 100 blocks).
execute if score #steps agtg.tmp matches 500.. run return 0

# Continue while the next sample stays within the distance travelled this tick (+0.3 margin).
execute if score #dist agtg.tmp matches ..0 positioned ^ ^ ^0.2 run return run function arrows_go_through_glass:projectile/step
scoreboard players operation #dist_sq agtg.tmp = #dist agtg.tmp
scoreboard players operation #dist_sq agtg.tmp *= #dist agtg.tmp
execute if score #dist_sq agtg.tmp <= #speed_sq agtg.tmp positioned ^ ^ ^0.2 run function arrows_go_through_glass:projectile/step
