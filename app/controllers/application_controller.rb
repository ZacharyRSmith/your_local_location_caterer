# This project's main controller.
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    @locations = Location.paginate(page: params[:page])
    @title = "Your Local Location Caterer"
    render 'layouts/application'
  end
end
