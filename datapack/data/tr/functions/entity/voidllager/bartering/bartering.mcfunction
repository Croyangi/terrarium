############################################################
# Description: Voidllager bartering
############################################################

tag @s add tr.voidllager.bartering

scoreboard players add @s tr.dummy2 0
execute if entity @s[scores={tr.dummy2=0}] run playsound tr:mob.voidllager.barter master @a[distance=..16]
scoreboard players add @s[scores={tr.dummy2=0..}] tr.dummy2 1

attribute @s minecraft:generic.movement_speed modifier add 0-2-0-3-3 "slowness" -100 add
particle minecraft:happy_villager ~ ~1.5 ~ .3 .3 .3 0 5

data modify entity @s HandItems[0].tag.CustomModelData set value 218001
execute if entity @s[tag=tr.voidllager.purple] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218011
execute if entity @s[tag=tr.voidllager.red] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218012
execute if entity @s[tag=tr.voidllager.black] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218013
execute if entity @s[tag=tr.voidllager.optic] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218014

execute if entity @s[tag=tr.voidllager.failed_barter] run function tr:entity/voidllager/bartering/end_barter
execute if entity @s[scores={tr.dummy2=5..}] run function tr:entity/voidllager/bartering/end_barter
tag @s remove tr.voidllager.failed_barter