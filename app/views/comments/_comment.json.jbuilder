json.extract! comment, :id, :body, :movie_id, :person_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
