class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :score
      t.integer :charactersFound
      t.integer :photograph_id
      t.timestamps
    end

    add_index :users, [:photograph_id]
  end
end
