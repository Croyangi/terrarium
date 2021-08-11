############################################################
# Description: Raycasts where Voidllagers looking
############################################################

scoreboard players add @s[scores={tr.dummy=..319}] tr.dummy 1
execute if entity @s[scores={tr.dummy=..319}] if entity @a[distance=..2] run tag @s add tr.looking_at_player
execute if entity @s[scores={tr.dummy=..319},tag=!tr.looking_at_player] if block ^ ^ ^0.05 #tr:all_air positioned ^ ^ ^0.05 run function tr:entity/voidllager/raycast