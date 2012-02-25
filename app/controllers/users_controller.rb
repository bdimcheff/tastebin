class UsersController < ApplicationController
  before_filter :require_login, :except => [:new, :create]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      auto_login(@user)
      flash[:notice] = 'Your account has been successfully created.'
      respond_with @user, :location => root_path
    else
      respond_with @user
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = 'Your account has been successfully updated.'
      respond_with @user, :location => root_path
    else
      respond_with @user, :location => edit_user_path
    end
  end

end
