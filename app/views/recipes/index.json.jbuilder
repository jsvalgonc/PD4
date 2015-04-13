json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :procedure, :preparationTime, :cookingTime, :serves
  json.url recipe_url(recipe, format: :json)
end
