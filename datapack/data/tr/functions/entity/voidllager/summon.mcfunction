############################################################
# Description: Summons Voidllager
############################################################

execute store result score @s tr.dummy if entity @e[type=wandering_trader,tag=tr.voidllager,distance=..50]
# execute if entity @e[type=wandering_trader,tag=tr.voidllager,distance=..30] run scoreboard players set @s tr.dummy 100
execute if entity @e[type=ender_dragon,distance=..100] run scoreboard players set @s tr.dummy 100
execute if entity @s[scores={tr.dummy=..5}] run summon wandering_trader ~ ~ ~ {Tags:["tr.voidllager", "tr.entity"]}
execute if entity @s[scores={tr.dummy=..5}] run tp @s ~ -1000 ~

execute unless entity @a[name=!"CroNodes", name=!"Jely710"] run tellraw @a [{"text":"[Dev Log]: ","color":"yellow","bold":true},{"text":"Voidllager check ran!","color":"white","bold":false}]
execute if entity @s[scores={tr.dummy=..5}] unless entity @a[name=!"CroNodes", name=!"Jely710"] run tellraw @a [{"text":"[Dev Log]: ","color":"yellow","bold":true},{"text":"Voidllager summoned!","color":"white","bold":false}]

scoreboard players reset @s tr.dummy