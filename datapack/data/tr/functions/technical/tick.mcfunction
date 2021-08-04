############################################################
# Description: Controls all of the tick functions
############################################################

# Player Tick
execute as @a at @s run function tr:entity/player/tick

# Entity Tick
execute as @e[tag=tr.entity] at @s run function tr:entity/tick