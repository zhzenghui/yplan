json.array!(@postmeta) do |postmetum|
  json.extract! postmetum, :meta_id, :post_id, :meta_key, :meta_value
  json.url postmetum_url(postmetum, format: :json)
end
