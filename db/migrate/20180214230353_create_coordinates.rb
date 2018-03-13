class CreateCoordinates < ActiveRecord::Migration[5.0]
  def change

    create_table :coordinates do |t|
      #t.belongs_to :character, index: true
      t.integer :character_id
      t.integer :col
      t.integer :row

      t.timestamps
    end

    add_index :coordinates, [:character_id]
  end
end
