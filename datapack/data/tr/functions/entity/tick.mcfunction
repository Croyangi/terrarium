############################################################
# Description: Runs off of entities
############################################################

# Trader entities
execute if entity @s[tag=tr.trader_entity] run function tr:entity/trader_entity/tick

# Blocks
execute if entity @s[tag=tr.block] run function tr:block/tick