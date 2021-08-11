############################################################
# Description: Ends spell casting
############################################################

scoreboard players reset @s tr.dummy2
tag @s remove tr.trader_entity.still
tag @s remove tr.voidllager.casting

playsound tr:mob.voidllager.cast master @a[distance=..16]
attribute @s minecraft:generic.movement_speed modifier remove 0-2-0-3-3
data modify entity @s HandItems[0].tag.CustomModelData set value 218001
execute if entity @s[tag=tr.looking_at_player] run function tr:entity/voidllager/casting/cast_completed