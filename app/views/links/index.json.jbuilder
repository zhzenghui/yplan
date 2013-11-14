json.array!(@links) do |link|
  json.extract! link, :link_id, :link_url, :link_name, :link_image, :link_target, :link_description, :link_visible, :link_owner, :link_rating, :link_updated, :time, :link_rel, :link_notes, :link_rss
  json.url link_url(link, format: :json)
end
