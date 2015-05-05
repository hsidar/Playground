class Lol < ActiveRecord::Migration
  def change
    create_table :summoner do |t|
      t.string :name
      t.text :summoner_id
 
      t.timestamps null: false
  end
end
