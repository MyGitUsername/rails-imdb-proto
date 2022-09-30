class Movie < ApplicationRecord
  has_many :roles, dependent: :destroy
  has_many :people, through: :roles

  has_many :comments, dependent: :destroy
  has_many :users, through: :comments

  validates :title, presence: true
  validates :description, presence: true
  validates :imdb_rating, numericality: { in: 0..10 }
  enum :mpaa_rating, %w[G PG PG-13 R X NC-17]
end
