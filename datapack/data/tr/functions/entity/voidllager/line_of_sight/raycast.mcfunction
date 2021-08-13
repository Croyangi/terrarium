############################################################
# Description: Finds the block you are looking at
############################################################

scoreboard players add @s[scores={tr.dummy=..319}] tr.dummy 1
execute if entity @s[scores={tr.dummy=..319}] if entity @a[distance=..2] run tag @s add tr.has_line_of_sight
execute if entity @s[scores={tr.dummy=..319},tag=!tr.has_line_of_sight] if block ^ ^ ^0.05 #tr:all_air positioned ^ ^ ^0.05 run function tr:entity/voidllager/line_of_sight/raycast