############################################################
# Description: Sorts Voidllager spell
############################################################

scoreboard players set #tr.temp tr.dummy 0
execute if entity @e[type=wandering_trader,tag=tr.voidllager,distance=..2] run scoreboard players set #tr.temp tr.dummy 100
execute if entity @s[gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}],FallFlying:1b}] run scoreboard players set #tr.temp tr.dummy 101

execute if score #tr.temp tr.dummy matches 0 run function tr:entity/voidllager/casting/spells/teleport_player
execute as @e[type=wandering_trader,tag=tr.voidllager,distance=..3] at @s if score #tr.temp tr.dummy matches 100 run function tr:entity/voidllager/casting/spells/teleport_voidllager
execute if score #tr.temp tr.dummy matches 101 run function tr:entity/voidllager/casting/spells/drop_elytra