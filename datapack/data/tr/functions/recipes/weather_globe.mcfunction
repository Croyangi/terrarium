############################################################
# Description: Custom crafting for the Weather Globe
############################################################

# Technical
recipe take @s tr:weather_globe
advancement revoke @s only tr:recipes/weather_globe

loot spawn ~ ~ ~ loot tr:items/weather_globe/empty
clear @s knowledge_book