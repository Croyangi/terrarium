############################################################
# Description: Ticks off of Bulletin Board
############################################################

execute unless block ~ ~ ~ barrel run function tr:block/bulletin_board/break
execute if predicate tr:villagers_start_work run function tr:block/bulletin_board/refresh_jobs