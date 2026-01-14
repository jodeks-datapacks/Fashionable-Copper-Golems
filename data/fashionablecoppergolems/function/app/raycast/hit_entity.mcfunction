scoreboard players set &hit riding_cast_temp_copper_golem 1

tag @s add has_interaction.fashionablecoppergolems

execute at @s run summon interaction ~ ~ ~ {width:0.6f,height:1.5f,response:1b,data:{Marker_Copper_Golem:1b}}

scoreboard players set &check riding_cast_temp_copper_golem 1