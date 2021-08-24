############################################################
# Description: Finishes the spell
############################################################

data remove storage tr:storage root.temp
execute if data entity @s ActiveEffects[{Id:5b}] run data modify storage tr:storage root.temp.strength set value 1b
function tr:entity/voidllager/spells/spell_sort
data modify entity @s WanderTarget set value {X:0,Y:0,Z:0}
execute store result entity @s WanderTarget.X int 1 run data get entity @p[gamemode=!creative,gamemode=!spectator,limit=1,distance=..16] Pos[0]
execute store result entity @s WanderTarget.Y int 1 run data get entity @p[gamemode=!creative,gamemode=!spectator,limit=1,distance=..16] Pos[1]
execute store result entity @s WanderTarget.Z int 1 run data get entity @p[gamemode=!creative,gamemode=!spectator,limit=1,distance=..16] Pos[2]