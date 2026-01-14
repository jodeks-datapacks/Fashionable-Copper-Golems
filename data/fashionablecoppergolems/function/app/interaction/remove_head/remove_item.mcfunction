tag @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] remove has_equipment.fashionablecoppergolems

$execute if data entity @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] equipment.head.components run \
  execute at @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] run summon minecraft:item ~ ~1 ~-0.3 {Item:{id:"$(copper_golem_item_id)",count:1,components:$(copper_golem_item_components)}}

$execute unless data entity @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] equipment.head.components run \
  execute at @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] run summon minecraft:item ~ ~1 ~-0.3 {Item:{id:"$(copper_golem_item_id)",count:1}}

item replace entity @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] armor.head with air

playsound entity.copper_golem.shear neutral

data remove storage fashionablecoppergolems:root copper_golem_item_id

data remove storage fashionablecoppergolems:root copper_golem_item_components