############################################################
# Description: Raycast to detect which Voidllager
############################################################

scoreboard players add @s[scores={tr.dummy=..119}] tr.dummy 1
execute if entity @s[scores={tr.dummy=..119}] run tag @e[type=wandering_trader,tag=tr.voidllager,distance=..2,sort=nearest,limit=1] add tr.voidllager.barter
execute if entity @s[scores={tr.dummy=..119}] unless entity @e[tag=tr.voidllager.barter] if block ^ ^ ^0.05 #tr:all_air positioned ^ ^ ^0.05 run function tr:entity/voidllager/bartering/raycast