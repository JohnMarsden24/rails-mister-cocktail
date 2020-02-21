require "open-uri"
require "json"

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
content = JSON.parse(url)

content["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end


