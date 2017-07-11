module LocationsHelper

  def fetch_every_bus_in_atlanta(atl_bus_api_url)
    full_http_response = Net::HTTP.get_response(URI.parse(atl_bus_api_url))
    all_the_bus_data = full_http_response.body
    JSON.parse(all_the_bus_data)
  end

  # Find the locations that are close to the user
  def is_nearby?(user_lat, user_long, bus_lat, bus_long)
    max_distance = 0.01

    difference_lat = user_lat - bus_lat.to_f
    difference_long = user_long - bus_long.to_f

    distance = Math.sqrt(difference_lat ** 2 + difference_long ** 2)
    distance <= max_distance  
  end

end
