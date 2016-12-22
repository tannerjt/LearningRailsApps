class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :age
      t.string :gender
      t.integer :age
      t.float :price
      t.references :breeder, foreign_key: true

      t.timestamps
    end
  end
end
