############################################################
# Description: Randomizes the Voidllager variant
############################################################

execute store result score #tr.temp tr.dummy run loot spawn ~ ~ ~ loot tr:technical/roll/1_100
execute if score #tr.temp tr.dummy matches 1..60 run function tr:commands/summon/voidllager/purple
execute if score #tr.temp tr.dummy matches 61..89 run function tr:commands/summon/voidllager/red
execute if score #tr.temp tr.dummy matches 90..99 run function tr:commands/summon/voidllager/black
execute if score #tr.temp tr.dummy matches 100 run function tr:commands/summon/voidllager/optic