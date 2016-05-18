class VehiclesController < ApplicationController
	before_action :find_vehicle, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
  def index
  	@vehicles = Vehicle.all
  end

  def show
  end

  def new
  	@vehicle = current_user.vehicles.build
  end

  def edit
  end

  def create
  	@vehicle = current_user.vehicles.build(vehicle_params)
  	if current_user.vehicles.count < 2
	  	if @vehicle.save
	  		redirect_to @vehicle
	  	else
	  		render 'new'
	  	end
  	else
  		flash.now[:alert] = 'You can only register two vehicles.'
  		render 'new'
  	end
  end

  def update
  	if @vehicle.update(vehicle_params)
      redirect_to @vehicle
    else
      render 'edit'
    end
  end

  def destroy
  	@vehicle.destroy(params[:id])
    redirect_to @vehicle
  end
  
  private

  def find_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:license, :colour, :make, :model, :year, :status)
  end
end
