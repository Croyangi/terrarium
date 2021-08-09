############################################################
# Description: Spawn egg summon
############################################################

execute if entity @s[type=item,nbt={Item:{tag:{tr:{id:"spawn_detect", entity:"voidllager"}}}}] run function tr:commands/summon/voidllager/variant_rng

kill @s