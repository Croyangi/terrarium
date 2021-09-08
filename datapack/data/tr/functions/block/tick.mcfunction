############################################################
# Description: Runs off of blocks
############################################################

# Alchemy Table
execute if entity @s[type=armor_stand,tag=tr.alchemy_table] run function tr:block/alchemy_table/tick

# Flask
execute if entity @s[type=armor_stand,tag=tr.flask] unless block ~ ~ ~ structure_void run function tr:block/flask/break