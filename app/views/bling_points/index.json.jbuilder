json.array!(@bling_points) do |bling_point|
  json.extract! bling_point, :id, :value
  json.url bling_point_url(bling_point, format: :json)
end
