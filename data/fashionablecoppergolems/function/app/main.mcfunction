execute as @a[predicate=!fashionablecoppergolems:looking_at_copper_golem] run scoreboard players set &start riding_cast_temp_copper_golem 0

execute if score &start riding_cast_temp_copper_golem matches 0 as @a[predicate=fashionablecoppergolems:looking_at_copper_golem] as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function fashionablecoppergolems:app/raycast/start_ray

execute as @a[predicate=!fashionablecoppergolems:looking_at_copper_golem] if score &check riding_cast_temp_copper_golem matches 1 run function fashionablecoppergolems:app/raycast/kill_interaction