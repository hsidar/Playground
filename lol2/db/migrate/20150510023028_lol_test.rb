class LolTest < ActiveRecord::Migration
  def change
    create_table :summoners do |t|
    t.string :name
    t.text :summoner_id
    t.text :level

    t.timestamps null: false
    end
  end
end