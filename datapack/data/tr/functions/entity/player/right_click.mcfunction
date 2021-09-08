############################################################
# Description: Runs when right clicking a coas
############################################################

# Weather Globes
execute if entity @s[predicate=tr:holding/weather_globe/weather_globe] run function tr:item/weather_globe/sort

scoreboard players reset @s tr.coas