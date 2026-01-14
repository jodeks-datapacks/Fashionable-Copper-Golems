#> fashionablecoppergolems:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage fashionablecoppergolems:image image_data  
# @writes storage fashionablecoppergolems:image width  
# @writes storage fashionablecoppergolems:image height  
# @writes storage fashionablecoppergolems:image background_color  
# @writes storage fashionablecoppergolems:image description  
# @writes storage fashionablecoppergolems:image pixel_character.blank  
# @writes storage fashionablecoppergolems:image pixel_character.chat  
# @writes storage fashionablecoppergolems:image pixel_character.lore

data remove storage fashionablecoppergolems:image image_data
data remove storage fashionablecoppergolems:image width
data remove storage fashionablecoppergolems:image height
data remove storage fashionablecoppergolems:image background_color
data remove storage fashionablecoppergolems:image description

$data modify storage fashionablecoppergolems:image image_data set value $(image_data)
$data modify storage fashionablecoppergolems:image width set value $(width)
$data modify storage fashionablecoppergolems:image height set value $(height)
$data modify storage fashionablecoppergolems:image background_color set value "$(background_color)"
$data modify storage fashionablecoppergolems:image description set value $(description)

data modify storage fashionablecoppergolems:image pixel_character.blank set value "　"
data modify storage fashionablecoppergolems:image pixel_character.pixel set value "▌▌"
data modify storage fashionablecoppergolems:image pixel_character.line_break set value '\n'

function fashionablecoppergolems:image/process/generate
