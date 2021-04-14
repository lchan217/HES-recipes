# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

recipe = Recipe.new(:title=>'Grilled Hamburgers',:prep_time=>15,:cook_time=>10,:servings=>4,:origin=>'Health Enhancement Systems')

recipe.ingredients.new([
  {:item=>'1 lb. ground beef', :recipe_id=>1},
  {:item=>'1/2 tsp salt', :recipe_id=>1},
  {:item=>'1/2 tsp pepper', :recipe_id=>1},
  {:item=>'2 Tbsp Lea & Perrins Worcestershire sauce', :recipe_id=>1},
  {:item=>'1/4 tsp onion powder', :recipe_id=>1},
  {:item=>'1/4 tsp garlic powder', :recipe_id=>1}
])

recipe.steps.new([
  {:description=>'Prepare charcoal grill for direct heat, or preheat gas grill.',:sequence=>1, :recipe_id=>1},
  {:description=>'Combine all ingredients and form into four 1/4 pound patties',:sequence=>2, :recipe_id=>1},
  {:description=>'Place each patty on the grill.  After 2 minutes, slide a spatula under each patty and rotate 1/4 turn to sear a cross-hatch pattern.',:sequence=>3, :recipe_id=>1},
  {:description=>'After 4 additional minutes (6 minutes total), flip the patties and top with cheese if desired.  Cook an additional 3-4 minutes.',:sequence=>4, :recipe_id=>1},
  {:description=>'Serve with toasted buns, lettuce, tomato, onion.  Consider jalapeno peppers, horseradish, and other spices.',:sequence=>3, :recipe_id=>1}
])

recipe.save