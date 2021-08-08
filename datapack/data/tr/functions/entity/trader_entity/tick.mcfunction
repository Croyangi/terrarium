############################################################
# Description: Runs tick for trader entities
############################################################

execute if entity @s[tag=!tr.trader_entity.still,predicate=!tr:moving] run data modify entity @s HandItems[0] set from entity @s ArmorItems[3].tag.tr.storage.model_items[0]
execute if entity @s[tag=!tr.trader_entity.still,predicate=tr:moving,tag=!tr.no_ai] run data modify entity @s HandItems[0] set from entity @s ArmorItems[3].tag.tr.storage.model_items[1]
execute if entity @s[tag=tr.trader_entity.still] run data modify entity @s HandItems[0] set from entity @s ArmorItems[3].tag.tr.storage.model_items[2]

# HurtTime
execute if entity @s[nbt={HurtTime:10s}] run function tr:entity/trader_entity/hurt
execute if entity @s[nbt={HurtTime:0s}] run function tr:entity/trader_entity/unhurt