class VehiclesController < ApplicationController
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


  def show
      @vehicle = Vehicle.find(params[:id])
  end


  private

  def vehicle_params
    params.require(:vehicle).permit(:brand, :model, :year, :kind, :plate)
  end
end
