class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :size
      # t.integer :light
      # t.string :des
      t.integer :dungeon_id
      t.integer :monster_id
    end
  end
end
