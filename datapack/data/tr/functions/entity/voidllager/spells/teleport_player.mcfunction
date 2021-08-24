############################################################
# Description: Voidllager teleports player
############################################################

spreadplayers ~ ~ 5 7 false @s
spreadplayers ~ ~ 0 1 false @e[type=endermite,distance=..30]
particle minecraft:reverse_portal ~ ~ ~ 0 0 0 1 20 normal
playsound tr:mob.voidllager.teleport master @a[distance=..16]
effect give @s nausea 14 0 false
effect give @s slowness 14 1 false

tag @s add tr.damage.voidllager_teleport
execute store result score tr.temp_0 tr.dummy run difficulty
scoreboard players set tr.damage tr.dummy 20
execute if entity @e[type=wandering_trader,tag=tr.voidllager,tag=tr.tag] run scoreboard players set tr.damage tr.dummy 40
tag @e remove tr.tag
scoreboard players operation tr.damage tr.dummy *= tr.temp_0 tr.dummy
scoreboard players set tr.ignore_armor tr.dummy 1
function tr:entity/player/damage/calculate