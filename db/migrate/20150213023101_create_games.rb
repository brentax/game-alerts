class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :steam_id
      t.string :gog_id
      t.string :humblestore_id

      t.timestamps null: false
    end
  end
end
