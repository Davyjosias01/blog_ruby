class VehiclesController < ApplicationController
  before_action :get_item, only: [ :show ]


  def index
    @vehicles = Vehicle.all.order(year: :desc) # para crescente é: ":asc"
  end


  def new
    @vehicles = Vehicle.new
  end


  def create
    @vehicle = Vehicle.new(vehicle_params)

    if @vehicle.save
      redirect_to vehicle_path(@vehicle)
    else
      render :new
    end
  end


  @vehicles = Vehicle.all.order(year: :desc) # para crescente é: ":asc"
  def vehicle_params
    params.require(:vehicle).permit(:brand, :model, :year, :kind, :plate)
  end


  def get_item
    @vehicle = Vehicle.find(params[:id]) rescue Vehicle.new
  end
end
