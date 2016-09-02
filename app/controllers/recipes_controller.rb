class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    
  end

  def create
    @recipe = Recipe.create(title: params[:title],
                            chef: params[:chef],
                            prep_time: params[:prep_time],
                            ingredients: params[:ingredients],
                            directions: params[:directions])
    render 'show.html.erb'                                                        
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(title: params[:title],
                   prep_time: params[:prep_time],
                   chef: params[:chef],
                   ingredients: params[:ingredients],   
                   directions: params[:directions])   
    
    render 'show.html.erb'
  end
end
