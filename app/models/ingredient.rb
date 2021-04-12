class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  validates :item, length: { maximum: 100 }
end
