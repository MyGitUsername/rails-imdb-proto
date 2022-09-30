class Person < ApplicationRecord
  has_many :roles, dependent: :destroy
  has_many :movies, through: :roles

  def jobs
    roles.pluck(:job)
  end

  def movies_by(job)
    roles.select { |r| r.job == job }.map(&:movie)
  end
end
