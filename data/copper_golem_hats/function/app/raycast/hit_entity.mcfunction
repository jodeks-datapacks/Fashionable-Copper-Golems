scoreboard players set @a[tag=copper_golem_hats.riding_ray] copper_golem_hats.raycast_hit 1

tag @s add has_interaction.copper_golem_hats

execute at @s run summon interaction ~ ~1 ~ {width:0.6f,height:-1f,response:1b,data:{Marker_Copper_Golem:1b},Tags:["interaction.copper_golem_hats"],}

ride @e[type=interaction,tag=interaction.copper_golem_hats,limit=1] mount @s

tag @e[type=interaction,tag=interaction.copper_golem_hats] remove interaction.copper_golem_hats

scoreboard players set @a[tag=copper_golem_hats.riding_ray] copper_golem_hats.raycast_check 1