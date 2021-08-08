############################################################
# Description: Natural mob spawning
############################################################

execute as @s[type=enderman,predicate=tr:chance/one_hundredth,predicate=tr:dimension/the_end,tag=!tr.mob_spawn.check,tag=!tr.entity] run function tr:entity/voidllager/spawn

tag @s add tr.mob_spawn.check