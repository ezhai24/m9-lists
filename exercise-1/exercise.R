# Exercise 1: Lists

# Create a vector of everything you ate for breakfast
today.breakfast <- c("a damn questidila", "eggs", "salsa")

# Create a vector of everything you ate for lunch
today.lunch <- c("nuts", "JJ sandwhich")

# Create a list "meals" that has contains your `breakfast` and `lunch`
meals <- list(my.breakfast = today.breakfast, my.lunch = today.lunch)

# Add a "dinner" element to your "meals" list that has what you plan to eat for dinner
today.dinner <- c("chicken", "soup", "goldfish", "asparagus")
meals <- c(meals, list(my.dinner = today.dinner))

# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner <- meals$my.dinner

# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason)
lunch <- meals[['my.lunch']]
meals[[5]] <- lunch

# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early.meals`
early.meals <- list(meals['my.breakfast'], meals['my.lunch'])


### Bonus ###
# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function
meal.amounts <- lapply(meals, length)

# Write a function that adds pizza to every meal
AddPizza <- function(meal) {
  return(c(meal, "pizza"))
}

# Add pizza to every meal!
lapply(meals, AddPizza)
