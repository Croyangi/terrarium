############################################################
# Description: Equips the Shulker Shelmet
############################################################

advancement revoke @s only tr:technical/item/shulker_shelmet/optic/equip

stopsound @s master minecraft:item.armor.equip_leather
playsound tr:item.shulker_shelmet.equip master @a[distance=..16]

data modify storage tr:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
item replace entity @s armor.head with minecraft:carrot_on_a_stick
item modify entity @s armor.head tr:copy_nbt

execute unless entity @e[type=wandering_trader,tag=tr.voidllager,distance=..16] run tag @s add tr.voidllager.friendly

