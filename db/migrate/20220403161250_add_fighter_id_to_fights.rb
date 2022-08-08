#genreated this migration to add a index for fighter fights association
class AddFighterIdToFights < ActiveRecord::Migration[7.0]
  def change
    add_column :fights, :fighter_id, :integer
    add_index :fights, :fighter_id
  end
end
