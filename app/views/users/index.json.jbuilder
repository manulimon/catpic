json.array!(@users) do |user|
  json.extract! user, :id, :name, :password, :flickr_id, :desc
  json.url user_url(user, format: :json)
end
