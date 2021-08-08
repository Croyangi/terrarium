############################################################
# Description: Second clock for trader entities
############################################################

execute if entity @s[predicate=tr:chance/one_fourth,tag=!tr.silent] run function tr:entity/trader_entity/sounds/ambient