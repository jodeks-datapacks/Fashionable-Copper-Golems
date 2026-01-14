advancement revoke @a only fashionablecoppergolems:copper_golem_interaction_head

execute unless data entity @e[type=copper_golem,limit=1,tag=has_interaction.fashionablecoppergolems] equipment.head run \
  function fashionablecoppergolems:app/interaction/set_head/get_slot