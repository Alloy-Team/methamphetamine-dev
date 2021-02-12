#setblock ~ ~1 ~ minecraft:chest{CustomName:'{"text":"DispenserChest"}'}
#data modify block ~ ~1 ~ Items set from block ~ ~ ~ Items
#setblock ~ ~1 ~ air destroy
#data merge block ~ ~ ~ {Items:[]}
#kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:chest",Count:1b,tag:{display:{Name:'{"text":"DispenserChest"}'}}}}]

####THE ABOVE IS SAMPLE CODE IT MIGHT BE USEFUL SO DON'T DELETE IT####


setblock ~ ~ ~ air destroy
setblock ~ ~ ~ furnace[facing=north]{CustomName:'{"text":"Brewer"}'}
kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:furnace",Count:1b,tag:{display:{Name:'{"text":"Brewer"}'}}}}]