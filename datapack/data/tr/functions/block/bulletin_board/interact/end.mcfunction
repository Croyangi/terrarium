############################################################
# Description: Interacting with the Bulletin Board
############################################################

scoreboard players set #tr.temp tr.dummy 1
execute store result score #tr.temp2 tr.dummy run data get entity @s ArmorItems[3].tag.tr.storage.Jobs
execute unless score #tr.temp2 tr.dummy matches ..0 at @a[tag=tr.temp] run function tr:block/bulletin_board/jobs/summon
execute unless score #tr.temp2 tr.dummy matches ..0 run execute store result entity @s ArmorItems[3].tag.tr.storage.Jobs int 1 run scoreboard players operation #tr.temp2 tr.dummy -= #tr.temp tr.dummy
execute unless score #tr.temp2 tr.dummy matches ..0 run advancement grant @a[tag=tr.temp] only tr:minecraft/adventure/use_bulletin_board
tag @e remove tr.temp