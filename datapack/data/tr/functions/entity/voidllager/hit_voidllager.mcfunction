############################################################
# Description: Hit Voidllager and remove tags
############################################################

tag @e[type=wandering_trader,tag=tr.voidllager.bartering,nbt={HurtTime:10s}] add tr.voidllager.failed_barter
execute if entity @s[tag=tr.voidllager.friendly] at @e[type=wandering_trader,tag=tr.voidllager,nbt={HurtTime:10s}] run particle minecraft:angry_villager ~ ~1.5 ~ .3 .3 .3 0 5

execute if entity @s[gamemode=!creative,gamemode=!spectator] as @e[type=wandering_trader,tag=tr.voidllager,nbt={HurtTime:10s}] run data modify entity @s ArmorItems[3].tag.tr.storage.Mood set value 0
execute if entity @s[advancements={tr:technical/entity/projectile_hit_voidllager=true}] run execute as @e[type=wandering_trader,tag=tr.voidllager,nbt={HurtTime:10s}] at @s unless entity @a[distance=..16] run function tr:entity/voidllager/spells/teleport_voidllager
tag @s[gamemode=!creative,gamemode=!spectator] remove tr.voidllager.friendly

advancement revoke @s only tr:technical/entity/projectile_hit_voidllager
advancement revoke @s only tr:technical/entity/hit_voidllager