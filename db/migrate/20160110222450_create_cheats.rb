class CreateCheats < ActiveRecord::Migration
  def change
    create_table :cheats do |t|
      t.string :title
      t.text :content
      t.references :cheat_id
      t.references :game_id
    end
  end
end
