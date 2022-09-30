class RemoveImdbRatingFromMovie < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :imdb_rating, :float
  end
end
