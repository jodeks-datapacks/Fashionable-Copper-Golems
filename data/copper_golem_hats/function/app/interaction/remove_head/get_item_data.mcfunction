data modify storage copper_golem_hats:root data.copper_golem_item_components set value {}

data modify storage copper_golem_hats:root data.copper_golem_item_id set from entity @e[type=copper_golem,limit=1,tag=has_interaction.copper_golem_hats] equipment.head.id

execute if data entity @e[type=copper_golem,limit=1,tag=has_interaction.copper_golem_hats] equipment.head.components run \
 data modify storage copper_golem_hats:root data.copper_golem_item_components set from entity @e[type=copper_golem,limit=1,tag=has_interaction.copper_golem_hats] equipment.head.components

function copper_golem_hats:app/interaction/remove_head/remove_item with storage copper_golem_hats:root data