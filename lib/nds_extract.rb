$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #pp director_data
  result = 0
  director_data[:movies].each do |movie|
    result += movie[:worldwide_gross]
  end
  #puts result
  return result
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nds.each do |director|
    result[director[:name]] = gross_for_director(director)
  end
  return result
end
