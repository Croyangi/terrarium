############################################################
# Description: Voidllager end barter
############################################################

execute at @s[tag=!tr.voidllager.failed_barter] run playsound tr:mob.voidllager.drop_item master @a[distance=..16]
tag @s[tag=!tr.voidllager.failed_barter] add tr.voidllager.end_barter
execute if entity @s[tag=!tr.voidllager.failed_barter] run loot spawn ~ ~1 ~ loot tr:entities/voidllager/barters
execute if entity @s[tag=!tr.voidllager.failed_barter] run schedule function tr:entity/voidllager/bartering/motion_schedule 2t

scoreboard players reset @s tr.dummy2
tag @s remove tr.voidllager.bartering
tag @s remove tr.voidllager.failed_barter

attribute @s minecraft:generic.movement_speed modifier remove 0-2-0-3-3

execute if entity @s[tag=tr.voidllager.purple] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218000
execute if entity @s[tag=tr.voidllager.red] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218005
execute if entity @s[tag=tr.voidllager.black] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218007
execute if entity @s[tag=tr.voidllager.optic] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218009