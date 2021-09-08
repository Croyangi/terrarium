############################################################
# Description: Saves the user from the void
############################################################

effect give @s[predicate=tr:holding/totem_of_undying,advancements={tr:technical/entity/void_damage=true}] minecraft:instant_damage 1 100
tag @s[advancements={tr:technical/item/used_totem=true}] add tr.temp
execute if entity @s[advancements={tr:technical/item/used_totem=true}] run schedule function tr:item/totem_of_undying/effects 1t
advancement revoke @s only tr:technical/item/used_totem
advancement revoke @s only tr:technical/entity/void_damage