############################################################
# Description: Adds scoreboards and technicals
############################################################

execute as @a[tag=tr.debug] run tellraw @s [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Successfully reloaded!","color":"white","bold":false}]

scoreboard objectives add tr.dummy dummy
scoreboard objectives add tr.dummy2 dummy
scoreboard objectives add tr.dummy3 dummy

scoreboard objectives add tr.invul_timer dummy

scoreboard objectives add tr.coas minecraft.used:minecraft.carrot_on_a_stick

# Schedule Loops
schedule function tr:technical/second_clock 1s replace