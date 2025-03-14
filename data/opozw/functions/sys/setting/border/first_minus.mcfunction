execute if score border_size sys matches 100 run tellraw @s {"text": "§c§l初期ボーダーの最小値は §6§l100 §c§lです。これ以上小さくできません。"}
scoreboard players remove border_size sys 50
execute if score border_size sys matches 100..300 run tellraw @s [{"text": "§lボーダーのサイズを "}, {"score": {"name": "border_size", "objective": "sys"}, "color": "gold"}, {"text": " §f§lに設定しました"}]
execute if score border_size sys matches ..99 run scoreboard players set border_size sys 100

playsound block.note_block.pling player @s ~ ~ ~ 0.5 1 0.5