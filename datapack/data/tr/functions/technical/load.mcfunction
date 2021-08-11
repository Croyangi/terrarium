############################################################
# Description: Adds scoreboards and technicals
############################################################

execute as @a unless entity @s[name=!"CroNodes", name=!"Jely710"] run tellraw @s [{"text":"[Dev Log]: ","color":"yellow","bold":true},{"text":"Successfully reloaded!","color":"white","bold":false}]

scoreboard objectives add tr.dummy dummy
scoreboard objectives add tr.dummy2 dummy

scoreboard objectives add tr.invul_timer dummy

# Schedule Loops
schedule function tr:technical/second_clock 1s replace