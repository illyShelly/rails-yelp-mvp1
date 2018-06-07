class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
    # should destroy child reviews when destroying self


  validates_presence_of :name, :address
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
end
