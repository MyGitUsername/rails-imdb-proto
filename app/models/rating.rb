class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :rating, numericality: { only_integer: true, in: 0..10 }

  validates :user_id, uniqueness: { scope: :movie_id }
end
