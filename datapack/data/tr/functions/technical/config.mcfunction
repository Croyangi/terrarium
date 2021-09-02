############################################################
# Description: Terrarium config
############################################################

# 1 = True
# 0 = False

# doNaturalMobSpawning - 1 by default
# Controls whether or not Terrarium's custom mobs naturally spawn
data merge storage tr:storage {root:{gamerules:{doCustomMobSpawning:1b}}}

# doReloadMessage - 0 by default
# Controls whether or not Terrarium announces a chat message when reloading
data merge storage tr:storage {root:{gamerules:{doReloadMessage:1b}}}