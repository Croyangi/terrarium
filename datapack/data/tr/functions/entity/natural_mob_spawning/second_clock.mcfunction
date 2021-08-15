############################################################
# Description: Natural mob spawning
############################################################

execute as @s[type=enderman,predicate=tr:chance/three_hundredth,predicate=tr:voidllager_spawn,predicate=tr:dimension/the_end,tag=!tr.mob_spawn.check,tag=!global.ignore] run function tr:entity/voidllager/spawn

tag @s add tr.mob_spawn.check