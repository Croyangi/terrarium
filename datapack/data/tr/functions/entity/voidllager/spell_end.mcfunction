############################################################
# Description: Makes animations and such for a spell-casting cycle
############################################################

scoreboard players reset @s tr.dummy2
tag @s remove tr.trader_entity.still
tag @s remove tr.voidllager.casting
attribute @s minecraft:generic.movement_speed modifier remove 0-2-0-3-3

data modify entity @s HandItems[0].tag.CustomModelData set value 218001
execute if entity @s[tag=tr.has_line_of_sight,tag=tr.voidllager.purple] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218000
execute if entity @s[tag=tr.has_line_of_sight,tag=tr.voidllager.red] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218005
execute if entity @s[tag=tr.has_line_of_sight,tag=tr.voidllager.black] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218007
execute if entity @s[tag=tr.has_line_of_sight,tag=tr.voidllager.optic] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218009

execute if entity @s[tag=tr.has_line_of_sight] run function tr:entity/voidllager/spell_completed