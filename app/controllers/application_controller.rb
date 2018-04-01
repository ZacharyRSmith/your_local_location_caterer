# This project's main controller.
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    @locations = Location.paginate(page: params[:page])
    render 'layouts/application'
  end
end
