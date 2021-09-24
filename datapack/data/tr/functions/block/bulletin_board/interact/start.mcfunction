############################################################
# Description: Starts a line of sight raycast
############################################################

stopsound @s * block.chest.locked
title @s actionbar {"text":" "}
tag @s add tr.temp

execute if predicate tr:holding/bulletin_board/job_completed run function tr:block/bulletin_board/jobs/complete_job
scoreboard players set @s tr.dummy 0
execute anchored eyes unless predicate tr:holding/bulletin_board/job_completed run function tr:block/bulletin_board/interact/raycast

advancement revoke @s only tr:technical/block/bulletin_board/interact