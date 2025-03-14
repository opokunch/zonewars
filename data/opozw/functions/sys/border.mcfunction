#ぱーてぃ
execute as @e[type=armor_stand, tag=border_center] at @s if score start sys matches 0 run particle happy_villager ~ ~ ~ 0 50 0 0 25 normal

execute as @e[type=armor_stand, tag=border_nextcenter] at @s run particle soul_fire_flame ~ ~ ~ 0 50 0 0 25 force

execute store result score border sys run worldborder get

execute if score border sys matches 100..300 if score border sys < border_size sys if score start sys matches 0 run worldborder add 50
execute if score border sys matches 100..300 if score border sys > border_size sys if score start sys matches 0 run worldborder add -50

execute as @e[type=armor_stand, tag=border_nextcenter] at @s run tp @s ~ 50 ~