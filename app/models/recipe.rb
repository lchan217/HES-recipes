class Recipe < ActiveRecord::Base
    has_many :ingredients
    has_many :steps

    validates_presence_of :title, :prep_time, :servings
    validates :ingredients, presence: true
    validates :steps, presence: true

    def total_time
        if cook_time
            prep_time + cook_time
        else
            prep_time
        end
    end
end
