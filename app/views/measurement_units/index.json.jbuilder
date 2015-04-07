json.array!(@measurement_units) do |measurement_unit|
  json.extract! measurement_unit, :id, :Unit, :Symbol
  json.url measurement_unit_url(measurement_unit, format: :json)
end
