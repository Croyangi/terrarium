############################################################
# Description: Starts a line of sight raycast
############################################################


tag @s remove tr.has_line_of_sight
scoreboard players set @s tr.dummy 0
execute anchored eyes facing entity @e[gamemode=!creative,gamemode=!spectator,distance=..16,type=player,limit=1,sort=nearest,predicate=!tr:has_true_invisibility] eyes run function tr:entity/voidllager/line_of_sight/raycast
scoreboard players reset @s tr.dummy
execute if entity @e[gamemode=!creative,gamemode=!spectator,distance=..4,type=player] run tag @s add tr.has_line_of_sight
execute if entity @s[tag=tr.has_line_of_sight] run tag @s add tr.voidllager.casting
execute if entity @s[tag=tr.has_line_of_sight] unless entity @s[scores={tr.dummy2=0..3}] run playsound tr:mob.voidllager.cast master @a[distance=..16]