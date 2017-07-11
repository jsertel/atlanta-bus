json.extract! location, :id, :street_address, :city, :latitude, :longitude, :float, :created_at, :updated_at
json.url location_url(location, format: :json)
