############################################################
# Description: Checks where the block is placed
############################################################

execute if data block ~ ~ ~ {Items:[{tag:{tr:{placed_block:1b,block:"alchemy_table"}}}]} run function tr:block/alchemy_table/place