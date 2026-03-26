scoreboard players set @s copper_golem_hats.raycast_hit 0
scoreboard players set @s copper_golem_hats.raycast_distance 0

tag @s add copper_golem_hats.riding_ray
function copper_golem_hats:app/raycast/ray
tag @s remove copper_golem_hats.riding_ray

scoreboard players set @s copper_golem_hats.raycast_start 1