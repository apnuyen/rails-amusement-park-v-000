class RidesController < ApplicationController
  def new
    @ride = Ride.create(user_id: params[:user_id], attraction_id: params[:attraction_id])
    flash[:alert] = @ride.take_ride
    redirect_to usre_path(@ride.user)
  end
end 
