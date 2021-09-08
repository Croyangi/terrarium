############################################################
# Description: Adds scoreboards and technicals
############################################################

scoreboard objectives add tr.dummy dummy
scoreboard objectives add tr.dummy2 dummy
scoreboard objectives add tr.dummy3 dummy

scoreboard objectives add tr.invul_timer dummy

scoreboard objectives add tr.coas minecraft.used:minecraft.carrot_on_a_stick

# Schedule Loops
schedule function tr:technical/second_clock 1s replace

# Config
function tr:technical/config

execute unless data storage tr:storage {root:{gamerules:{doReloadMessage:0b}}} run tellraw @a [{"translate":"debug.tr","color":"yellow","bold":true},{"translate":"debug.tr.reload","color":"white","bold":false}]