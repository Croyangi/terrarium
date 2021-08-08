############################################################
# Description: Spawns Voidllager
############################################################

execute store result score @s tr.dummy if entity @e[type=wandering_trader,tag=tr.voidllager,distance=..50]
execute unless block ~ ~-1 ~ end_stone run scoreboard players set @s tr.dummy 100
execute if entity @e[type=endermite,distance=..20] run scoreboard players set @s tr.dummy 100
execute if entity @e[type=wandering_trader,tag=tr.voidllager,distance=..50] run scoreboard players set @s tr.dummy 100
execute if entity @e[type=ender_dragon] run scoreboard players set @s tr.dummy 100

execute if entity @s[scores={tr.dummy=..5}] run function tr:commands/summon/voidllager
execute if entity @s[scores={tr.dummy=..5}] run tp @s ~ -1000 ~

execute as @a unless entity @s[name=!"CroNodes", name=!"Jely710"] run tellraw @s [{"text":"[Dev Log]: ","color":"yellow","bold":true},{"text":"Voidllager check ran!","color":"white","bold":false}]
execute if entity @s[scores={tr.dummy=..5}] run execute as @a unless entity @s[name=!"CroNodes", name=!"Jely710"] run tellraw @s [{"text":"[Dev Log]: ","color":"yellow","bold":true},{"text":"Voidllager summoned!","color":"white","bold":false}]

scoreboard players reset @s tr.dummy