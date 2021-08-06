############################################################
# Description: Natural mob spawning
############################################################

execute as @s[type=enderman,predicate=tr:chance/three_hundredths,predicate=tr:dimension/the_end,tag=!tr.mob_spawn.check,tag=!tr.entity] run function tr:entity/voidllager/summon

tag @s add tr.mob_spawn.check