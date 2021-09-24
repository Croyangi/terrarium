############################################################
# Description: Runs every second
############################################################

# Mob Spawning Second Clock
execute unless data storage tr:storage {root:{gamerules:{doCustomMobSpawning:0b}}} as @e[type=#tr:natural_mob_spawning,tag=!tr.mob_spawn.check,tag=!global.ignore] at @s run function tr:entity/natural_mob_spawning/second_clock

# Entity Second Clock
execute as @e[tag=tr.entity] at @s run function tr:entity/second_clock

# Difficulty
execute store result score #tr.difficulty tr.dummy run difficulty

schedule function tr:technical/second_clock 1s replace