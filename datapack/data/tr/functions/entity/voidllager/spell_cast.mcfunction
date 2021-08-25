############################################################
# Description: Makes animations and such for a spell-casting cycle
############################################################

scoreboard players add @s tr.dummy2 0
execute if entity @s[scores={tr.dummy2=0..2}] run function tr:entity/voidllager/line_of_sight/start
scoreboard players add @s[scores={tr.dummy2=0..}] tr.dummy2 1
tag @s add tr.trader_entity.still
attribute @s minecraft:generic.movement_speed modifier add 0-2-0-3-3 "slowness" -100 add
execute rotated ~ 0 run particle minecraft:reverse_portal ^-0.65 ^.65 ^ 0.1 0.1 0.1 .05 10 normal
execute rotated ~ 0 run particle minecraft:reverse_portal ^0.65 ^.65 ^ 0.1 0.1 0.1 .05 10 normal

execute if entity @s[tag=tr.has_line_of_sight] run data modify entity @s HandItems[0].tag.CustomModelData set value 218003
execute if entity @s[tag=tr.has_line_of_sight,tag=tr.voidllager.purple] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218004
execute if entity @s[tag=tr.has_line_of_sight,tag=tr.voidllager.red] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218006
execute if entity @s[tag=tr.has_line_of_sight,tag=tr.voidllager.black] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218008
execute if entity @s[tag=tr.has_line_of_sight,tag=tr.voidllager.optic] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 218010

execute if entity @s[tag=!tr.has_line_of_sight] run function tr:entity/voidllager/spell_end
execute if entity @s[tag=tr.has_line_of_sight] facing entity @e[type=player,gamemode=!creative,gamemode=!spectator,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={tr.dummy2=3}] run function tr:entity/voidllager/spell_end