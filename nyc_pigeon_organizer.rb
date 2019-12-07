require 'pry'

def nyc_pigeon_organizer(data)
  #create the result hash
  final_hash = {}
  data.each do |keys, value|
    #keys is :color, :gender, :lives 
    #value is hashes of 4 different colors with arrays of pigeon names for each color. 2 genders with array of pigeon names for each gender. 4 locations with arrays of pigeon names for each loction.  
    #binding.pry 
   value.each do |info, pigeon_names|
     #info is purple, grey, white, brown, male, female, Subway, Central Park, Library, City Hall 
     #pigeon_names is arrays of pigeon names for the classes of info
     #binding.pry 
     pigeon_names.each do |n|
       #n is individal pigeon names in the arrays of the above-mentioned pigeon_names 
       #binding.pry 
       if !final_hash[n] 
         final_hash[n] = {}
       end 
       #binding.pry 
       if !final_hash[n][keys]
         #each value for keys: color, gender, lives is in the form of an array. only color (for some) has multiple elements
         final_hash[n][keys] = []
       end
       #binding.pry 
       final_hash[n][keys] << (info.to_s)
       #binding.pry
     end 
   end 
  end
  #binding.pry
  final_hash 
end
