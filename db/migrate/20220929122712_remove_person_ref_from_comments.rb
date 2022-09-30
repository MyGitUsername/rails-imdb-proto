class RemovePersonRefFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_reference :comments, :person, foreign_key: true
  end
end
