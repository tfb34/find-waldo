class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
   	  t.belongs_to :photograph, index: true
      t.string :name

      t.timestamps
    end
  end
end
