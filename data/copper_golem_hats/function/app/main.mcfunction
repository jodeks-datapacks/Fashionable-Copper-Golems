execute as @a[predicate=!copper_golem_hats:looking_at_copper_golem] run scoreboard players set @s copper_golem_hats.raycast_start 0

execute as @a[predicate=copper_golem_hats:looking_at_copper_golem] if score @s copper_golem_hats.raycast_start matches 0 as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function copper_golem_hats:app/raycast/start_ray

execute as @a[predicate=!copper_golem_hats:looking_at_copper_golem] if score @s copper_golem_hats.raycast_check matches 1 run function copper_golem_hats:app/raycast/kill_interaction