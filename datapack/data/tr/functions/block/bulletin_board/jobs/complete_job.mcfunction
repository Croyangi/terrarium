############################################################
# Description: Interacting with the Bulletin Board
############################################################

summon experience_orb ~ ~ ~ {Value:0s,Tags:["tr.this"]}
data modify storage tr:storage root.temp.item set from entity @s SelectedItem.tag.Experience
data modify entity @e[type=experience_orb,limit=1,sort=nearest,tag=tr.this] Value set from storage tr:storage root.temp.item
item modify entity @s weapon.mainhand tr:remove_one_item
data remove storage tr:storage root.temp.item