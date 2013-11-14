json.array!(@term_relationships) do |term_relationship|
  json.extract! term_relationship, :object_id, :term_taxonomy_id, :term_order
  json.url term_relationship_url(term_relationship, format: :json)
end
