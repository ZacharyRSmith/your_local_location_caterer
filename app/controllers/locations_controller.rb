class LocationsController < ApplicationController
  # Make it easy to use POSTMAN:
  skip_before_action :verify_authenticity_token if !Rails.env.production?

  def create
    location = Location.new(location_params)
    if location.save
      render json: location
    else
      render json: location.errors, status: :bad_request
    end
  end

  private

    def location_params
      params.require(:location).permit(:formatted_address, :latitude, :longitude)
    end
end
