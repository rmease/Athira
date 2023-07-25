class Json::LeadersController < ApplicationController
  def index
    @leaders = Leader.all
    render 'json/leaders/index'
  end

  def show
      @leader = Leader.find(params[:id])
      render 'json/leaders/show'
  end

private
  def leader_params
      params.require(:leader).permit(:name, :rich_description, :title, :headshot)
  end
end
