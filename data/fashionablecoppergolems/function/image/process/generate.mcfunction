#> fashionablecoppergolems:image/process/generate
#
# This function generates the image data.

data modify storage fashionablecoppergolems:image current.image_data set from storage fashionablecoppergolems:image image_data
data modify storage fashionablecoppergolems:image current.description set from storage fashionablecoppergolems:image description
data modify storage fashionablecoppergolems:image current.pixel_character set from storage fashionablecoppergolems:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data fashionablecoppergolems.image 0
# Set width
execute store result score $width fashionablecoppergolems.image run data get storage fashionablecoppergolems:image width
# Set height
execute store result score $height fashionablecoppergolems.image run data get storage fashionablecoppergolems:image height
# Set length
scoreboard players operation $length fashionablecoppergolems.image = $width fashionablecoppergolems.image
scoreboard players operation $length fashionablecoppergolems.image *= $height fashionablecoppergolems.image
# Clear remaining entries in tellraw
data remove storage fashionablecoppergolems:image tellraw

# Add spacing on top
function fashionablecoppergolems:image/process/append/line_break
# Loop over image data
function fashionablecoppergolems:image/process/loop_over_image_data
# Add spacing on bottom
function fashionablecoppergolems:image/process/append/line_break