############################################################
# Description: Dropcraft death detection
############################################################

execute as @e[type=item,nbt={Item:{tag:{tr:{id:"spawn_detect"}}}}] at @s run function tr:item/spawn_egg/summon