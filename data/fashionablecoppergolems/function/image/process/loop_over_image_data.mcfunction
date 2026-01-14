# Copy current pixel
data modify storage fashionablecoppergolems:image current.pixel_color set \
  from storage fashionablecoppergolems:image current.image_data[0]
data modify storage fashionablecoppergolems:image current.description_text set \
  from storage fashionablecoppergolems:image current.description[0]

scoreboard players add $index.image_data fashionablecoppergolems.image 1

# Calculate column
scoreboard players operation $index.column fashionablecoppergolems.image = $index.image_data fashionablecoppergolems.image
scoreboard players operation $index.column fashionablecoppergolems.image %= $width fashionablecoppergolems.image

# Calculate row
scoreboard players operation $index.row fashionablecoppergolems.image = $index.image_data fashionablecoppergolems.image
scoreboard players operation $index.row fashionablecoppergolems.image /= $width fashionablecoppergolems.image

# Append start spacing
execute if score $index.column fashionablecoppergolems.image matches 1 run \
  function fashionablecoppergolems:image/process/append/blank

# Append colored pixel
execute unless data storage fashionablecoppergolems:image current{pixel_color: ''} run \
  function fashionablecoppergolems:image/process/append/pixel
# Append background pixel
execute if data storage fashionablecoppergolems:image current{pixel_color: ''} run \
  function fashionablecoppergolems:image/process/append/background

# Append description
execute if score $index.column fashionablecoppergolems.image matches 0 run \
    function fashionablecoppergolems:image/process/image_end/description

# Remove first element from the image_data array
data remove storage fashionablecoppergolems:image current.image_data[0]
# Loop over rows
execute if score $index.row fashionablecoppergolems.image < $height fashionablecoppergolems.image run \
  function fashionablecoppergolems:image/process/loop_over_image_data
 