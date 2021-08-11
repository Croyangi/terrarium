# tr.damage tr.dummy: damage to add to entity, to 1 decimal place, negative if ignores armor
# tr.ignore_armor tr.dummy: 1 if ignores armor, 0 if doesn't

scoreboard players set @s tr.invul_timer 10

 ## Insert Armor Values (Not part of formula)
  execute store result score tr.temp_0 tr.dummy run attribute @s minecraft:generic.armor get 10
  execute store result score tr.temp_1 tr.dummy run attribute @s minecraft:generic.armor_toughness get 10

execute unless score tr.temp_0 tr.dummy matches 0 unless score tr.ignore_armor tr.dummy matches 1 run function tr:entity/player/damage/operations/armor
execute unless score tr.temp_0 tr.dummy matches 0 unless score tr.ignore_armor tr.dummy matches 1 run function tr:entity/player/damage/operations/protection
execute if data entity @s ActiveEffects[{Id:11b}] run function tr:entity/player/damage/operations/resistance
function tr:entity/player/damage/calculate_attributes
execute unless entity @s[tag=tr.dead] run function tr:entity/player/damage/apply_damage
tag @s remove tr.dead

tag @s remove tr.damage.voidllager_teleport