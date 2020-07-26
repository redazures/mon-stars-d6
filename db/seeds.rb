g1=Dungeon.create(name:"goblin_cave",pressure:0)
r1= Room.create(name:"entrance",size:9)
r2= Room.create(name:"corridor_to_north",size:3)
r3= Room.create(name:"central_room",size:50)
r4 =Room.create(name:"treasure_room",size:3)
g1.rooms<<r1
g1.rooms<<r2
g1.rooms<<r3
g1.rooms<<r4


g2=Dungeon.create(name:"treasure_cave",pressure:5)
r5= Room.create(name:"entrance",size:9)
r6= Room.create(name:"corridor_to_north",size:3)
r7= Room.create(name:"central_room",size:50)
r8 =Room.create(name:"treasure_room",size:10)
r9 =Room.create(name:"treasure_room",size:3)
g2.rooms<<r5
g2.rooms<<r6
g2.rooms<<r7
g2.rooms<<r8
g2.rooms<<r9

d3=Dungeon.create(name:"sample_cave",pressure:5)
r10= Room.create(name:"sample_room",size:10)
d3.rooms<<r10

d4=Dungeon.create(name:"sample_cave2",pressure:5)
r11= Room.create(name:"sample_room2",size:10)
d4.rooms<<r10

# d1=Dungeon.all[0]
# d2=Dungeon.all[0]