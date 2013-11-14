json.array!(@commentmeta) do |commentmetum|
  json.extract! commentmetum, :meta_id, :comment_id, :meta_key, :meta_value
  json.url commentmetum_url(commentmetum, format: :json)
end
