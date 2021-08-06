############################################################
# Description: Runs every second
############################################################

# Natural Mob Spawning
execute if entity @e[type=#tr:natural_mob_spawning] as @e[type=#tr:natural_mob_spawning] at @s run function tr:entity/natural_mob_spawning/tick

schedule function tr:technical/second_clock 1s replace