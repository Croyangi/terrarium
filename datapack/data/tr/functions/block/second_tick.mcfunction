############################################################
# Description: Second clock for all blocks
############################################################

execute if entity @s[type=armor_stand,tag=tr.alchemy_table] unless entity @a[tag=tr.using_alchemy_table,distance=..10] as @a[tag=tr.using_alchemy_table,distance=10..] at @s unless entity @e[type=armor_stand,tag=tr.alchemy_table,distance=..10] run tag @s remove tr.using_alchemy_table