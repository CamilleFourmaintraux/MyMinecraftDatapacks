# Macro: turns the scan towards the point the projectile will reach next tick (position + motion).
# The motion vector is used instead of the arrow's rotation, because arrow rotations are mirrored
# compared to mobs and would point the scan the wrong way.
$execute facing ~$(x) ~$(y) ~$(z) run function arrows_go_through_glass:projectile/step
