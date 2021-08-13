############################################################
# Description: Hit Voidllager and remove tags
############################################################

tag @e[type=wandering_trader,tag=tr.voidllager.bartering,nbt={HurtTime:10s}] add tr.voidllager.failed_barter
tag @s[gamemode=!creative,gamemode=!spectator] remove tr.voidllager.friendly
advancement revoke @s only tr:technical/entity/hit_voidllager