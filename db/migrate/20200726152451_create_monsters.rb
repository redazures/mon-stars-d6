class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :hp 
      t.integer :ac
      t.string :trait
    end
  end
end
