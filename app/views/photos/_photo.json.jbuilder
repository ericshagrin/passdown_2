json.extract! photo, :id, :apartment_id, :picture, :created_at, :updated_at
json.url photo_url(photo, format: :json)
