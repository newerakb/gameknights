class Session < ActiveRecord::Base
    belongs_to :team
    belongs_to :game
    has_many :players, through :player_sessions
end
