class AddTheClubToFightsReal < ActiveRecord::Migration[7.0]
  def change
    add_column :fights, :club, :string
  end
end
