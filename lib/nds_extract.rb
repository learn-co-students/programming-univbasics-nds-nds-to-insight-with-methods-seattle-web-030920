$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    title_index = 0 
    grand_total = 0 
    while title_index < director_data[:movies].length do
      grand_total += director_data[:movies][title_index][:worldwide_gross]
      title_index+=1
    end
    grand_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  list = {}
directors_index = 0 
  while directors_index < nds.length do 
    title_index = 0 
    grand_total = 0 
    while title_index < nds[directors_index][:movies].length do
      grand_total += nds[directors_index][:movies][title_index][:worldwide_gross]
      title_index+=1
    end
    list["#{nds[directors_index][:name]}"] = grand_total
    directors_index +=1 
 end
 pp list
end

