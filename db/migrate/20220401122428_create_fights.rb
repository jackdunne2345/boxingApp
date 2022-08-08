#this scafoold wsa generated using rails genreate command 
class CreateFights < ActiveRecord::Migration[7.0]
  def change
    create_table :fights do |t|
      t.string :blue_corner
      t.string :red_corner
      t.date :date
      t.string :competition
      t.string :winner

      t.timestamps
    end
  end
end
