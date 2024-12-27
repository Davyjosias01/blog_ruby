class VehiclesController < ApplicationController
  def index
      @vehicles = Vehicle.all.order(year: :desc) # para crescente é: ":asc"
  end

  def new
    @vehicles = Vehicle.new
  end
end
