class Comment < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :user_id, uniqueness: { scope: :movie_id }
end
