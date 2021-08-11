############################################################
# Description: Calculates resistance into the damage formula
# Made by and credits to: CreeperMagnet_
############################################################

# Get the amplifier
execute store result score tr.temp_0 tr.dummy run data get entity @s ActiveEffects[{Id:11b}].Amplifier
scoreboard players add tr.temp_0 tr.dummy 1


# Subtract the amplifier from 5 to get the proper fraction (for example, 4 -> 1, or 1/5 damage amount)
scoreboard players set tr.temp_1 tr.dummy 5
scoreboard players operation tr.temp_1 tr.dummy -= tr.temp_0 tr.dummy

scoreboard players operation tr.damage tr.dummy *= tr.temp_1 tr.dummy
scoreboard players operation tr.damage tr.dummy /= tr.const.5 tr.dummy
