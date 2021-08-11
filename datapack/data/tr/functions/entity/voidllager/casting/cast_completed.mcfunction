############################################################
# Description: Voidllager cast complete
############################################################

execute as @p[gamemode=!creative,gamemode=!spectator,limit=1] at @s run function tr:entity/voidllager/casting/spells/spell_rng

data modify entity @s WanderTarget set value {X:0,Y:0,Z:0}
execute store result entity @s WanderTarget.X int 1 run data get entity @p[gamemode=!creative,gamemode=!spectator,limit=1,distance=..16] Pos[0]
execute store result entity @s WanderTarget.Y int 1 run data get entity @p[gamemode=!creative,gamemode=!spectator,limit=1,distance=..16] Pos[1]
execute store result entity @s WanderTarget.Z int 1 run data get entity @p[gamemode=!creative,gamemode=!spectator,limit=1,distance=..16] Pos[2]