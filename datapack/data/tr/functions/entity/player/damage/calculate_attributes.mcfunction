############################################################
# Description: Calculates the damage a player has to have
# Made by and credits to: CreeperMagnet_
############################################################

execute store result score @s tr.dummy run attribute @s minecraft:generic.max_health get 10
execute store result score @s tr.dummy2 run data get entity @s Health 10
execute if score tr.damage tr.dummy >= @s tr.dummy2 run function tr:entity/player/damage/death
scoreboard players operation @s tr.dummy -= @s tr.dummy2
scoreboard players operation @s tr.dummy += tr.damage tr.dummy