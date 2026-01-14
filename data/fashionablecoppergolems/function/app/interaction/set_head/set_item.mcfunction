data modify entity @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] equipment.head set from entity @s SelectedItem

tag @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] add has_equipment.fashionablecoppergolems

$item modify entity @s container.$(player_selected_item_slot) fashionablecoppergolems:remove_item

playsound entity.copper_golem.hurt neutral