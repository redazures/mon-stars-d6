class CreateDungeons < ActiveRecord::Migration[6.0]
  def change
    create_table :dungeons do |t|
      t.string :name
      t.integer :pressure 
      t.string :des
      t.string :location
      t.boolean :wet
    end
  end
end
