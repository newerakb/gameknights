class Game < ActiveRecord::Base
    has_many :sessions
    has_many :mechanics, through: :game_mechanics
    has_many :teams, through: :team_games
end
