class Dose < ApplicationRecord
  belongs_to :ingredient, dependent: :destroy
  belongs_to :cocktail
  validates :description, presence: true
  validates_uniqueness_of :cocktail, :scope => [:ingredient]
end
