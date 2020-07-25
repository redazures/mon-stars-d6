class Dungeon < ActiveRecord::Base
    has_many :areas
    has_many :monsters, through: :rooms
end