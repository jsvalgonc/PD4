class Week < ActiveRecord::Base
  has_many :week_nutrients,:dependent => :destroy
  accepts_nested_attributes_for :week_nutrients, :allow_destroy => true
  

def carregaweeks
    data = DateTime.new(2015,8,31)
    #alterar da de inicio e o número de semanas
    i=0
    while i <= 156 do
      wk=Week.new
      wk.first_day = data
      wk.save
      data = data + 7.days
      i = i+1
    end  
end

end
