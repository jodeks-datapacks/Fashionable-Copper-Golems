# Copy current pixel
data modify storage copper_golem_hats:image data.current.pixel_color set \
  from storage copper_golem_hats:image data.current.image_data[0]
data modify storage copper_golem_hats:image data.current.description_text set \
  from storage copper_golem_hats:image data.current.description[0]

scoreboard players add $index.image_data copper_golem_hats.image 1

# Calculate column
scoreboard players operation $index.column copper_golem_hats.image = $index.image_data copper_golem_hats.image
scoreboard players operation $index.column copper_golem_hats.image %= $width copper_golem_hats.image

# Calculate row
scoreboard players operation $index.row copper_golem_hats.image = $index.image_data copper_golem_hats.image
scoreboard players operation $index.row copper_golem_hats.image /= $width copper_golem_hats.image

# Append start spacing
execute if score $index.column copper_golem_hats.image matches 1 run \
  function copper_golem_hats:image/process/append/blank

# Append colored pixel
execute unless data storage copper_golem_hats:image data.current{pixel_color: ''} run \
  function copper_golem_hats:image/process/append/pixel
# Append background pixel
execute if data storage copper_golem_hats:image data.current{pixel_color: ''} run \
  function copper_golem_hats:image/process/append/background

# Append description
execute if score $index.column copper_golem_hats.image matches 0 run \
    function copper_golem_hats:image/process/image_end/description

# Remove first element from the image_data array
data remove storage copper_golem_hats:image data.current.image_data[0]
# Loop over rows
execute if score $index.row copper_golem_hats.image < $height copper_golem_hats.image run \
  function copper_golem_hats:image/process/loop_over_image_data
 