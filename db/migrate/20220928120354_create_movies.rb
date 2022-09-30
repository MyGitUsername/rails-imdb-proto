class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :release
      t.text :description
      t.float :imdb_rating
      t.integer :mpaa_rating
      t.time :running_time

      t.timestamps
    end
  end
end
