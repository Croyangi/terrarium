############################################################
# Description: Changes weather
############################################################

execute if entity @s[predicate=tr:holding/weather_globe/clear] run weather clear
execute if entity @s[predicate=tr:holding/weather_globe/clear] run advancement grant @s only tr:minecraft/adventure/use_weather_globe_clear
execute if entity @s[predicate=tr:holding/weather_globe/rain] run weather rain
execute if entity @s[predicate=tr:holding/weather_globe/thunder] run weather thunder

execute rotated ~ 0 run particle block glass ^-.5 ^1 ^ 0 0 0 1 50 normal
playsound tr:item.weather_globe.shatter master @a[distance=..16]
item modify entity @s[gamemode=!creative,gamemode=!spectator] weapon.mainhand tr:remove_one_item