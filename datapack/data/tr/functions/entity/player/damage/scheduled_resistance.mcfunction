############################################################
# Description: Removes resistance
# Made by and credits to: CreeperMagnet_
############################################################

execute as @a[tag=tr.scheduled.resistance] run function tr:entity/player/damage/remove_resistance
tag @a remove tr.scheduled.resistance
