############################################################
# Description: Absorbs current weather
############################################################

execute if predicate tr:weather/is_clear run loot replace entity @s weapon.mainhand loot tr:items/weather_globe/clear
execute if predicate tr:weather/is_raining run loot replace entity @s weapon.mainhand loot tr:items/weather_globe/rain
execute if predicate tr:weather/is_thundering run loot replace entity @s weapon.mainhand loot tr:items/weather_globe/thunder

playsound tr:item.weather_globe.open master @a[distance=..16]