# clearing test
execute as @s at @s if data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:coal",Count:1b}]} run data merge block ~ ~ ~ {BurnTime: 2000s}
#note: seha told me to make 

#ejecting false fuel
execute unless block ~ ~ ~ minecraft:furnace{Items:[{Slot:1b,id:"minecraft:coal",Count:1b}]} unless block ~ ~ ~ minecraft:furnace{Items:[]} run function mph:brewer/dispense

####SAMPLE COMMANDS####
#data merge block ~ ~ ~ {Items: [{Slot:1b,id:"minecraft:stick",Count:1b}]}
#data merge block ~ ~ ~ {BurnTime: 1000s}