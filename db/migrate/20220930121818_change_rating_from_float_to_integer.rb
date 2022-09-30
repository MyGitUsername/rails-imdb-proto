class ChangeRatingFromFloatToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :ratings, :rating, :integer
  end
end
