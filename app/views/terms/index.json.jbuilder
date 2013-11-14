json.array!(@terms) do |term|
  json.extract! term, :term_id, :name, :slug, :term_group
  json.url term_url(term, format: :json)
end
