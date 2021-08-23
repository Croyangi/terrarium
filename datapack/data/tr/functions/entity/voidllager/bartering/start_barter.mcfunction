############################################################
# Description: Voidllager start barter
############################################################

scoreboard players set @s tr.dummy 0
execute anchored eyes positioned ^ ^ ^.5 run function tr:entity/voidllager/bartering/raycast
scoreboard players reset @s tr.dummy

execute if entity @s[predicate=tr:wearing/shulker_shelmet,predicate=!tr:holding/voidllager_trades] at @e[tag=tr.voidllager.barter,tag=!tr.voidllager.bartering] run playsound tr:mob.voidllager.disagrees master @a[distance=..16]
execute if entity @s[predicate=tr:wearing/shulker_shelmet,predicate=!tr:holding/voidllager_trades] at @e[tag=tr.voidllager.barter,tag=!tr.voidllager.bartering] run particle angry_villager ~ ~2 ~
execute if entity @s[predicate=tr:wearing/shulker_shelmet,predicate=tr:holding/voidllager_trades,tag=tr.voidllager.friendly] if entity @e[tag=tr.voidllager.barter,tag=!tr.voidllager.bartering,tag=!tr.trader_entity.still,tag=!tr.voidllager.casting,tag=!tr.no_ai] run function tr:entity/voidllager/bartering/barter_successful
tag @e remove tr.voidllager.barter
tag @e remove tr.holding.voidllager_trades

advancement revoke @s only tr:technical/entity/barter_with_voidllager