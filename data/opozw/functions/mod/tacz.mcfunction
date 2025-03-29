effect give @a[tag=play] resistance infinite 1 true
effect give @a[tag=play] health_boost infinite 9 true

give @a tacz:modern_kinetic_gun{GunId: "tacz:glock_17", GunCurrentAmmoCount: 17}
give @a tacz:modern_kinetic_gun{GunId: "tacz:ak47", GunCurrentAmmoCount: 31}
give @a tacz:modern_kinetic_gun{GunId: "tacz:m870", GunCurrentAmmoCount: 6}

give @a tacz:ammo{AmmoId: "tacz:9mm"} 136
give @a tacz:ammo{AmmoId: "tacz:762x39"} 93
give @a tacz:ammo{AmmoId: "tacz:12g"} 30

#give @a[limit=2] tacz:modern_kinetic_gun{GunId: "tacz:ak47", GunCurrentAmmoCount: 31}
#give @a[limit=2, nbt=!{Inventory: [{id: "tacz:modern_kinetic_gun", tag: {GunId: "tacz:ak47"}}]}] tacz:modern_kinetic_gun{GunId: "tacz:m870", GunCurrentAmmoCount: 31}
