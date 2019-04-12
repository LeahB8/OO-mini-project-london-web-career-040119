require_relative '../config/environment.rb'
require 'pry'

leah = User.new("Leah")
xabi = User.new("Xabi")
james = User.new("James")
neelam = User.new("Neelam")

baklava = Recipe.new("Baklava")
flan = Recipe.new("Flan")
txangurro = Recipe.new("Txangurro")
muffin = Recipe.new("Muffin")

milk = Ingredient.new("Milk")
pistachio = Ingredient.new("Pistachio")
flour = Ingredient.new("Flour")
crab = Ingredient.new("Crab")
sugar = Ingredient.new("Sugar")
salt = Ingredient.new("Salt")

allergy1 = Allergy.new(milk, xabi)
allergy2 = Allergy.new(pistachio, leah)
allergy3 = Allergy.new(flour, james)
allergy4 = Allergy.new(crab, neelam)
allergy5 = Allergy.new(crab, leah)


ri1 = RecipeIngredient.new(sugar, baklava)
ri2 = RecipeIngredient.new(pistachio, baklava)
ri3 = RecipeIngredient.new(salt, baklava)

ri4 = RecipeIngredient.new(sugar, flan)
ri5 = RecipeIngredient.new(milk, flan)
ri6 = RecipeIngredient.new(salt, flan)

ri7 = RecipeIngredient.new(crab, txangurro)
ri8 = RecipeIngredient.new(milk, txangurro)
ri9 = RecipeIngredient.new(salt, txangurro)

ri10 = RecipeIngredient.new(sugar, muffin)
ri11 = RecipeIngredient.new(milk, muffin)
ri12 = RecipeIngredient.new(flour, muffin)

rc1 = RecipeCard.new(leah, baklava, "01/01/2019", 1)
rc2 = RecipeCard.new(xabi, flan, "02/01/2019", 2)
rc3 = RecipeCard.new(james, muffin, "03/01/2019", 2)
rc4 = RecipeCard.new(neelam, txangurro, "04/01/2019", 1)
rc5 = RecipeCard.new(leah, txangurro, "05/01/2019", 4)
rc6 = RecipeCard.new(xabi, baklava, "06/01/2019", 5)
rc7 = RecipeCard.new(james, txangurro, "07/01/2019", 4)
rc8 = RecipeCard.new(neelam, muffin, "08/01/2019", 5)

binding.pry
"Mischeif Managed"
