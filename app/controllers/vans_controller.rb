class VansController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_van, only: %i[show edit update destroy]

  def index
    @vans = Van.all
    authorize @vans
  end

  def show
    @booking = Booking.new
    authorize @booking
    authorize @van
  end

  def new
    @van = Van.new
    authorize @van
  end

  def create
    @van = Van.new(van_params)
    @van.user = current_user
    authorize @van
    @van.save
    redirect_to van_path(@van)
  end

  def edit
    authorize @van
  end

  def update
    @van.update(van_params)
    authorize @van
    redirect_to van_path(@van)
  end

  def destroy
    authorize @van
    @van.destroy
    redirect_to vans_path
  end

  private

  def van_params
    params.require(:van).permit(:title, :description, :seats, :location, :price_per_day, :photo)
  end

  def set_van
    @van = Van.find(params[:id])
  end
end
