data modify storage fashionablecoppergolems:root copper_golem_item_components set value {}

data modify storage fashionablecoppergolems:root copper_golem_item_id set from entity @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] equipment.saddle.id

execute if data entity @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] equipment.saddle.components run \
 data modify storage fashionablecoppergolems:root copper_golem_item_components set from entity @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] equipment.saddle.components

function fashionablecoppergolems:app/interaction/remove_saddle/remove_item with storage fashionablecoppergolems:root