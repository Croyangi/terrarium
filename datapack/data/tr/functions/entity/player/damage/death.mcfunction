############################################################
# Description: Kills the player if their health is too low
# Made by and credits to: CreeperMagnet_
############################################################

tag @s add tr.dead
tag @s remove tr.tag
tag @s[predicate=tr:holding/totem_of_undying] add tr.tag
scoreboard players reset @s tr.dummy
execute store result score @s tr.dummy run gamerule showDeathMessages
execute if entity @s[tag=!tr.tag,scores={tr.dummy=1}] run gamerule showDeathMessages false
effect give @s[tag=tr.tag] instant_damage 1 100 true
kill @s[tag=!tr.tag,tag=!global.ignore.kill]
execute if entity @s[tag=!tr.tag,scores={tr.dummy=1},tag=tr.damage.voidllager_teleport] run tellraw @a [{"selector":"@s"},{"text":" "},{"translate":"death.tr.voidllager_teleport"}]
execute if entity @s[tag=!tr.tag,scores={tr.dummy=1}] run gamerule showDeathMessages true
tag @s remove tr.tag