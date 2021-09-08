############################################################
# Description: Second clock for entities
############################################################

# Trader entites
execute if entity @s[tag=tr.trader_entity] run function tr:entity/trader_entity/second_clock

# Blocks
execute if entity @s[tag=tr.block] run function tr:block/second_tick

# Remove hostiles in Peaceful difficulty
execute if score #tr.difficulty tr.dummy matches 0 run tp @s[tag=tr.hostile] ~ -1000 ~