class AddClubToFighter < ActiveRecord::Migration[7.0]
  def change
    add_column :fighters, :club, :string
  end
end
