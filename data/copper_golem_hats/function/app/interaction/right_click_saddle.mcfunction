advancement revoke @a only copper_golem_hats:copper_golem_interaction_saddle

execute if data entity @e[type=copper_golem,limit=1,tag=has_interaction.copper_golem_hats] equipment.head unless data entity @e[type=copper_golem,limit=1,tag=has_interaction.copper_golem_hats] equipment.saddle run \
  function copper_golem_hats:app/interaction/set_saddle/get_slot