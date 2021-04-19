class Recipe < ActiveRecord::Base
    has_many :ingredients, inverse_of: :recipe
    has_many :steps, inverse_of: :recipe

    accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :steps, reject_if: :all_blank, allow_destroy: true

    validates_presence_of :title, :prep_time, :servings
    validates :ingredients, presence: true
    validates :steps, presence: true
    validates :prep_time, :cook_time, :servings, :numericality => { :greater_than_or_equal_to => 0 }

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
