$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  total  = 0 
  index = 0 
  while index < director_data[:movies].length do
   total += director_data[:movies][index][:worldwide_gross]
   index += 1 
 end
 total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  row = 0 
  while row < nds.length do
    name = nds[row][:name]
    result[name] = gross_for_director(nds[row]) 
  row += 1 
end
result
end
