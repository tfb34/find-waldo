class CreateCoordinates < ActiveRecord::Migration[5.0]
  def change
    create_table :coordinates do |t|
      t.integer :col
      t.integer :row

      t.timestamps
    end
  end
end
