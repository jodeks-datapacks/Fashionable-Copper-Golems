# Append blank
function copper_golem_hats:image/process/append/blank

data modify storage copper_golem_hats:image data.tellraw append \
  from storage copper_golem_hats:image data.current.description_text

# Append blank
function copper_golem_hats:image/process/append/blank

# Append line_break
execute unless score $index.image_data copper_golem_hats.image = $length copper_golem_hats.image \
  run function copper_golem_hats:image/process/append/line_break

# Remove first element from the description
data remove storage copper_golem_hats:image data.current.description[0]
 