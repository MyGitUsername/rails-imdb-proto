json.extract! rating, :id, :user_id, :movie_id, :rating, :created_at, :updated_at
json.url rating_url(rating, format: :json)
