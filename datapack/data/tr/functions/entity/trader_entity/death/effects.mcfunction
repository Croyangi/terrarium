############################################################
# Description: Death effects
############################################################

particle minecraft:poof ~ ~1 ~ 0 0 0 0 10 normal

summon experience_orb ~ ~ ~ {Value:1s}
summon experience_orb ~ ~ ~ {Value:1s}
summon experience_orb ~ ~ ~ {Value:1s}

execute if entity @s[tag=!tr.silent] run function tr:entity/trader_entity/sounds/death
kill @s