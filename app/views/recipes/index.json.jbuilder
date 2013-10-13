json.array!(@recipes) do |recipe|
  json.extract! recipe, :dishType, :dish, :ingredientsSimplified, :ingredients, :nutrition, :directions, :serves
  json.url recipe_url(recipe, format: :json)
end