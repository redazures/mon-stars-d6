class Dungeon < ActiveRecord::Base
    has_many :rooms
    has_many :monsters, through: :rooms

    # def monster_setter
    #     Monster.monster_setter(self.name)
    # end

    # def self.all_monster
    #     Dungeon.all.each{|d|d.monster_setter}
    # end

    # def self.all_empty_rooms
    #     Room.all.select{|r|r.monster_id==nil}
    # end

    # def self.all_creep
    #     self.all_empty_rooms.each do |r|
    #         m=Monster.create(name:"goblin",hp:5,ac:0,trait:"unpleasant")
    #         m.rooms<<r
    #     end
    # end

end