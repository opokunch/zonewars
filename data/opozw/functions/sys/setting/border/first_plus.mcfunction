execute if score border_size sys matches 300 run tellraw @s {"text": "§c§l初期ボーダーの最大値は §6§l300 §c§lです。これ以上大きくできません。"}
scoreboard players add border_size sys 50
execute if score border_size sys matches 100..300 run tellraw @s [{"text": "§lボーダーのサイズを "}, {"score": {"name": "border_size", "objective": "sys"}, "color": "gold"}, {"text": " §f§lに設定しました"}]
execute if score border_size sys matches 301.. run scoreboard players set border_size sys 300