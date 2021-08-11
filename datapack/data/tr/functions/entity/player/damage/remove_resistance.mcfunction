############################################################
# Description: Removes resistance and re-adds
# Made by and credits to: CreeperMagnet_
############################################################

execute store result score tr.temp_0 tr.dummy run data get storage tr:storage root.temp.resistance_storage[0].Amplifier 1
execute store result score tr.temp_1 tr.dummy run data get storage tr:storage root.temp.resistance_storage[0].Duration 0.05
execute store result score tr.temp_2 tr.dummy run data get storage tr:storage root.temp.resistance_storage[0].ShowParticles 1
data remove storage tr:storage root.temp.resistance_storage[0]
effect clear @s resistance
execute if score tr.temp_0 tr.dummy matches 0 run function tr:entity/player/damage/reapply_resistance/0
execute if score tr.temp_0 tr.dummy matches 1 run function tr:entity/player/damage/reapply_resistance/1
execute if score tr.temp_0 tr.dummy matches 2 run function tr:entity/player/damage/reapply_resistance/2
execute if score tr.temp_0 tr.dummy matches 3 run function tr:entity/player/damage/reapply_resistance/3
