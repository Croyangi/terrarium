############################################################
# Description: Voidllager teleports
############################################################

spreadplayers ~ ~ 1 15 false @s
playsound tr:mob.voidllager.teleport master @a[distance=..16]
particle minecraft:reverse_portal ~ ~ ~ 0 0 0 1 20 normal

summon endermite ~ ~ ~
execute if predicate tr:chance/two_thirds run summon endermite ~.1 ~ ~
execute if predicate tr:chance/two_thirds run summon endermite ~ ~ ~.1
execute if predicate tr:chance/two_thirds run summon endermite ~-.1 ~ ~
execute if predicate tr:chance/two_thirds run summon endermite ~ ~ ~-.1