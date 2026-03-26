data modify entity @e[type=copper_golem,limit=1,tag=has_interaction.copper_golem_hats] equipment.head set from entity @s SelectedItem

tag @e[type=copper_golem,limit=1,tag=has_interaction.copper_golem_hats] add has_equipment.copper_golem_hats

$item modify entity @s container.$(player_selected_item_slot) copper_golem_hats:remove_item

playsound entity.copper_golem.hurt neutral