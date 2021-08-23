############################################################
# Description: Remove one item
############################################################

execute at @e[tag=tr.voidllager.barter] run playsound tr:mob.voidllager.agrees master @a[distance=..16]
item modify entity @s[gamemode=!creative,gamemode=!spectator] weapon.mainhand tr:remove_one_item

scoreboard players set #tr.temp tr.dummy 1
execute store result score #tr.temp2 tr.dummy run data get entity @e[tag=tr.voidllager.barter,limit=1] ArmorItems[3].tag.tr.storage.Mood
execute as @e[tag=tr.voidllager.barter] store result entity @s ArmorItems[3].tag.tr.storage.Mood int 1 run scoreboard players operation #tr.temp2 tr.dummy += #tr.temp tr.dummy
execute store result score #tr.temp tr.dummy run data get entity @e[tag=tr.voidllager.barter,limit=1] ArmorItems[3].tag.tr.storage.Mood
execute if score #tr.temp tr.dummy matches 3.. run tag @e[tag=tr.voidllager.barter] add tr.voidllager.bartering
execute if score #tr.temp tr.dummy matches 3.. as @e[tag=tr.voidllager.barter] run playsound tr:mob.voidllager.agrees master @a[distance=..16]
execute if score #tr.temp tr.dummy matches 3.. run data modify entity @e[tag=tr.voidllager.barter,limit=1] ArmorItems[3].tag.tr.storage.Mood set value 0

execute if score #tr.temp tr.dummy matches 3.. run advancement grant @s only tr:minecraft/end/barter_with_voidllager