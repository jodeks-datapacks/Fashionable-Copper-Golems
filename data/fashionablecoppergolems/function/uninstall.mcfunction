#> fashionablecoppergolems:uninstall
# Function to uninstall the datapack

data remove storage fashionablecoppergolems:image image_data
data remove storage fashionablecoppergolems:image width
data remove storage fashionablecoppergolems:image height
data remove storage fashionablecoppergolems:image background_color
data remove storage fashionablecoppergolems:image description
data remove storage fashionablecoppergolems:image tellraw

advancement revoke @a only jodek:fashionablecoppergolems
advancement revoke @a only jodek:utility
advancement revoke @a only jodek:root

scoreboard objectives remove fashionablecoppergolems.image

say Successfully uninstalled Fashionable Copper Golems!