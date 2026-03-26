advancement revoke @a only copper_golem_hats:copper_golem_interaction_shear

execute if data entity @e[type=copper_golem,limit=1,tag=has_interaction.copper_golem_hats] equipment.saddle run \
  execute unless data entity @e[type=copper_golem,limit=1,tag=has_interaction.copper_golem_hats] equipment.head run \
    function copper_golem_hats:app/interaction/remove_saddle/get_item_data

execute if data entity @e[type=copper_golem,limit=1,tag=has_interaction.copper_golem_hats] equipment.head run \ 
  function copper_golem_hats:app/interaction/remove_head/get_item_data