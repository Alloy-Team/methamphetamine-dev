#summons armor stand that checks for content inside the table inside the temporary armor armor stand
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["c_table"]}

#sets table's rotation
data modify entity @e[tag=brewer,sort=nearest,limit=1] Rotation set from entity @s Rotation

#places custom dispenser
setblock ~ ~ ~ dispenser[facing=up,triggered=false]{CustomName:'{"bold":true,"italic":false,"color":"blue","text":"Chemistry Table"}',Items:[]}

#kills temporary armor stand leaving the other one
kill @s

#neo-shop
playsound block.stone.place master @a[distance=..5]
