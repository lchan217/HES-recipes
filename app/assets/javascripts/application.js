//= require jquery
//= require jquery_ujs 

//= require cocoon

$(document).on("DOMContentLoaded", countIngredientsOnAdd)
$(document).on("DOMContentLoaded", countStepsOnAdd)
$(document).on("click", ".add-ingredients", countIngredientsOnAdd)
$(document).on("click", ".add-steps", countStepsOnAdd)
$(document).on("click", ".remove-ingredients", countIngredientsOnRemove)
$(document).on("click", ".remove-steps", countStepsOnRemove)

function countIngredientsOnAdd(){
    const ingredientLength = $('.recipe_ingredients_item').length   
    if(ingredientLength === 1){
        $('.remove-ingredients').hide()
    } else {
        $('.remove-ingredients').show()
    }
}

function countIngredientsOnRemove(){
    const ingredientLength = $(".recipe_ingredients_item:visible").length;     
    if(ingredientLength === 2){
        $('.remove-ingredients').hide()
    } else {
        $('.remove-ingredients').show()
    }
}

function countStepsOnAdd(){
    const ingredientLength = $('.recipe_steps_description').length
    if(ingredientLength === 1){
        $('.remove-steps').hide()
    } else {
        $('.remove-steps').show()
    }
}

function countStepsOnRemove(){
    const ingredientLength = $('.recipe_steps_description:visible').length
    if(ingredientLength === 2){
        $('.remove-steps').hide()
    } else {
        $('.remove-steps').show()
    }
}