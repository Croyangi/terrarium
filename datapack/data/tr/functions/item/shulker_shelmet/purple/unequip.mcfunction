############################################################
# Description: Unequips the Shulker Shelmet
############################################################

advancement revoke @s only tr:technical/item/shulker_shelmet/purple/unequip

data remove storage tr:storage root.temp.item.tag.purple
data modify storage tr:storage root.temp.item.tag.purple set from entity @s Inventory[{id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}].tag

loot replace entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.0 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.1 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.2 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.3 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.4 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.5 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.6 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.7 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.8 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.9 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.10 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:11b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.11 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:12b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.12 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:13b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.13 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:14b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.14 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:15b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.15 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:16b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.16 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:17b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.17 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:18b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.18 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:19b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.19 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:20b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.20 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:21b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.21 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:22b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.22 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:23b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.23 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:24b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.24 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:25b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.25 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:26b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.26 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:27b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.27 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:28b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.28 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:29b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.29 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:30b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.30 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:31b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.31 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:32b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.32 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:33b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.33 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:34b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.34 loot tr:technical/shulker_shelmet/purple
loot replace entity @s[nbt={Inventory:[{Slot:35b,id:"minecraft:carrot_on_a_stick",tag:{tr:{id:"shulker_shelmet", variant:"purple"}}}]}] container.35 loot tr:technical/shulker_shelmet/purple

tag @s remove tr.voidllager.friendly