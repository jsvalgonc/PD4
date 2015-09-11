class Weeks < ActiveRecord::Base

def carregaweeks
    data = DateTime.new(2015,8,31)
    #alterar da de inicio e o número de semanas
    i=0
    while i <= 156 do
      wk=Weeks.new
      wk.first_day = data
      wk.save
      data = data + 7.days
      i = i+1
    end  
end    
    

end
