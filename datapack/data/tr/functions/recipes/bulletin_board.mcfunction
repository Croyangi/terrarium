############################################################
# Description: Custom crafting for the Bulletin Board
############################################################

# Technical
recipe take @s tr:bulletin_board
advancement revoke @s only tr:recipes/bulletin_board

loot spawn ~ ~ ~ loot tr:items/bulletin_board
clear @s knowledge_book