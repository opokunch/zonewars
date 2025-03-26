tellraw @s {"text": "§l- §d§l設定確認 §f§l-"}
execute if entity @e[type=armor_stand, tag=border_center] run tellraw @s {"text": "§b§lボーダー中心地設定: §a完了"}
execute unless entity @e[type=armor_stand, tag=border_center] run tellraw @s {"text": "§b§lボーダー中心地設定: §c未完了"}
execute if entity @e[type=armor_stand, tag=border_center] run tellraw @a [{"text": "§b§l初期ボーダー座標: §6§l[ "}, {"score": {"name": "border_x", "objective": "sys"}, "color": "white"}, {"text": ", "}, {"score": {"name": "border_z", "objective": "sys"}}, {"text": " §6§l]"}]
execute unless entity @e[type=armor_stand, tag=border_center] run tellraw @a [{"text": "§b§l初期ボーダー座標: §6§l[ §r§f-, - §6§l]"}]
tellraw @s [{"text": "§b§l初期ボーダーの距離: "}, {"score": {"name": "border_size", "objective": "sys"}, "color": "gold"}]
tellraw @s [{"text": "§b§l最終ボーダー範囲: "}, {"score": {"name": "border_last", "objective": "sys"}, "color": "gold"}]
tellraw @s [""]

execute if score gm sys matches 0 run tellraw @s {"text": "§b§lゲームモード: §6サバイバル"}
execute if score gm sys matches 1 run tellraw @s {"text": "§b§lゲームモード: §6アドベンチャー"}

execute if score eq sys matches 0 run tellraw @s {"text": "§b§l初期装備: §6I/D/OB"}
execute if score eq sys matches 1 run tellraw @s {"text": "§b§l初期装備: §6N/I/DR"}

execute if score mob sys matches 0 run tellraw @s {"text": "§b§lモブのスポーン: §a有効"}
execute if score mob sys matches 1 run tellraw @s {"text": "§b§lモブのスポーン: §c無効"}

playsound block.note_block.pling player @s ~ ~ ~ 0.5 1 0.5
