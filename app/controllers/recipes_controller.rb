class RecipesController < ApplicationController
  respond_to :html, :json

  def index
    @recipes = Recipe.recent_first.limit(10)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    @recipe.user = current_user

    flash[:notice] = "Recipe was successfully created" if @recipe.save

    respond_with @recipe
  end

  def show
    @recipe = Recipe.find(params[:id])

    respond_with @recipe
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    flash[:notice] = "Recipe was updated successfully" if @recipe.update_attributes(params[:recipe])

    respond_with @recipe
  end
end
