############################################################
# Description: Changes weather
############################################################

execute store result score @s tr.dummy run gamerule doWeatherCycle

execute if entity @s[predicate=tr:holding/weather_globe/clear,scores={tr.dummy=1},predicate=!tr:weather/is_clear] run advancement grant @s only tr:minecraft/adventure/use_weather_globe_clear

execute if entity @s[predicate=tr:holding/weather_globe/clear,scores={tr.dummy=1}] run weather clear 300
execute if entity @s[predicate=tr:holding/weather_globe/rain,scores={tr.dummy=1}] run weather rain 300
execute if entity @s[predicate=tr:holding/weather_globe/thunder,scores={tr.dummy=1}] run weather thunder 300

execute rotated ~ 0 run particle block glass ^-.5 ^1 ^ 0 0 0 1 50 normal
playsound tr:item.weather_globe.shatter master @a[distance=..16]
item modify entity @s[gamemode=!creative,gamemode=!spectator] weapon.mainhand tr:remove_one_item