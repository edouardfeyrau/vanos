class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @vans = Van.all.sample(3)
  end

  def dashboard
    @user = current_user
    @vans = Van.all.where(user: @user)
    @bookings = Booking.all.where(user: @user)
  end

  def accept_reservation
    @booking = Booking.find(params[:booking_id])
    @booking.status = "Accepted"
    if @booking.save
      redirect_to dashboard_path
    else
      flash[:alert] = "Une erreur est survenue"
    end
  end

  def cancel_reservation
    @booking = Booking.find(params[:booking_id])
    @booking.status = "Canceled"
    if @booking.save
      redirect_to dashboard_path
    else
      flash[:alert] = "Une erreur est survenue"
    end
  end

end
