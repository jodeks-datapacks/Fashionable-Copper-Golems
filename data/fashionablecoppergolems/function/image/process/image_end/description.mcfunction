# Append blank
function fashionablecoppergolems:image/process/append/blank

data modify storage fashionablecoppergolems:image tellraw append \
  from storage fashionablecoppergolems:image current.description_text

# Append blank
function fashionablecoppergolems:image/process/append/blank

# Append line_break
execute unless score $index.image_data fashionablecoppergolems.image = $length fashionablecoppergolems.image \
  run function fashionablecoppergolems:image/process/append/line_break

# Remove first element from the description
data remove storage fashionablecoppergolems:image current.description[0]
 