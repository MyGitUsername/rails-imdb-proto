class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :commented_movies, through: :comments, source: :movie

  has_many :ratings
  has_many :rated_movies, through: :ratings, source: :movie
end
