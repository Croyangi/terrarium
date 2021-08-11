############################################################
# Description: Voidllager teleports player
############################################################

spreadplayers ~ ~ 1 7 false @s
spreadplayers ~ ~ 1 2 false @e[type=endermite,distance=..20]
particle minecraft:reverse_portal ~ ~ ~ 0 0 0 1 20 normal
playsound tr:mob.voidllager.teleport master @a[distance=..16]
effect give @s nausea 6 0 false
effect give @s slowness 6 2 false

tag @s add tr.damage.voidllager_teleport
execute store result score tr.temp_0 tr.dummy run difficulty
scoreboard players set tr.damage tr.dummy 20
scoreboard players operation tr.damage tr.dummy *= tr.temp_0 tr.dummy
scoreboard players set tr.ignore_armor tr.dummy 1
function tr:entity/player/damage/calculate