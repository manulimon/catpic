json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :pic_id, :create_date, :edit_date, :text
  json.url post_url(post, format: :json)
end
