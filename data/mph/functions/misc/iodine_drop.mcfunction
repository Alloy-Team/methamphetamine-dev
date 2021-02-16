# give @p nether_brick{display:{Name:'{"text":"Iodine","color":"gray","italic":false}'},CustomModelData:240002,iodine:1b} 1
execute at @e[type=item,limit=1,sort=nearest,distance=..6,nbt={Item:{id:"minecraft:iron_ore",Count:1b}}] run summon item ~ ~ ~ {PickupDelay:5,Item:{id:"minecraft:nether_brick",Count:1b,tag:{display:{Name:'{"text":"Iodine","color":"gray","italic":false}'},CustomModelData:240002,iodine:1b}}}
kill @e[type=item,limit=1,sort=nearest,distance=..6,nbt={Item:{id:"minecraft:iron_ore",Count:1b}}]
