class Json::ServicesController < ApplicationController
  def index
    @services = Service.all
    render 'json/services/index'
end

def show
    @service = Service.find(params[:id])
    render 'json/services/show'
end

private
  def service_params
      params.require(:service).permit(:name, :short_description, :rich_description, :icon)
  end
end
