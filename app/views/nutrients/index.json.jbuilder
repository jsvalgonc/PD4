json.array!(@nutrients) do |nutrient|
  json.extract! nutrient, :id, :nutrno, :units, :tagname, :nutrdesc, :numdec, :srorder
  json.url nutrient_url(nutrient, format: :json)
end
