############################################################
# Description: Dropcraft death detection
############################################################

execute as @e[type=item,nbt={Item:{tag:{tr:{id:"death_detect"}}}}] at @s run function tr:entity/trader_entity/death/effects