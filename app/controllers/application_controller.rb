class ApplicationController < ActionController::Base
  protect_from_forgery
  respond_to :html, :json

  protected
  def not_authenticated
    redirect_to root_path, :alert => "Please login first."
  end

end
