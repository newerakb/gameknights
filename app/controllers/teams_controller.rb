class TeamsController < ApplicationController
  def new
    @team = Team.new
  end
  
  def show
    @team = Team.find(params[:id])
  end
  
  def create
    @team = Team.new(team_params)
    if @team.save
        flash[:success] = "Team created successfully"
        redirect_to @team
    else
        render 'new'
    end
  end
  
  private

    def team_params
      params.require(:team).permit(:name)
    end
end
