class Recipe < ActiveRecord::Base
    has_many :ingredients
    has_many :steps

    def total_time
        if prep_time && cook_time
            prep_time + cook_time
        end
    end
end
