execute if entity @s[nbt={OnGround:false}] run title @s title {"text": "§c地面に立って実行してください"}

execute if entity @s[nbt={OnGround:true}] run kill @e[type=armor_stand, tag=border_center]

execute if entity @s[nbt={OnGround:true}] store result score border_playerx sys run data get entity @s Pos[0]
execute if entity @s[nbt={OnGround:true}] store result score border_playerz sys run data get entity @s Pos[2]

execute if entity @s[nbt={OnGround:true}] run scoreboard players operation border_playerx sys *= 10 sys
execute if entity @s[nbt={OnGround:true}] run scoreboard players operation border_playerz sys *= 10 sys

execute if entity @s[nbt={OnGround:true}] run scoreboard players operation border_playerx sys += 5 sys
execute if entity @s[nbt={OnGround:true}] run scoreboard players operation border_playerz sys += 5 sys

execute if entity @s[nbt={OnGround:true}] run summon armor_stand ~ 50 ~ {Tags: [border_center], Invisible: true, NoGravity: true}

execute if entity @s[nbt={OnGround:true}] as @e[type=armor_stand, tag=border_center] store result entity @s Pos[0] double 0.1 run scoreboard players get border_playerx sys
execute if entity @s[nbt={OnGround:true}] as @e[type=armor_stand, tag=border_center] store result entity @s Pos[2] double 0.1 run scoreboard players get border_playerz sys

execute if entity @s[nbt={OnGround:true}] as @e[type=armor_stand, tag=border_center] at @s run worldborder center ~ ~
execute if entity @s[nbt={OnGround:true}] run worldborder set 100
execute if entity @s[nbt={OnGround:true}] run tp @a @s

execute if entity @s[nbt={OnGround:true}] store result score border_x sys run data get entity @s Pos[0]
execute if entity @s[nbt={OnGround:true}] store result score border_z sys run data get entity @s Pos[2]

execute if entity @s[nbt={OnGround:true}] run tellraw @s [{"text": "§lボーダーの中心を§b§l[ §f"}, {"score": {"name": "border_x", "objective": "sys"}}, {"text": ", §6"}, {"score": {"name": "border_z", "objective": "sys"}}, {"text": "§b§l ]§f§lに設定しました"}]