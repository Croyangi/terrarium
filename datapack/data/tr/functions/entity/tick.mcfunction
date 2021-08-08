############################################################
# Description: Runs off of entities
############################################################

execute as @s[tag=tr.trader_entity] run function tr:entity/trader_entity/tick

execute as @s[tag=tr.voidllager] run function tr:entity/voidllager/tick