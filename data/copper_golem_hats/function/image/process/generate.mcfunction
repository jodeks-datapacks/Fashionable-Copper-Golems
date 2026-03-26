#> copper_golem_hats:image/process/generate
#
# This function generates the image data.

data modify storage copper_golem_hats:image data.current.image_data set from storage copper_golem_hats:image data.image_data
data modify storage copper_golem_hats:image data.current.description set from storage copper_golem_hats:image data.description
data modify storage copper_golem_hats:image data.current.pixel_character set from storage copper_golem_hats:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data copper_golem_hats.image 0
# Set width
execute store result score $width copper_golem_hats.image run data get storage copper_golem_hats:image data.width
# Set height
execute store result score $height copper_golem_hats.image run data get storage copper_golem_hats:image data.height
# Set length
scoreboard players operation $length copper_golem_hats.image = $width copper_golem_hats.image
scoreboard players operation $length copper_golem_hats.image *= $height copper_golem_hats.image
# Clear remaining entries in tellraw
data remove storage copper_golem_hats:image data.tellraw

# Add spacing on top
function copper_golem_hats:image/process/append/line_break
# Loop over image data
function copper_golem_hats:image/process/loop_over_image_data
# Add spacing on bottom
function copper_golem_hats:image/process/append/line_break