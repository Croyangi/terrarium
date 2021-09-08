############################################################
# Description: Applies effects
############################################################

execute as @a[tag=tr.temp] at @s run effect give @s[predicate=tr:in_void] levitation 2 80
execute as @a[tag=tr.temp] at @s run effect give @s[predicate=tr:in_void] slow_falling 60 0
tag @a remove tr.temp