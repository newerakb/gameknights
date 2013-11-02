class Mechanic < ActiveRecord::Base
    has_many :games, through :game_mechanics
end
