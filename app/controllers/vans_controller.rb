class VansController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_van, only: %i[show edit update destroy]

  def index

    if params[:new_start_date].present? && params[:new_end_date].present?
      @vans_all = Van.all
      @bookings_start = Booking.bookings_start_date( params[:new_start_date]).bookings_end_date(params[:new_start_date])
      @bookings_end = Booking.bookings_start_date(params[:new_end_date]).bookings_end_date(params[:new_end_date])
      @bookings = @bookings_start.or(@bookings_end)
      @array = []
      @bookings.each do |booking|
        @array << booking.van.id
      end
      @vans_dates = @vans_all.where.not(id: @array)
    else
      @vans_dates = Van.all
    end

    if params[:new_location].present?
      sql_query = <<~SQL
      vans.location ILIKE :search_location
      SQL
      @vans_locations = @vans_dates.where(sql_query, search_location: "%#{params[:new_location]}%")
    else
      @vans_locations = @vans_dates
    end

    if params[:new_seats].present?
      @vans = @vans_locations.where("seats >= ?", params[:new_seats])
    else
      @vans = @vans_locations
    end
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
