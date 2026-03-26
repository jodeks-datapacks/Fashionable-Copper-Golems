#> copper_golem_hats:uninstall
# Function to uninstall the datapack

data remove storage copper_golem_hats:image data
data remove storage copper_golem_hats:root data

scoreboard objectives remove copper_golem_hats.raycast_start
scoreboard objectives remove copper_golem_hats.raycast_hit
scoreboard objectives remove copper_golem_hats.raycast_distance
scoreboard objectives remove copper_golem_hats.raycast_check

scoreboard objectives remove copper_golem_hats.item_count

scoreboard objectives remove copper_golem_hats.image

say Successfully uninstalled Copper Golem Hats!