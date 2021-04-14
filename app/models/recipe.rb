class Recipe < ActiveRecord::Base
    has_many :ingredients
    has_many :steps

    accepts_nested_attributes_for :ingredients, allow_destroy: true
    accepts_nested_attributes_for :steps, allow_destroy: true

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

    def country_name
        country = ISO3166::Country[origin]
        if country.nil? 
            origin
        else 
            country.translations[I18n.locale.to_s] || country.name
        end
    end
end
