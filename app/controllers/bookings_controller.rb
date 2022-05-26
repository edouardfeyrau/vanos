class BookingsController < ApplicationController
  before_action :set_van, only: %i[new create]

  def create
    @booking = Booking.new(booking_params)
    @booking.van = @van
    @booking.user = current_user
    authorize @booking
    @booking.transaction_amount = ((@booking.end_date - @booking.start_date).to_i / 3600 / 24).ceil * @van.price_per_day
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_van
    @van = Van.find(params[:van_id])
  end
end
