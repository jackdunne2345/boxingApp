class AddRoleToFighter < ActiveRecord::Migration[7.0]
  def change
    add_column :fighters, :role, :string
  end
end
