class Field < ApplicationRecord

  validates :name, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :designation, presence: true

end