require "open-uri"
require "json"

url = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
content = JSON.parse(url)

content["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end


