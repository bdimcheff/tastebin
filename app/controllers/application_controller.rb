class ApplicationController < ActionController::Base
  protect_from_forgery
  respond_to :html, :json

  protected
  def not_authenticated
    redirect_to login_path, :alert => "Please log in first."
  end

end
