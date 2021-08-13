############################################################
# Description: Motion item randomly
############################################################

execute as @e[type=item] at @s if entity @e[type=wandering_trader,tag=tr.voidllager,tag=tr.voidllager.end_barter,distance=..1] run tag @s add tr.voidllager.item_motion

execute store result score #tr.temp tr.dummy run loot spawn ~ ~ ~ loot tr:technical/roll/1_4

execute if score #tr.temp tr.dummy matches 1 as @e[type=item,tag=tr.voidllager.item_motion] run data merge entity @s {Motion:[0.0,1.0,1.0]}
execute if score #tr.temp tr.dummy matches 2 as @e[type=item,tag=tr.voidllager.item_motion] run data merge entity @s {Motion:[1.0,1.0,0.0]}
execute if score #tr.temp tr.dummy matches 3 as @e[type=item,tag=tr.voidllager.item_motion] run data merge entity @s {Motion:[0.0,1.0,-1.0]}
execute if score #tr.temp tr.dummy matches 4 as @e[type=item,tag=tr.voidllager.item_motion] run data merge entity @s {Motion:[-1.0,1.0,0.0]}

tag @e remove tr.voidllager.end_barter
tag @e remove tr.voidllager.item_motion