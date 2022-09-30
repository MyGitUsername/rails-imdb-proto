class Movie < ApplicationRecord
  has_many :roles, dependent: :destroy
  has_many :people, through: :roles

  has_many :comments, dependent: :destroy
  # has_many :users_commented, through: :comments, source: :user

  has_many :ratings, dependent: :destroy
  # has_many :users_rated, through: :ratings, source: :user

  validates :title, presence: true
  validates :description, presence: true
  enum :mpaa_rating, %w[G PG PG-13 R X NC-17]

  # validates :imdb_rating, numericality: { in: 0..10 }
  def imdb_rating
    return 'No ratings' if ratings.empty?

    ratings_sum = ratings.pluck(:rating).reduce(:+)
    ratings_sum / ratings.length
  end
end
