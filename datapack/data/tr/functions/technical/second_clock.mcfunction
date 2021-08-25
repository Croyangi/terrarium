############################################################
# Description: Runs every second
############################################################

# Mob Spawning Second Clock
execute if data storage tr:storage {root:{gamerules:{doCustomMobSpawning:1b}}} if entity @e[type=#tr:natural_mob_spawning] as @e[type=#tr:natural_mob_spawning] at @s run function tr:entity/natural_mob_spawning/second_clock

# Entity Second Clock
execute as @e[tag=tr.entity] at @s run function tr:entity/second_clock

schedule function tr:technical/second_clock 1s replace