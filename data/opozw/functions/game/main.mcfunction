execute if score start sys matches 0 run scoreboard players set time sys 0
execute if score start sys matches 1 run scoreboard players add time sys 1

execute if score time sys matches 201.. run gamemode spectator @a[tag=!play, nbt={playerGameType: 0}]

execute if score time sys matches 100 run title @a title {"text": "§l試合開始まで: §7§l5"}
execute if score time sys matches 100 as @a at @s run playsound ui.button.click player @s ~ ~ ~

execute if score time sys matches 120 run title @a title {"text": "§l試合開始まで: §7§l4"}
execute if score time sys matches 120 as @a at @s run playsound ui.button.click player @s ~ ~ ~

execute if score time sys matches 140 run title @a title {"text": "§l試合開始まで: §a§l3"}
execute if score time sys matches 140 as @a at @s run playsound ui.button.click player @s ~ ~ ~

execute if score time sys matches 160 run title @a title {"text": "§l試合開始まで: §e§l2"}
execute if score time sys matches 160 as @a at @s run playsound ui.button.click player @s ~ ~ ~

execute if score time sys matches 180 run title @a title {"text": "§l試合開始まで: §c§l1"}
execute if score time sys matches 180 as @a at @s run playsound ui.button.click player @s ~ ~ ~

execute if score time sys matches 199 unless entity @e[type=armor_stand, tag=border_center] run scoreboard players set start sys 0
execute if score time sys matches 199 unless entity @e[type=armor_stand, tag=border_center] run title @a title {"text": "§c§lボーダーの中心が設定されていません"}
execute if score time sys matches 199 unless entity @e[type=armor_stand, tag=border_center] as @a at @s run playsound ui.button.click player @s ~ ~ ~

execute if score time sys matches 199 if score online sys matches ..1 run scoreboard players set start sys 0
execute if score time sys matches 199 if score online sys matches ..1 run title @a title {"text": "§c§l最少人数を満たしていません"}
execute if score time sys matches 199 if score online sys matches ..1 as @a[scores={op=1}] run function opozw:give
execute if score time sys matches 199 if score online sys matches ..1 as @a at @s run playsound ui.button.click player @s ~ ~ ~
#0sec
execute if score time sys matches 200 run tag @a add play
execute if score time sys matches 200 if score gm sys matches 0 run gamemode survival @a
execute if score time sys matches 200 if score gm sys matches 1 run gamemode adventure @a
execute if score time sys matches 200 run title @a subtitle {"text": "§7§lスペースキーを押してください"}
execute if score time sys matches 200 run title @a title {"text": "§4§l--- エリトラを展開してください ---"}
execute if score time sys matches 200 run effect clear @a
execute if score time sys matches 200 run effect give @a resistance 30 100 true
execute if score time sys matches 200 run effect give @a regeneration 30 100 true
execute if score time sys matches 200 run effect give @a saturation 30 100 true
execute if score time sys matches 200 run give @a cooked_beef 64
execute if score time sys matches 200 run item replace entity @a armor.chest with elytra{Unbreakable: true} 1
execute if score time sys matches 200 as @e[type=armor_stand, tag=border_center] at @s run tp @a ~ ~100 ~

execute if score time sys matches 200..260 as @a at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 2

#5sec
execute if score time sys matches 300 run tellraw @a {"text": "§c30秒間無敵時間があります。"}
execute if score time sys matches 300 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~

#8sec
execute if score time sys matches 360 run tellraw @a {"text": "§cその間に物資を整えよう。"}
execute if score time sys matches 360 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~

#25sec
execute if score time sys matches 700 as @a[nbt={Inventory: [{Slot: 102b, id: "minecraft:elytra", Count: 1b}]}] run title @a subtitle {"text": "§6§l5秒後§7§lにエリトラがなくなります"}
execute if score time sys matches 700 as @a[nbt={Inventory: [{Slot: 102b, id: "minecraft:elytra", Count: 1b}]}] run title @a title {"text": "§c§l陸地に足をつけてください"}

#0.05-29.995sec
execute if score time sys matches 201..799 run item replace entity @a[nbt={OnGround: true, Inventory: [{Slot: 102b, id: "minecraft:elytra", Count: 1b}]}] armor.chest with air

#30sec
execute if score time sys matches 800 run title @a subtitle {"text": "§7§l§n敵を殲滅し、最後まで生き残ろう。"}
execute if score time sys matches 800 run title @a title {"text": "§c§l無敵時間終了"}
execute if score time sys matches 800 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 0.5 1 0.5
execute if score time sys matches 800.. run clear @a elytra

#装備[0 - I/D/OB]
execute if score time sys matches 200 if score eq sys matches 0 run give @a iron_sword{Unbreakable: true}
execute if score time sys matches 200 if score eq sys matches 0 run give @a iron_axe{Unbreakable: true}
execute if score time sys matches 200 if score eq sys matches 0 run give @a iron_pickaxe{Unbreakable: true}
execute if score time sys matches 200 if score eq sys matches 0 run give @a iron_shovel{Unbreakable: true}

execute if score time sys matches 800 if score eq sys matches 0 run give @a oak_planks 128
execute if score time sys matches 800 if score eq sys matches 0 run item replace entity @a armor.head with diamond_helmet{Unbreakable: true}
execute if score time sys matches 800 if score eq sys matches 0 run item replace entity @a armor.chest with diamond_chestplate{Unbreakable: true}
execute if score time sys matches 800 if score eq sys matches 0 run item replace entity @a armor.legs with diamond_leggings{Unbreakable: true}
execute if score time sys matches 800 if score eq sys matches 0 run item replace entity @a armor.feet with diamond_boots{Unbreakable: true}

#装備[1 - N/I/DR]
execute if score time sys matches 800 if score eq sys matches 1 run give @a dirt 128
execute if score time sys matches 800 if score eq sys matches 1 run item replace entity @a armor.head with iron_helmet{Unbreakable: true}
execute if score time sys matches 800 if score eq sys matches 1 run item replace entity @a armor.chest with iron_chestplate{Unbreakable: true}
execute if score time sys matches 800 if score eq sys matches 1 run item replace entity @a armor.legs with iron_leggings{Unbreakable: true}
execute if score time sys matches 800 if score eq sys matches 1 run item replace entity @a armor.feet with iron_boots{Unbreakable: true}

#装備[2 - R/R/OB] まだやらない

#35sec
execute if score time sys matches 899 as @e[type=armor_stand, tag=border_center] run summon armor_stand ~ ~ ~ {Tags: [border_nextcenter], NoGravity: true, Invisible: true}
execute if score time sys matches 899 as @e[type=armor_stand, tag=border_center] at @s run spreadplayers ~ ~ 50 75 false @e[type=armor_stand, tag=border_nextcenter]

execute if score time sys matches 900 store result score border_nextx sys run data get entity @e[type=armor_stand, tag=border_nextcenter, limit=1] Pos[0]
execute if score time sys matches 900 store result score border_nextz sys run data get entity @e[type=armor_stand, tag=border_nextcenter, limit=1] Pos[2]

execute if score time sys matches 900 run tellraw @a [{"text": "§c§l次の安地の中心は[ §6"}, {"score": {"name": "border_nextx", "objective": "sys"}}, {"text": "§f, §6"}, {"score": {"name": "border_nextz", "objective": "sys"}}, {"text": " §c§l]に決定されました\n10秒後に移動を開始します"}]
execute if score time sys matches 900 as @e[type=armor_stand, tag=border_center] at @s run tp @e[type=armor_stand, tag=border_center] ~ ~ ~ facing entity @e[type=armor_stand, tag=border_nextcenter, limit=1]
execute if score time sys matches 900 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~

#42-44sec
execute if score time sys matches 1040 as @a at @s run playsound ui.button.click player @s ~ ~ ~
execute if score time sys matches 1060 as @a at @s run playsound ui.button.click player @s ~ ~ ~
execute if score time sys matches 1080 as @a at @s run playsound ui.button.click player @s ~ ~ ~

#45sec
execute if score time sys matches 1100 run title @a subtitle {"text": "§7§l移動時間: 2分15秒"}
execute if score time sys matches 1100 run title @a title {"text": "§c§l安地の移動が開始されました"}
execute if score time sys matches 1100..1120 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 1 2 1

execute if score time sys matches 1100 if score border_size sys matches 100..150 run worldborder set 50 135
execute if score time sys matches 1100 if score border_size sys matches 200.. run worldborder set 125 135

#45sec-3min
execute if score time sys matches 1100..3800 as @e[type=armor_stand, tag=border_center] at @s if entity @e[type=armor_stand, tag=border_nextcenter] run tp ^ ^ ^0.0625
execute if score time sys matches 1100..3800 as @e[type=armor_stand, tag=border_center] at @s if entity @e[type=armor_stand, tag=border_nextcenter] run worldborder center ~ ~

execute if score time sys matches 1100..4100 as @e[type=armor_stand, tag=border_center] at @s run particle happy_villager ~ ~ ~ 0 50 0 0 25 force

execute if score time sys matches 1100..3800 as @e[type=armor_stand, tag=border_center] at @s if entity @e[type=armor_stand, tag=border_nextcenter, distance=..1] run kill @e[type=armor_stand, tag=border_nextcenter]
execute if score time sys matches 3800 run kill @e[type=armor_stand, tag=border_nextcenter]

#3min
execute if score time sys matches 3800 run tellraw @a {"text": "§c安地の移動が終了しました\n次の安地移動まで: 40秒"}
execute if score time sys matches 3800 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~

#3min30sec
execute if score time sys matches 4399 as @e[type=armor_stand, tag=border_center] run summon armor_stand ~ ~ ~ {Tags: [border_nextcenter], NoGravity: true, Invisible: true}
execute if score time sys matches 4399 as @e[type=armor_stand, tag=border_center] at @s run spreadplayers ~ ~ 40 60 false @e[type=armor_stand, tag=border_nextcenter]

execute if score time sys matches 4400 store result score border_nextx sys run data get entity @e[type=armor_stand, tag=border_nextcenter, limit=1] Pos[0]
execute if score time sys matches 4400 store result score border_nextz sys run data get entity @e[type=armor_stand, tag=border_nextcenter, limit=1] Pos[2]

execute if score time sys matches 4400 run tellraw @a [{"text": "§c§l次の安地の中心は[ §6"}, {"score": {"name": "border_nextx", "objective": "sys"}}, {"text": "§f, §6"}, {"score": {"name": "border_nextz", "objective": "sys"}}, {"text": " §c§l]に決定されました\n10秒後に移動を開始します"}]
execute if score time sys matches 4400 as @e[type=armor_stand, tag=border_center] at @s run tp @e[type=armor_stand, tag=border_center] ~ ~ ~ facing entity @e[type=armor_stand, tag=border_nextcenter, limit=1]
execute if score time sys matches 4400 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~

#3min37sec-39sec
execute if score time sys matches 4540 as @a at @s run playsound ui.button.click player @s ~ ~ ~
execute if score time sys matches 4560 as @a at @s run playsound ui.button.click player @s ~ ~ ~
execute if score time sys matches 4580 as @a at @s run playsound ui.button.click player @s ~ ~ ~

#3min40sec
execute if score time sys matches 4600 run title @a subtitle {"text": "§7§l移動時間: 1分30秒"}
execute if score time sys matches 4600 run title @a title {"text": "§c§l安地の移動が開始されました"}
execute if score time sys matches 4600..4620 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 1 2 1

execute if score time sys matches 4600 if score border sys matches 50 run worldborder set 25 90
execute if score time sys matches 4600 if score border sys matches 125 run worldborder set 50 90

#3min40sec-5min10sec
execute if score time sys matches 4600..6400 as @e[type=armor_stand, tag=border_center] at @s if entity @e[type=armor_stand, tag=border_nextcenter] run tp ^ ^ ^0.0625
execute if score time sys matches 4600..6400 as @e[type=armor_stand, tag=border_center] at @s if entity @e[type=armor_stand, tag=border_nextcenter] run worldborder center ~ ~

execute if score time sys matches 4600..6400 as @e[type=armor_stand, tag=border_center] at @s run particle happy_villager ~ ~ ~ 0 50 0 0 25 force

execute if score time sys matches 4600..6400 as @e[type=armor_stand, tag=border_center] at @s if entity @e[type=armor_stand, tag=border_nextcenter, distance=..1] run kill @e[type=armor_stand, tag=border_nextcenter]
execute if score time sys matches 6400 run kill @e[type=armor_stand, tag=border_nextcenter]

#5min10sec
execute if score time sys matches 6400 run tellraw @a {"text": "§c安地の移動が終了しました\n次の安地移動まで: 45秒"}
execute if score time sys matches 6400 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~

#5min55sec
execute if score time sys matches 7299 as @e[type=armor_stand, tag=border_center] run summon armor_stand ~ ~ ~ {Tags: [border_nextcenter], NoGravity: true, Invisible: true}
execute if score time sys matches 7299 as @e[type=armor_stand, tag=border_center] at @s run spreadplayers ~ ~ 40 50 false @e[type=armor_stand, tag=border_nextcenter]

execute if score time sys matches 7300 store result score border_nextx sys run data get entity @e[type=armor_stand, tag=border_nextcenter, limit=1] Pos[0]
execute if score time sys matches 7300 store result score border_nextz sys run data get entity @e[type=armor_stand, tag=border_nextcenter, limit=1] Pos[2]

execute if score time sys matches 7300 run tellraw @a [{"text": "§c§l次の安地の中心は[ §6"}, {"score": {"name": "border_nextx", "objective": "sys"}}, {"text": "§f, §6"}, {"score": {"name": "border_nextz", "objective": "sys"}}, {"text": " §c§l]に決定されました\n10秒後に移動を開始します"}]
execute if score time sys matches 7300 as @e[type=armor_stand, tag=border_center] at @s run tp @e[type=armor_stand, tag=border_center] ~ ~ ~ facing entity @e[type=armor_stand, tag=border_nextcenter, limit=1]
execute if score time sys matches 7300 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~

#6min7sec-9sec
execute if score time sys matches 7440 as @a at @s run playsound ui.button.click player @s ~ ~ ~
execute if score time sys matches 7460 as @a at @s run playsound ui.button.click player @s ~ ~ ~
execute if score time sys matches 7480 as @a at @s run playsound ui.button.click player @s ~ ~ ~

#6min10sec
execute if score time sys matches 7500 run title @a subtitle {"text": "§7§l移動時間: 1分"}
execute if score time sys matches 7500 run title @a title {"text": "§c§l安地の移動が開始されました"}
execute if score time sys matches 7500..7520 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 1 2 1

execute if score time sys matches 7500 if score border sys matches 25 run worldborder set 15 60
execute if score time sys matches 7500 if score border sys matches 50 run worldborder set 15 60

#6min10sec-7min40sec
execute if score time sys matches 7500..8700 as @e[type=armor_stand, tag=border_center] at @s if entity @e[type=armor_stand, tag=border_nextcenter] run tp ^ ^ ^0.0625
execute if score time sys matches 7500..8700 as @e[type=armor_stand, tag=border_center] at @s if entity @e[type=armor_stand, tag=border_nextcenter] run worldborder center ~ ~

execute if score time sys matches 7500..8700 as @e[type=armor_stand, tag=border_center] at @s run particle happy_villager ~ ~ ~ 0 50 0 0 25 force

execute if score time sys matches 7500..8700 as @e[type=armor_stand, tag=border_center] at @s if entity @e[type=armor_stand, tag=border_nextcenter, distance=..1] run kill @e[type=armor_stand, tag=border_nextcenter]
execute if score time sys matches 8700 run kill @e[type=armor_stand, tag=border_nextcenter]

#6min40sec
execute if score time sys matches 8700 run tellraw @a {"text": "§c安地の移動が終了しました\n最終安地移動まで: 30秒"}
execute if score time sys matches 8700 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~

#7min
execute if score time sys matches 9099 as @e[type=armor_stand, tag=border_center] run summon armor_stand ~ ~ ~ {Tags: [border_nextcenter], NoGravity: true, Invisible: true}
execute if score time sys matches 9099 as @e[type=armor_stand, tag=border_center] at @s run spreadplayers ~ ~ 40 50 false @e[type=armor_stand, tag=border_nextcenter]

execute if score time sys matches 9100 store result score border_nextx sys run data get entity @e[type=armor_stand, tag=border_nextcenter, limit=1] Pos[0]
execute if score time sys matches 9100 store result score border_nextz sys run data get entity @e[type=armor_stand, tag=border_nextcenter, limit=1] Pos[2]

execute if score time sys matches 9100 run tellraw @a [{"text": "§c§l最終安地の中心は[ §6"}, {"score": {"name": "border_nextx", "objective": "sys"}}, {"text": "§f, §6"}, {"score": {"name": "border_nextz", "objective": "sys"}}, {"text": " §c§l]に決定されました\n10秒後に移動を開始します"}]
execute if score time sys matches 9100 as @e[type=armor_stand, tag=border_center] at @s run tp @e[type=armor_stand, tag=border_center] ~ ~ ~ facing entity @e[type=armor_stand, tag=border_nextcenter, limit=1]
execute if score time sys matches 9100 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~

#7min7sec-9sec
execute if score time sys matches 9240 as @a at @s run playsound ui.button.click player @s ~ ~ ~
execute if score time sys matches 9260 as @a at @s run playsound ui.button.click player @s ~ ~ ~
execute if score time sys matches 9280 as @a at @s run playsound ui.button.click player @s ~ ~ ~

#7min10sec
execute if score time sys matches 9300 run title @a subtitle {"text": "§7§l移動時間: 45秒"}
execute if score time sys matches 9300 run title @a title {"text": "§c§l安地の移動が開始されました"}
execute if score time sys matches 9300..9320 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 1 2 1

execute if score time sys matches 9300 if score border_last sys matches 0 run worldborder set 5 45
execute if score time sys matches 9300 if score border_last sys matches 5 run worldborder set 5 45
execute if score time sys matches 9300 if score border_last sys matches 10 run worldborder set 10 45

#7min10sec-7min55sec
execute if score time sys matches 9300..10200 as @e[type=armor_stand, tag=border_center] at @s if entity @e[type=armor_stand, tag=border_nextcenter] run tp ^ ^ ^0.0625
execute if score time sys matches 9300..10200 as @e[type=armor_stand, tag=border_center] at @s if entity @e[type=armor_stand, tag=border_nextcenter] run worldborder center ~ ~

execute if score time sys matches 9300..10200 as @e[type=armor_stand, tag=border_center] at @s run particle happy_villager ~ ~ ~ 0 50 0 0 25 force

execute if score time sys matches 9300..10200 as @e[type=armor_stand, tag=border_center] at @s if entity @e[type=armor_stand, tag=border_nextcenter, distance=..1] run kill @e[type=armor_stand, tag=border_nextcenter]
execute if score time sys matches 10200 run kill @e[type=armor_stand, tag=border_nextcenter]

#7min55sec
execute if score time sys matches 10200 run tellraw @a {"text": "§c安地の移動が終了しました\n試合終了まで: 8分15秒"}
execute if score time sys matches 10200 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~

execute if score time sys matches 10200 if score border_last sys matches 0 run tellraw @a {"text": "§c安地がなくなりました\nダメージを一定間隔で受けます"}
execute if score time sys matches 10200.. if score border_last sys matches 0 if score actionbar sys matches 39 as @a[tag=play] run damage @s 3 magic
execute if score time sys matches 10200.. if score border_last sys matches 0 if score actionbar sys matches 79 as @a[tag=play] run damage @s 3 magic

#ゲーム終了
execute if score start sys matches 1 if score online sys matches 2.. if score alive sys matches 1 run scoreboard players set start sys 2
execute if score start sys matches 2 run scoreboard players add end sys 1

execute if score end sys matches 1 run kill @e[type=armor_stand, tag=border_center]
execute if score end sys matches 1 run kill @e[type=armor_stand, tag=border_nextcenter]
execute if score end sys matches 1 run scoreboard players set time sys -10

execute if score end sys matches 1 run effect give @a[tag=play] resistance infinite 100 true
execute if score end sys matches 1 run effect give @a[tag=play] regeneration infinite 100 true
execute if score end sys matches 1 run effect give @a[tag=play] saturation infinite 100 true

execute if score end sys matches 1 run title @a title [{"text": "§c試合終了"}]
execute if score end sys matches 1 as @a at @s run playsound entity.ender_dragon.death player @s ~ ~ ~ 0.5 1 0.5

execute if score end sys matches 80 run title @a title [{"text": "勝者: §6"}, {"selector": "@a[tag=play, nbt={playerGameType: 0}]"}]
execute if score end sys matches 80 as @a[tag=play, nbt={playerGameType: 0}] at @s run playsound entity.player.levelup player @s 0.75 1 0.75
execute if score end sys matches 80 as @a[tag=play, nbt={playerGameType: 0}] run scoreboard players add win sys 1

execute if score end sys matches 120 run function opozw:load

#死亡時
gamemode spectator @a[scores={death=1}]
title @a[scores={death=1}] subtitle {"text": "§7§l試合を観戦しよう"}
title @a[scores={death=1}] title {"text": "§c§l死んでしまった"}

scoreboard players reset @a[scores={death=1}] death