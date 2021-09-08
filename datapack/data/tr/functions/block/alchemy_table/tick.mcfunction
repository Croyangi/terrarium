############################################################
# Description: Ticks off of Alchemy Table
############################################################

execute unless block ~ ~ ~ barrel run function tr:block/alchemy_table/break
execute if entity @a[tag=tr.using_alchemy_table,distance=..10] run function tr:block/alchemy_table/check_gui