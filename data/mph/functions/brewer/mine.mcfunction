#kills the dropped furnace item
kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:furnace",Count:1b,tag:{display:{Name:'{"text":"Brewer"}'}}}}]
#kills armor stand
kill @s
#summons pickable placable furnace spawning armor stand
summon item ~ ~ ~ {NoGravity:0b,PickupDelay:11,Motion:[0.0,0.35,0.0],Tags:["brewer"],Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"Brewer","italic":false}'},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["b_place"]}}}}
