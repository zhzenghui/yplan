json.array!(@term_taxonomies) do |term_taxonomy|
  json.extract! term_taxonomy, :term_taxonomy_id, :term_id, :taxonomy, :description, :parent, :count
  json.url term_taxonomy_url(term_taxonomy, format: :json)
end
