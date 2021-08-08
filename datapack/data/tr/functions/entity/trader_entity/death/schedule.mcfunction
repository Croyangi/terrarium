############################################################
# Description: Schedules dropcraft function
############################################################

schedule function tr:entity/trader_entity/death/dropcraft 1t append
advancement revoke @s only tr:technical/entity/killed_trader_entity