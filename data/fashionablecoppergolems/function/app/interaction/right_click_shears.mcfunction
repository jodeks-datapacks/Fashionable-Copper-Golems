advancement revoke @a only fashionablecoppergolems:copper_golem_interaction_shear

execute if data entity @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] equipment.saddle run \
  execute unless data entity @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] equipment.head run \
    function fashionablecoppergolems:app/interaction/remove_saddle/get_item_data

execute if data entity @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] equipment.head run \ 
  function fashionablecoppergolems:app/interaction/remove_head/get_item_data