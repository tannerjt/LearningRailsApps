class Dog < ApplicationRecord
  belongs_to :breeder
  mount_uploader :DogImage, DogImageUploader
  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true
  validates :age, numericality: true
  validates :gender, presence: true
  validates :price, presence: true
  validates :price, numericality: true
end
