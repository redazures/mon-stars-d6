class Room < ActiveRecord::Base
    belongs_to :dungeon
    belongs_to :player
    has_many :monster
end