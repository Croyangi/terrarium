############################################################
# Description: Runs off of player
############################################################

# Right-click detect
execute if entity @s[scores={tr.coas=1..}] run function tr:entity/player/right_click

# Totem of Undying activation
effect give @s[predicate=tr:holding/totem_of_undying,predicate=tr:in_void] instant_health 1 100 true