scoreboard players set &hit riding_cast_temp_copper_golem 0
scoreboard players set &distance riding_cast_temp_copper_golem 0

tag @s add riding_ray
function fashionablecoppergolems:app/raycast/ray
tag @s remove riding_ray

scoreboard players set &start riding_cast_temp_copper_golem 1