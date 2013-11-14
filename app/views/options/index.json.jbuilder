json.array!(@options) do |option|
  json.extract! option, :option_id, :blog_id, :option_name, :option_value, :autoload
  json.url option_url(option, format: :json)
end
