require 'pp'
require 'pry'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  
  hash = {}
  
  row_index = 0 
  while row_index < directors_database.length do
   
   name = directors_database[row_index][:name]
   
   hash[name] = 0 
  
  movie_index = 0 
  while movie_index < directors_database[row_index][:movies].length do 
   
   hash[name] += directors_database[row_index][:movies][movie_index][:worldwide_gross]
   movie_index += 1 
 end
 
 row_index += 1 
 end
 
 return hash 
 
  nil
end
