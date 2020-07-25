class Monster < ActiveRecord::Base
    has_many :rooms
    has_many :dungeon, through: :rooms
end