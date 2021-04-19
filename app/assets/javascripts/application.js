//= require jquery
//= require jquery_ujs 

//= require cocoon

$(document).on("DOMContentLoaded", countIngredientsOnAdd)
$(document).on("click", ".add-ingredients", countIngredientsOnAdd)
$(document).on("click", ".add-steps", countStepsOnAdd)
$(document).on("click", ".remove-ingredients", countIngredientsOnRemove)
$(document).on("click", ".remove-steps", countStepsOnRemove)

// function hideOnLoad() {
//     $('.remove-ingredients').hide()
//     $('.remove-steps').hide()
// }

function countIngredientsOnAdd(){
    const ingredientLength = $('.remove-ingredients').length
    if(ingredientLength === 1){
        $('.remove-ingredients').hide()
    } else {
        $('.remove-ingredients').show()
    }
}

function countIngredientsOnRemove(){
    const ingredientLength = $('.remove-ingredients').length
    $(this).remove()
    if(ingredientLength === 2){
        $('.remove-ingredients').hide()
    } else {
        $('.remove-ingredients').show()
    }
}

function countStepsOnAdd(){
    const ingredientLength = $('.remove-steps').length
    if(ingredientLength === 1){
        $('.remove-steps').hide()
    } else {
        $('.remove-steps').show()
    }
}

function countStepsOnRemove(){
    const ingredientLength = $('.remove-steps').length
    $(this).remove()
    if(ingredientLength === 2){
        $('.remove-steps').hide()
    } else {
        $('.remove-steps').show()
    }
}