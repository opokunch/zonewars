#message
tellraw @a {"text": "§f§l- §b§lZoneWarsDP §f§l-"}
tellraw @a {"text": "ZoneWarsの設定をするためにはOP権限が必要です。", "color": "red"}
tellraw @a {"text": ""}
tellraw @a {"text": "ゲーム管理本", "clickEvent": {"action": "run_command", "value": "/function opozw:give"}, "underlined": true, "color": "green", "bold": true}

#effect
effect clear @a

effect give @a regeneration infinite 100 true
effect give @a resistance infinite 100 true
effect give @a saturation infinite 100 true

#scoreboard
scoreboard objectives add health health
scoreboard objectives add death deathCount
scoreboard objectives add sys dummy
scoreboard objectives add op dummy

scoreboard players set border_size sys 100
scoreboard players set border_last sys 0

scoreboard players set start sys 0
scoreboard players set tick sys 0
scoreboard players set time sys 0

scoreboard players set 5 sys 5
scoreboard players set 10 sys 10

#border
worldborder warning distance 0
worldborder set 100000

#gamerule
gamerule doMobSpawning false
execute if score debug sys matches 0 run gamerule sendCommandFeedback false
gamerule doMobLoot false
gamerule doImmediateRespawn true

#team
team add noname
team modify noname nametagVisibility never

#kill
kill @e[type=!player]
gamerule doMobLoot true

#clear
clear @a
#give
function opozw:give

execute as @a store success score @s op run difficulty easy