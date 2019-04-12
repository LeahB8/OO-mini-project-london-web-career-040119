class User

  attr_reader :user_name
  @@all =[]

  def initialize(user_name)
    @user_name = user_name
    @@all << self
  end

  def self.all
    @@all
  end

 def recipes
   #should return all of the recipes this user has recipe cards for
   my_recipecards = RecipeCard.all.select { |recipe_card| recipe_card.user == self }
   my_recipecards.map{ |recipecard| recipecard.recipe }
 end

 def add_recipe_card(recipe, date, rating)
   RecipeCard.new(self, recipe, date, rating)
   #should accept a recipe instance as an argument, as well as a date and rating,
   #and create a new recipe card for this user and the given recipe
 end

 def declare_allergy(ingredient)
   Allergy.new(ingredient, self)
   #should accept anIngredient instance as an argument, and create a new Allergy instance
   #for this User and the given Ingredient
 end

 def allergens
   my_allergens = Allergy.all.select { |allergy| allergy.user == self}
   my_allergens.map {|allergy| allergy.ingredient }
   #should return all of the ingredients this user is allergic to
 end

 def top_three_recipes
   rated_recipes = RecipeCard.sort_by { |recipe| recipe.rating }.reverse
   rated_recipes.select[0..2]
   #should return the top three highest rated recipes for this user.
 end

 def most_recent_recipe
   
   #should return the recipe most recently added to the user's cookbook.
 end


end
