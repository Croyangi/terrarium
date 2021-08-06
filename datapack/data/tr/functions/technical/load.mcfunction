############################################################
# Description: Adds scoreboards and technicals
############################################################

scoreboard objectives add tr.dummy dummy

# Schedule Loops
schedule function tr:technical/second_clock 1s replace