json.array!(@pics) do |pic|
  json.extract! pic, :id, :user_id, :url, :header, :date, :desc, :exif
  json.url pic_url(pic, format: :json)
end
