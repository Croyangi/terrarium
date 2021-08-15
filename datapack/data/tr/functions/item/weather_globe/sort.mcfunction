############################################################
# Description: Sorts which weather globe
############################################################

execute if entity @s[predicate=!tr:holding/weather_globe/empty] run function tr:item/weather_globe/release
execute if entity @s[predicate=tr:holding/weather_globe/empty] run function tr:item/weather_globe/absorb