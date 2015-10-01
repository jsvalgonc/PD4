class WeekNutrients < ActiveRecord::Base
    belongs_to :week
    belongs_to :nutrient
end
