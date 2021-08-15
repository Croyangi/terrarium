############################################################
# Description: Second clock for trader entities
############################################################

data remove entity @s Offers.Recipes

execute if entity @s[tag=tr.voidllager,tag=!tr.trader_entity.still,tag=!tr.voidllager.bartering,tag=!tr.no_ai] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..16,tag=!tr.voidllager.friendly] run function tr:entity/voidllager/line_of_sight/start
execute if entity @s[tag=tr.voidllager,tag=tr.voidllager.casting,tag=!tr.voidllager.bartering,tag=!tr.no_ai] run function tr:entity/voidllager/spell_cast
execute if entity @s[tag=tr.voidllager,tag=tr.voidllager.bartering,tag=!tr.no_ai,tag=!tr.voidllager.casting] run function tr:entity/voidllager/bartering/bartering

execute if entity @s[predicate=tr:chance/one_fourth,tag=!tr.silent] run function tr:entity/trader_entity/sounds/ambient