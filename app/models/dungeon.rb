class Dungeon < ActiveRecord::Base
    has_many :rooms
    has_many :monsters, through: :rooms
end