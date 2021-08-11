############################################################
# Description: Calculates armor into the damage formula
# Made by and credits to: CreeperMagnet_
############################################################

# tr.damage tr.dummy: damage to add to entity, to 1 decimal place (x10)


  ## https://static.wikia.nocookie.net/minecraft_gamepedia/images/0/0e/ArmorDamageFormula.svg/revision/latest/scale-to-width-down/668?cb=20190728042948
  ## FORMULA:
  ## damage = damage * (1 - (min(20,max(armor ÷ 5 , ATF))) ÷ 25)


 ## Insert Armor Toughness
  execute store result score tr.temp_1 tr.dummy run attribute @s minecraft:generic.armor_toughness get 10

  # Create value for first portion of max(armor ÷ 5, ATF)
  # This leads to armor ÷ 5 being stored in tr.temp_2
scoreboard players operation tr.temp_2 tr.dummy = tr.temp_0 tr.dummy
scoreboard players operation tr.temp_2 tr.dummy /= tr.const.5 tr.dummy

 ##### SEPARATOR SO YOUR BRAIN DOESN'T MELT

  # Create values for second portion of max(armor ÷ 5, ATF) (ATF)
  # This is the armor toughness formula calculation. It is nasty.
  # It is equal to: (armor - damage ÷ (2 + (toughness ÷ 4)))



  # Assign Temporary Values from the semi-permanent values.

  # Armor
scoreboard players operation tr.temp_3 tr.dummy = tr.temp_0 tr.dummy
  # Damage
scoreboard players operation tr.temp_4 tr.dummy = tr.damage tr.dummy
  # Armor Toughness
scoreboard players operation tr.temp_5 tr.dummy = tr.temp_1 tr.dummy


  # Divide by 4 (working inside -> out), so (toughness ÷ 4) first.
  # tr.const.4 always has the value of 4.

scoreboard players operation tr.temp_5 tr.dummy /= tr.const.4 tr.dummy


  # Then we add 2 to that, again working inside -> out. (2 + (toughness ÷ 4))

scoreboard players add tr.temp_5 tr.dummy 20


  # Then, divide the damage by that value. (damage ÷ (2 + (toughness ÷ 4)))

scoreboard players operation tr.temp_4 tr.dummy /= tr.temp_5 tr.dummy
scoreboard players operation tr.temp_4 tr.dummy *= tr.const.10 tr.dummy

  # Then subtract that value from armor, and you have the final result of the armor toughness formula.

scoreboard players operation tr.temp_3 tr.dummy -= tr.temp_4 tr.dummy

 ##### SEPARATOR SO YOUR BRAIN DOESN'T MELT



 # The next portion of this massive garbage heap of a formula. The max(armor ÷ 5, ATF). We've already calculated both, so we can just put them in here, and take the greatest one.
 # tr.temp_2 = armor ÷ 5
 # tr.temp_3 = Armor Toughness Formula results

execute if score tr.temp_3 tr.dummy > tr.temp_2 tr.dummy run scoreboard players operation tr.temp_2 tr.dummy = tr.temp_3 tr.dummy


 # Then the next part, the min(20, max(whatever was in last step)). If >20, it equals 20.
 # tr.temp_2 = The results from last step, carried over.

execute if score tr.temp_2 tr.dummy matches 200.. run scoreboard players set tr.temp_2 tr.dummy 200



 # The REALLY MESSY MATH

  # Multiply by 10 to maintain precision
scoreboard players operation tr.temp_2 tr.dummy *= tr.const.10 tr.dummy
  # Divide by 25 per the formula
scoreboard players operation tr.temp_2 tr.dummy /= tr.const.25 tr.dummy

  # Then subtract it all from 1 (100)

scoreboard players set tr.temp_0 tr.dummy 100
scoreboard players operation tr.temp_0 tr.dummy -= tr.temp_2 tr.dummy

  # Multiply the damage by the end result, then divide by 100 to get proper precision back.
scoreboard players operation tr.damage tr.dummy *= tr.temp_0 tr.dummy
scoreboard players operation tr.damage tr.dummy /= tr.const.100 tr.dummy
