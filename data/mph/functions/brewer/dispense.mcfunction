setblock ~ ~1 ~ minecraft:chest{CustomName:'{"text":"DispenserChest"}'}
data modify block ~ ~1 ~ Items set from block ~ ~ ~ Items
setblock ~ ~1 ~ air destroy
data merge block ~ ~ ~ {Items:[]}
kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:chest",Count:1b,tag:{display:{Name:'{"text":"DispenserChest"}'}}}}]