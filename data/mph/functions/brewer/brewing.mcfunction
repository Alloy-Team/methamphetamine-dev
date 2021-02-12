# clearing test
#execute as @s at @s if data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:coal",Count:1b}]} run data merge block ~ ~ ~ {BurnTime: 2000s}
#note: seha told me to make

#ejecting false fuel
execute if data block ~ ~ ~ {BurnTime: 0s} unless block ~ ~ ~ minecraft:furnace{Items:[{id:"minecraft:suspicious_stew",Count:1b,tag:{ac_gas:1b}}]} unless block ~ ~ ~ minecraft:furnace{Items:[]} run function mph:brewer/dispense

#moving the gas into fuel section
execute if block ~ ~ ~ minecraft:furnace{Items:[{Slot:0b,id:"minecraft:suspicious_stew",Count:1b,tag:{ac_gas:1b}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 1

#heating the brewer with gas
execute if block ~ ~ ~ minecraft:furnace{Items:[{Slot:1b,id:"minecraft:suspicious_stew",Count:1b,tag:{ac_gas:1b}}]} if block ~ ~ ~ minecraft:furnace{Items:[{Slot:0b,id:"minecraft:rabbit",Count:1b,tag:{Tags:["ac_placeholder_crafting_item"]}}]} run data merge block ~ ~ ~ {BurnTime: 1000s}


###FINISH COOKING###
execute if data block ~ ~ ~ {CookTime:190s} run function mph:brewer/product


#exploding if the brewer is hot
execute if data block ~ ~ ~ {BurnTime: 999s} unless block ~ ~ ~ minecraft:furnace{Items:[{Slot:0b,id:"minecraft:rabbit",Count:1b,tag:{Tags:["ac_placeholder_crafting_item"]}}]} unless block ~ ~ ~ minecraft:furnace{Items:[{Slot:2b}]} at @s run function mph:brewer/explosion
execute if data block ~ ~ ~ {BurnTime: 999s} unless block ~ ~ ~ minecraft:furnace{Items:[{Slot:1b,id:"minecraft:suspicious_stew",Count:1b,tag:{ac_gas:1b}}]} unless block ~ ~ ~ minecraft:furnace{Items:[{Slot:2b}]} at @s run function mph:brewer/explosion





####SAMPLE COMMANDS####
#data merge block ~ ~ ~ {Items: [{Slot:1b,id:"minecraft:stick",Count:1b}]}
#data merge block ~ ~ ~ {BurnTime: 1000s}
#execute if data block ~ ~ ~ {BurnTime: 999s}


###Gas Command###
#give @p suspicious_stew{Tags:["ac_fuel_gas"],display:{Name:'{"text":"Gas","italic":false}',Lore:['{"text":"Don\'t eat it, or you will explode!"}']},HideFlags:127,Effects:[{EffectId:2b,EffectDuration:200},{EffectId:7b,EffectDuration:200},{EffectId:9b,EffectDuration:10},{EffectId:12b,EffectDuration:200},{EffectId:15b,EffectDuration:200},{EffectId:17b,EffectDuration:200},{EffectId:18b,EffectDuration:200},{EffectId:19b,EffectDuration:200},{EffectId:20b,EffectDuration:200},{EffectId:24b,EffectDuration:200}]} 1
###Rabbit Command###
#give @p minecraft:rabbit{Tags:["ac_placeholder_crafting_item"]}
