class Nutrient < ActiveRecord::Base
  require 'csv'
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      nutrient_hash = row.to_hash
      nut=Nutrient.new
      nut.nutrno= nutrient_hash["nutrno"]
      nut.units= nutrient_hash["units"]
      nut.tagname= nutrient_hash["tagname"]
      nut.nutrdesc= nutrient_hash["nutrdesc"]
      nut.numdec= nutrient_hash["numdec"]
      nut.srorder= nutrient_hash["srorder"]
      #byebug
      nut.save
    end # end CSV.foreach
  end
end

