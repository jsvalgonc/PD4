json.array!(@menus) do |menu|
  json.extract! menu, :id, :day, :weekday, :meal, :recipe_id
  json.url menu_url(menu, format: :json)
end