class SessionsController < ApplicationController
  respond_to :html

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:user][:email],params[:user][:password])
      flash[:notice] = 'Logged in!'
      respond_with @user, :location => root_path
    else
      @user = User.new(params[:user])
      flash.now[:alert] = "Login failed."
      respond_with @user do |format|
        format.html { render :action => 'new' }
      end
    end
  end

  def destroy
    logout
    redirect_to root_path, :notice => 'Logged out!'
  end

end
