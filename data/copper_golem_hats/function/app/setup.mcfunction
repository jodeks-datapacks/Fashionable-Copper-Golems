#> copper_golem_hats:app/setup
# Called on load

scoreboard objectives add jodek.config dummy
execute unless score &copper_golem_hats_load_message jodek.config = &copper_golem_hats_load_message jodek.config run scoreboard players set &copper_golem_hats_load_message jodek.config 1
execute unless score &copper_golem_hats_advancements jodek.config = &copper_golem_hats_advancements jodek.config run scoreboard players set &copper_golem_hats_advancements jodek.config 1

# Initiate all scoreboard objectives
scoreboard objectives add copper_golem_hats.image dummy

# Print the image
function copper_golem_hats:config/image

scoreboard objectives add copper_golem_hats.raycast_start dummy
scoreboard objectives add copper_golem_hats.raycast_hit dummy
scoreboard objectives add copper_golem_hats.raycast_distance dummy
scoreboard objectives add copper_golem_hats.raycast_check dummy

scoreboard objectives add copper_golem_hats.item_count dummy

advancement revoke @a only copper_golem_hats:copper_golem_interaction_shear
advancement revoke @a only copper_golem_hats:copper_golem_interaction_head
advancement revoke @a only copper_golem_hats:copper_golem_interaction_saddle