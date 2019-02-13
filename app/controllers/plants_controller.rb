class PlantsController < ApplicationController

  def create
    @park = Park.find(params[:park_id])
    @plant = Plant.new(plant_params)
    @plant.park = @park
    if @plant.save
      redirect_to park_path(@park)
    else
      render "parks/show"
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to park_path(@plant.park)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
