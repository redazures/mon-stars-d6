class Player < ActiveRecord::Base
    has_many :rooms
    has_many :dungeons, through: :rooms
end