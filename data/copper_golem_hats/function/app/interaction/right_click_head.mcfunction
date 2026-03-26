advancement revoke @a only copper_golem_hats:copper_golem_interaction_head

execute unless data entity @e[type=copper_golem,limit=1,tag=has_interaction.copper_golem_hats] equipment.head run \
  function copper_golem_hats:app/interaction/set_head/get_slot