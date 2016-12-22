class CreateBreeders < ActiveRecord::Migration[5.0]
  def change
    create_table :breeders do |t|
      t.string :first_name
      t.string :last_name
      t.string :address

      t.timestamps
    end
  end
end
