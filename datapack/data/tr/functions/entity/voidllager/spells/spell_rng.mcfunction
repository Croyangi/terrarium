############################################################
# Description: Sorts Voidllager spell
############################################################

scoreboard players set #tr.temp tr.dummy 0
execute if entity @p[gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}],FallFlying:1b},tag=!tr.voidllager.friendly] run scoreboard players set #tr.temp tr.dummy 101
execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..3,tag=!tr.voidllager.friendly] run scoreboard players set #tr.temp tr.dummy 100

execute if score #tr.temp tr.dummy matches 0 run tag @s[tag=tr.voidllager.optic] add tr.tag
execute if score #tr.temp tr.dummy matches 0 run execute as @p[gamemode=!creative,gamemode=!spectator,distance=..16,tag=!tr.voidllager.friendly] at @s run function tr:entity/voidllager/spells/teleport_player
execute if score #tr.temp tr.dummy matches 100 run function tr:entity/voidllager/spells/teleport_voidllager
execute if score #tr.temp tr.dummy matches 101 run execute as @a[gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}],FallFlying:1b},distance=..16,tag=!tr.voidllager.friendly] at @s run function tr:entity/voidllager/spells/drop_elytra