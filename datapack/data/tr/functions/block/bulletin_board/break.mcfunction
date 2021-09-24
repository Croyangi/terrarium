############################################################
# Description: Runs when breaking the Bulletin Board
############################################################

execute store success score tr.temp tr.dummy run kill @e[tag=!global.ignore,tag=!global.ignore.kill,limit=1,type=item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:barrel"}}]
execute if score tr.temp tr.dummy matches 1.. run loot spawn ~ ~ ~ loot tr:items/bulletin_board
particle minecraft:item hopper{CustomModelData:218000} ~ ~ ~ 0.4 0.4 0.4 0.05 50 normal
kill @s