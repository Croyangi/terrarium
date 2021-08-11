############################################################
# Description: Filters death sounds for trader entities
############################################################

execute if entity @s[nbt={Item:{tag:{tr:{entity:"voidllager"}}}}] run playsound tr:mob.voidllager.death master @a[distance=..16]