class Menu < ActiveRecord::Base
  belongs_to :recipe
  #accepts_nested_attributes_for :recipe_nutrients, :allow_destroy => true
end
