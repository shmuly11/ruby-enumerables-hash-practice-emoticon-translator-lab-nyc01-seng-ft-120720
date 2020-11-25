# require modules here
require 'yaml'
require 'pry'

def load_library(list)
  # code goes here
 library = {}
 list = YAML.load_file(list)
 list.each do |key, value|
     library[key] = {
      # binding.pry
       :english => value[0],
       :japanese => value[1]
     }
  
 end
 library
end



def get_english_meaning(file, emoticon)
# list1 =  load_library(file)
 
 #list1.each do |name, emoticons|
   
  ##if  emoticons.any? { |lang, symbol| symbol == emoticon }
   # emoticons.each do |lang, symbol|
      #symbol.each do 
     #   if symbol == emoticon
     #binding.pry 
    # # if emoticon == symbol
      # binding.pry
     #   return name
       # binding.pry
    # else
     #  return "Sorry, that emoticon was not found"
    # end
   #end
  
    #end
    tempHash = load_library(file)
  englishMeaning = (tempHash.select { |k,v| v[:japanese] == emoticon}).keys
  tempHash.include?(englishMeaning) ? englishMeaning : "Sorry, that emoticon was not found"
end
 # end
  
  # code goes here
  
#end

def get_japanese_emoticon(file, emoticon)
  list1 =  load_library(file)
 
 list1.each do |name, emoticons|
   if  emoticons.any? { |lang, symbol| symbol == emoticon }
     
     return lang.values[1]
     binding.pry
   end
   
 end
  # code goes here
end
#binding.pry
#load_library(YAML.load_file('./lib/emoticons.yml'))