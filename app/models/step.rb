class Step < ActiveRecord::Base
  belongs_to :recipe
  validates :description, length: { maximum: 200 }
  validates :sequence, presence: true
  validates :sequence, :numericality => { :greater_than_or_equal_to => 0 }
end
