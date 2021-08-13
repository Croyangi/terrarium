############################################################
# Description: Voidllager bartering
############################################################

tag @s add tr.voidllager.bartering

scoreboard players add @s tr.dummy2 0
execute as @s[scores={tr.dummy2=0}] run playsound tr:mob.voidllager.barter master @a[distance=..16]
scoreboard players add @s[scores={tr.dummy2=0..}] tr.dummy2 1

attribute @s minecraft:generic.movement_speed modifier add 0-2-0-3-3 "slowness" -100 add
data modify entity @s HandItems[0].tag.CustomModelData set value 218001

tp @s ~ ~ ~ ~ 40
execute if entity @s[tag=tr.voidllager.failed_barter] run function tr:entity/voidllager/bartering/end_barter
execute if entity @s[scores={tr.dummy2=5..}] run function tr:entity/voidllager/bartering/end_barter
tag @s remove tr.voidllager.failed_barter