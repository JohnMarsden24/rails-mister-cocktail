class Cocktail < ApplicationRecord
  has_many_attached :photos

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
  validates :photos, presence: true
end
