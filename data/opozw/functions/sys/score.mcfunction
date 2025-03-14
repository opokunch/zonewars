scoreboard players set online sys 0
execute as @a run scoreboard players add online sys 1

scoreboard players set alive sys 0
execute as @a[nbt={playerGameType: 0}, tag=play] run scoreboard players add alive sys 1