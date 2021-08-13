############################################################
# Description: Remove one item
############################################################

advancement grant @s only tr:minecraft/end/barter_with_voidllager

playsound tr:mob.voidllager.agrees master @a[distance=..16]
item modify entity @s[gamemode=!creative,gamemode=!spectator] weapon.mainhand tr:remove_one_item
tag @s add tr.holding.voidllager_trades