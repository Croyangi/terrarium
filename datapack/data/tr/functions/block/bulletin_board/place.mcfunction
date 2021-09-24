############################################################
# Description: Places placeholder block
############################################################

setblock ~ ~ ~ barrel{Lock:"bulletin_board"}
summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tr.bulletin_board"}',ArmorItems:[{},{},{},{id:"minecraft:hopper",Count:1b,tag:{CustomModelData:218000}}],Tags:["tr.block","tr.entity","global.ignore","tr.bulletin_board"],NoGravity:1b,Invisible:1b,Marker:1b}
execute if predicate tr:in_village run particle minecraft:happy_villager ~ ~ ~ .4 .4 .4 0 10