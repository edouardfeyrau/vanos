class VansController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_van, only: %i[show edit update]

  def index
    @vans = Van.all
    authorize @vans
  end

  def show
    authorize @van
  end

  def edit
    authorize @van
  end

  def update
    @van.update(van_params)
    authorize @van
    redirect_to van_path(@van)
  end

  private

  def van_params
    params.require(:van).permit(:title, :description, :seats, :location, :price_per_day)
  end

  def set_van
    @van = Van.find(params[:id])
  end
end
