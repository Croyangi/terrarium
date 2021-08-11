############################################################
# Description: Detects if the Voidllager is looking at a player
############################################################

tag @s remove tr.looking_at_player
scoreboard players set @s tr.dummy 0
execute anchored eyes facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..16,limit=1] eyes run function tr:entity/voidllager/raycast
scoreboard players reset @s tr.dummy

execute if entity @s[tag=tr.looking_at_player] run tag @s add tr.voidllager.casting
execute if entity @s[tag=tr.looking_at_player] facing entity @p[gamemode=!creative,gamemode=!spectator,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=tr.looking_at_player] unless entity @s[scores={tr.dummy2=0..3}] run playsound tr:mob.voidllager.cast master @a[distance=..16]