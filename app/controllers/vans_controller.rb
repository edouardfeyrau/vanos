class VansController < ApplicationController
  before_action :set_van, only: %i[show edit update]

  def index
    @vans = Van.all
  end

  def show
  end

  def edit
  end

  def update
    @van.update(van_params)
    redirect_to van_path(@van)
  end

  private

  def van_params
    params.require(:van).permit(:title, :description, :seats, :location, :price_per_day, :photo)
  end

  def set_van
    @van = Van.find(params[:id])
  end
end
