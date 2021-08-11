############################################################
# Description: Calculates protection into the damage formula
# Made by and credits to: CreeperMagnet_
############################################################

# Get all armor values and add them together
execute store result score tr.temp_0 tr.dummy run data get entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation tr.temp_1 tr.dummy = tr.temp_0 tr.dummy
execute store result score tr.temp_0 tr.dummy run data get entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation tr.temp_1 tr.dummy += tr.temp_0 tr.dummy
execute store result score tr.temp_0 tr.dummy run data get entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation tr.temp_1 tr.dummy += tr.temp_0 tr.dummy
execute store result score tr.temp_0 tr.dummy run data get entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation tr.temp_1 tr.dummy += tr.temp_0 tr.dummy

# Make the damage number based on that

  # Multiply by 100 to maintain precision
scoreboard players operation tr.temp_1 tr.dummy *= tr.const.100 tr.dummy
  # Divide by 25 per the formula
scoreboard players operation tr.temp_1 tr.dummy /= tr.const.25 tr.dummy

  # Then subtract it all from 1 (100)

scoreboard players set tr.temp_0 tr.dummy 100
scoreboard players operation tr.temp_0 tr.dummy -= tr.temp_1 tr.dummy

  # Multiply the damage by the end result, then divide by 100 to get proper precision back.
scoreboard players operation tr.damage tr.dummy *= tr.temp_0 tr.dummy
scoreboard players operation tr.damage tr.dummy /= tr.const.100 tr.dummy
