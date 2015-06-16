json.array!(@ingredients_nutrients) do |ingredients_nutrient|
  json.extract! ingredients_nutrient, :id, :ingredient_id, :nutrient_id, :valor
  json.url ingredients_nutrient_url(ingredients_nutrient, format: :json)
end
