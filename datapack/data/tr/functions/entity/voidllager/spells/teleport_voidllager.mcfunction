############################################################
# Description: Voidllager teleports
############################################################

spreadplayers ~ ~ 15 20 false @s
playsound tr:mob.voidllager.teleport master @a[distance=..16]
particle minecraft:reverse_portal ~ ~1 ~ 0.1 0.1 0.1 1 20 normal

summon endermite ~ ~ ~
execute if predicate tr:chance/two_thirds unless entity @s[tag=tr.voidllager.optic] run summon endermite ~ ~ ~
execute if predicate tr:chance/two_thirds unless entity @s[tag=tr.voidllager.optic] run summon endermite ~ ~ ~
execute if predicate tr:chance/two_thirds unless entity @s[tag=tr.voidllager.optic] run summon endermite ~ ~ ~
execute if entity @s[tag=tr.voidllager.optic] run summon endermite ~ ~ ~
execute if entity @s[tag=tr.voidllager.optic] run summon endermite ~ ~ ~
execute if entity @s[tag=tr.voidllager.optic] run summon endermite ~ ~ ~