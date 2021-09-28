############################################################
# Description: Generates a random job
############################################################

execute store result score #tr.temp.rng tr.dummy run loot spawn ~ ~ ~ loot tr:technical/roll/1_4

execute if score #tr.temp.rng tr.dummy matches 1 run data modify entity @s Item.tag.tr.job set value "build_iron_golem"
execute if score #tr.temp.rng tr.dummy matches 1 run data modify entity @s Item.tag.Experience set value 150
execute if score #tr.temp.rng tr.dummy matches 1 run data modify entity @s Item.tag.display.Lore[0] set value '{"italic":false,"color":"white","extra":[{"text":": "},{"translate":"item.tr.bulletin_board_job.job.build_iron_golem"}],"translate":"item.tr.bulletin_board_job.lore"}'

execute if score #tr.temp.rng tr.dummy matches 2 run data modify entity @s Item.tag.tr.job set value "bred_animals"
execute if score #tr.temp.rng tr.dummy matches 2 run data modify entity @s Item.tag.Experience set value 30
execute if score #tr.temp.rng tr.dummy matches 2 run data modify entity @s Item.tag.display.Lore[0] set value '{"italic":false,"color":"white","extra":[{"text":": "},{"translate":"item.tr.bulletin_board_job.job.bred_animals"}],"translate":"item.tr.bulletin_board_job.lore"}'

execute if score #tr.temp.rng tr.dummy matches 3..4 run data modify entity @s Item.tag.tr.job set value "fill_composter"
execute if score #tr.temp.rng tr.dummy matches 3..4 run data modify entity @s Item.tag.Experience set value 50
execute if score #tr.temp.rng tr.dummy matches 3..4 run data modify entity @s Item.tag.display.Lore[0] set value '{"italic":false,"color":"white","extra":[{"text":": "},{"translate":"item.tr.bulletin_board_job.job.fill_composter"}],"translate":"item.tr.bulletin_board_job.lore"}'