############################################################
# Description: Equips the Shulker Shelmet
############################################################

advancement revoke @s only tr:technical/item/shulker_shelmet/entity_equip
execute as @e[distance=..20,type=armor_stand,tag=!global.ignore,predicate=tr:holding/entity_equip] run data modify entity @s ArmorItems[3].id set value "minecraft:carrot_on_a_stick"
