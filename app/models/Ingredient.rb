
class Ingredient
  attr_reader :ingredient_name
  @@all =[]

  def initialize(ingredient_name)
    @ingredient_name = ingredient_name
    @@all << self
  end

  def self.all
    @@all
  end


 def self.most_common_allergen
   
   #should return the ingredient instance that the highest number of users are allergic to
 end


end
