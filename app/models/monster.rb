class Monster < ActiveRecord::Base
    has_many :rooms
    has_many :dungeons, through: :rooms

    def self.select_dungeon (dungeon_name)
        if Dungeon.all.find_by(name: dungeon_name)
            Dungeon.all.find_by(name: dungeon_name)
        else
            "There is no cave under the name #{dungeon_name}"
        end
    end
#Monster.select_dungeon(name:"goblin_cave")
    def self.biggest_room(dungeon_name)
        if !select_dungeon(dungeon_name).is_a?Dungeon
            "you have no selected a valid dungeon name"
        else
        r=self.select_dungeon(dungeon_name)
        r.rooms.max_by{|room|room.size}
        end
    end

    def self.has_monster?(dungeon_name)
        d=select_dungeon(dungeon_name)
        if d.is_a?String
            d 
        elsif d.rooms.select{|x|x.monster_id!=nil}.empty?
            d= false
        else 
            d= true
        end 
        d
    end

    def self.monster_setter(dungeon_name)
        if self.biggest_room(dungeon_name).is_a?String
            self.biggest_room(dungeon_name)
        elsif self.has_monster?(dungeon_name)
            "There is already monster in this dungeon. Please do not use the monster_setter method"
        else
        x=self.biggest_room(dungeon_name)
        m=Monster.create(name:"hobgoblin",hp:30,ac:0,trait:"very_unpleasant")
        m.rooms<<x
        end
    end

    def which_room
        Room.all.select{|room|room.monster_id==self.id}
    end

    def which_dungeon
        box=[]
        Dungeon.all.each do |d|
            self.which_room.each {|r| box<< d if r.dungeon_id==d.id}
        end
        box
    end

    def where_at?
        "#{self.name} is at room #{self.which_room[0].name} in #{self.which_dungeon[0].name}."
    end

end