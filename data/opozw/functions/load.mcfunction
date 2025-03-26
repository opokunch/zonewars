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
execute unless score border_last sys matches 1..10 run scoreboard players set border_last sys 0

execute unless score gm sys matches 0..1 run scoreboard players set gm sys 0
execute unless score eq sys matches 0..1 run scoreboard players set eq sys 0
execute unless score mob sys matches 0..1 run scoreboard players set mob sys 0

scoreboard players set start sys 0
scoreboard players set tick sys 0
scoreboard players set time sys 0
scoreboard players set end sys 0

scoreboard players set 5 sys 5
scoreboard players set 10 sys 10

scoreboard players reset checkop sys

#border
worldborder warning distance 0
worldborder set 100000
worldborder damage amount 1
worldborder damage buffer 0

#gamerule
gamerule doMobSpawning false
execute unless score debug sys matches 0 run gamerule sendCommandFeedback true
gamerule doMobLoot false
gamerule doImmediateRespawn true

#team
team add noname
team modify noname nametagVisibility never

#kill
kill @e[type=!player, type=!iron_golem]
gamerule doMobLoot true

#clear
clear @a

#give
execute as @a[scores={op=1}] run function opozw:give

execute as @a store success score @s op run scoreboard players add checkop sys 1
gamemode adventure @a

playsound block.note_block.pling player @s ~ ~ ~ 0.5 1 0.5