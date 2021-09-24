############################################################
# Description: Refresh jobs
############################################################

scoreboard players set #tr.temp tr.dummy 0
execute if predicate tr:in_village run execute as @e[type=villager,distance=..30,limit=3] run scoreboard players add #tr.temp tr.dummy 1
execute if predicate tr:in_village run execute store result score #tr.temp2 tr.dummy run data get entity @s ArmorItems[3].tag.tr.storage.Jobs
execute if predicate tr:in_village run execute store result entity @s ArmorItems[3].tag.tr.storage.Jobs int 1 run scoreboard players operation #tr.temp2 tr.dummy += #tr.temp tr.dummy
execute unless score #tr.temp2 tr.dummy matches ..3 run data modify entity @s ArmorItems[3].tag.tr.storage.Jobs set value 3