json.extract! movie, :id, :title, :release, :description, :imdb_rating, :mpaa_rating, :running_time, :created_at, :updated_at
json.url movie_url(movie, format: :json)
