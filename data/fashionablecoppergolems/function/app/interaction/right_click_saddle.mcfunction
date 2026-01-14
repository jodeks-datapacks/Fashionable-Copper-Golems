advancement revoke @a only fashionablecoppergolems:copper_golem_interaction_saddle

execute if data entity @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] equipment.head unless data entity @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] equipment.saddle run \
  function fashionablecoppergolems:app/interaction/set_saddle/get_slot