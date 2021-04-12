class RecipesController < ApplicationController
  # GET /recipes
  def index
      recipes = Recipe.all
      render :index, locals: { recipes: recipes }
  end

  # GET /recipes/:id
  def show
      recipe =  Recipe.find(params[:id])
	  ingredients = recipe.ingredients
	  steps = recipe.steps.sort_by(&:sequence)
	
      render :show, locals: { recipe: recipe, ingredients: ingredients, steps: steps }
  end

  # GET /recipes/new
  def new
	  recipe = Recipe.new
	  render :new, locals: { recipe: recipe }
  end

  # POST /recipes
  def create
  end

  # GET /recipes/:id/edit
  def edit
  end

  # PUT /recipes/:id
  def update
  end

  # DELETE /recipes/:id
  def destroy
  end
end
