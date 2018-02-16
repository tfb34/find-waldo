class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
   	  #t.belongs_to :photograph, index: true
      t.string :name
      t.integer :photograph_id

      t.timestamps
    end

    add_index :characters, [:photograph_id]
  end
end
