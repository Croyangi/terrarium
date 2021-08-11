############################################################
# Description: Voidllagers casting
############################################################

tag @s add tr.trader_entity.still
tag @s add tr.voidllager.casting

scoreboard players add @s tr.dummy2 0
execute if entity @s[scores={tr.dummy2=0..2}] run function tr:entity/voidllager/looking_at_player
scoreboard players add @s[scores={tr.dummy2=0..}] tr.dummy2 1

attribute @s minecraft:generic.movement_speed modifier add 0-2-0-3-3 "slowness" -100 add
execute rotated ~ 0 run particle minecraft:reverse_portal ^-0.65 ^.65 ^ 0 0 0 .1 10 normal
execute rotated ~ 0 run particle minecraft:reverse_portal ^0.65 ^.65 ^ 0 0 0 .1 10 normal

execute if entity @s[tag=!tr.looking_at_player] run function tr:entity/voidllager/casting/end_cast
execute if entity @s[tag=tr.looking_at_player] run data modify entity @s HandItems[0].tag.CustomModelData set value 218003
execute if entity @s[tag=tr.looking_at_player] facing entity @p[gamemode=!creative,gamemode=!spectator,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={tr.dummy2=3..}] run function tr:entity/voidllager/casting/end_cast