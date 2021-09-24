############################################################
# Description: Natural mob spawning
############################################################

execute if entity @s[predicate=tr:voidllager_spawn] run function tr:entity/voidllager/spawn

tag @s add tr.mob_spawn.check