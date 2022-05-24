class BookingsController < ApplicationController
  before_action :set_van, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.van = @van
    @booking.user = current_user
    @booking.transaction_amount = (@booking.end_date - @booking.start_date).to_i / 3600 / 24 * @van.price_per_day
    if @booking.save
      redirect_to van_path(@van)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_van
    @van = Van.find(params[:van_id])
  end
end
