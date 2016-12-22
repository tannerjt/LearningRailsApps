class AddDogImageToDogs < ActiveRecord::Migration[5.0]
  def change
    add_column :dogs, :DogImage, :string
  end
end
