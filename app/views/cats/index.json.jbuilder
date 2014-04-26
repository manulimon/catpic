json.array!(@cats) do |cat|
  json.extract! cat, :id, :name, :age, :breed, :gender, :color, :coat
  json.url cat_url(cat, format: :json)
end
