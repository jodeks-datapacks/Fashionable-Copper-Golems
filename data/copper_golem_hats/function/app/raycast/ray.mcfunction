execute if score @s copper_golem_hats.raycast_hit matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=copper_golem,tag=!riding_ray,tag=!has_interaction.copper_golem_hats,dx=0,sort=nearest] run function copper_golem_hats:app/raycast/check_hit_entity
execute unless block ~ ~ ~ minecraft:air run function copper_golem_hats:app/raycast/hit_block
scoreboard players add @s copper_golem_hats.raycast_distance 1
execute if score @s copper_golem_hats.raycast_hit matches 0 if score @s copper_golem_hats.raycast_distance matches ..100 positioned ^ ^ ^0.1 run function copper_golem_hats:app/raycast/ray