############################################################
# Description: Spawns job
############################################################

loot spawn ~ ~ ~ loot tr:items/bulletin_board_job
execute as @e[tag=!global.ignore,tag=!global.ignore.kill,limit=1,type=item,distance=..2,nbt={PickupDelay:10s}] run function tr:block/bulletin_board/jobs/generate