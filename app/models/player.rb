class Player < ActiveRecord::Base
    belongs_to :team
    belongs_to :user
    has_many :sessions, through :player_sessions
end
