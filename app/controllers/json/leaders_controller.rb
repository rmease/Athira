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
      params.require(:leader).permit(:name, :description, :rich_description, :rich_long_description, :title, :headshot_url, :headshot)
  end
end
