json.array!(@comments) do |comment|
  json.extract! comment, :comment_ID, :comment_post_ID, :comment_author, :comment_author_email, :comment_author_url, :comment_author_IP, :comment_date, :comment_date_gmt, :comment_content, :comment_karma, :comment_approved, :comment_agent, :comment_type, :comment_parent, :user_id
  json.url comment_url(comment, format: :json)
end
