############################################################
# Description: Finds the block you are looking at
############################################################

scoreboard players add @s[scores={tr.dummy=..499}] tr.dummy 1
execute if entity @s[scores={tr.dummy=..499}] unless block ^ ^ ^0.05 barrel{Lock:"bulletin_board"} positioned ^ ^ ^0.05 run function tr:block/bulletin_board/interact/raycast
execute if entity @s[scores={tr.dummy=..499}] if block ^ ^ ^0.05 barrel{Lock:"bulletin_board"} positioned ^ ^ ^0.05 align xyz as @e[dx=0,dz=0,dy=0,type=armor_stand,tag=tr.bulletin_board,limit=1,sort=nearest,predicate=tr:in_village] run function tr:block/bulletin_board/interact/end