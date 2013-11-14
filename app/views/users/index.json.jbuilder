json.array!(@users) do |user|
  json.extract! user, :user_id, :user_login, :user_pass, :user_nicename, :user_email, :user_url, :user_registered, :user_activation_key, :user_status, :display_name
  json.url user_url(user, format: :json)
end
