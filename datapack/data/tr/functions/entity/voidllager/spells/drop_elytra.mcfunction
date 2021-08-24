############################################################
# Description: Voidllager drops player's Elytra
############################################################

playsound tr:mob.voidllager.drop_elytra master @a[distance=..16]

data modify storage tr:storage root.temp.item set from entity @s Inventory[{Slot:102b}]
summon item ~ ~ ~ {Item:{Count:1b,id:"minecraft:stone",tag:{tr:{temp:1b}}}}
execute as @e[type=item,limit=1,nbt={Item:{tag:{tr:{temp:1b}}}}] run data modify entity @s Item set from storage tr:storage root.temp.item
data remove entity @s Inventory[{Slot:102b}]
item replace entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] armor.chest with air

effect give @s slowness 14 1 false