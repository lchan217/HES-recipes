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
		recipe.ingredients.build
		recipe.steps.build
		render :new, locals: { recipe: recipe, errors: recipe.errors.full_messages }
	end

	# POST /recipes
	def create
		recipe = Recipe.new(recipe_params)
		if recipe.save
			redirect_to recipe_path(recipe)
		else
			render :new, locals: { recipe: recipe }
		end
	end

	# GET /recipes/:id/edit
	def edit
        recipe = Recipe.find(params[:id])
        render :edit, locals: { recipe: recipe }
	end

	# PUT /recipes/:id
	def update
        recipe = Recipe.find(params[:id])
		if recipe.update(recipe_params)
			redirect_to recipe_path(recipe)
		else
			render :edit, locals: { recipe: recipe, errors: recipe.errors.full_messages }
		end
	end

	# DELETE /recipes/:id
	def destroy
        Recipe.find(params[:id]).destroy
        redirect_to recipes_path
	end

	private
	def recipe_params
		params.require(:recipe).permit(:title, :prep_time, :cook_time, :servings, :origin, ingredients_attributes: [:id, :item, :_destroy], steps_attributes: [:id, :sequence, :description, :_destroy])
	end
end
