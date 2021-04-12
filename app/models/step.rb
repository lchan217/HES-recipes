class Step < ActiveRecord::Base
  belongs_to :recipe
  validates :description, length: { maximum: 200 }
end
