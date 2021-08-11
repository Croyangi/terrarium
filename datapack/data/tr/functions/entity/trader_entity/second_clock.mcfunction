############################################################
# Description: Second clock for trader entities
############################################################

execute if entity @s[tag=tr.voidllager,tag=!tr.trader_entity.still,tag=!tr.no_ai] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..16] run function tr:entity/voidllager/looking_at_player
execute if entity @s[tag=tr.voidllager,tag=tr.voidllager.casting,tag=!tr.no_ai] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..16] run function tr:entity/voidllager/casting/start_cast

execute if entity @s[predicate=tr:chance/one_fourth,tag=!tr.silent] run function tr:entity/trader_entity/sounds/ambient