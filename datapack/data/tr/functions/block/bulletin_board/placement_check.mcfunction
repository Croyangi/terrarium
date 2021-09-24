############################################################
# Description: Checks where the block is placed
############################################################

execute if data block ~ ~ ~ {Items:[{tag:{tr:{placed_block:1b,block:"bulletin_board"}}}]} run function tr:block/bulletin_board/place