json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :measurment_unit_id, :description
  json.url ingredient_url(ingredient, format: :json)
end
