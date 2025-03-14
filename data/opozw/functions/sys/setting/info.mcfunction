tellraw @s {"text": "§l- §d§l設定確認 §f§l-"}
tellraw @s [{"text": "§b§l初期ボーダーの距離: "}, {"score": {"name": "border_size", "objective": "sys"}, "color": "gold"}]
tellraw @s [{"text": "§b§l最終ボーダー範囲: "}, {"score": {"name": "border_last", "objective": "sys"}, "color": "gold"}]
tellraw @s [""]

execute if score gm sys matches 0 run tellraw @s {"text": "§b§lゲームモード: §6サバイバル"}
execute if score gm sys matches 1 run tellraw @s {"text": "§b§lゲームモード: §6アドベンチャー"}

execute if score eq sys matches 0 run tellraw @s {"text": "§b§l初期装備: §6I/D/OB"}
execute if score eq sys matches 1 run tellraw @s {"text": "§b§l初期装備: §6N/I/DR"}

playsound block.note_block.pling player @s ~ ~ ~ 0.5 1 0.5
