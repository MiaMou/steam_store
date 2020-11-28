json.extract! user, :id, :nickname, :username, :password_digest, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
