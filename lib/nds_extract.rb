$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  # pp director_data
  director_gross = 0

  director_data[:movies].each do |movie|
    director_gross += movie[:worldwide_gross]
  end
  return director_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  i = 0

  nds.each do |director|
    current_director = director[:name]
    current_gross = gross_for_director(director)
    result[current_director] = current_gross
    i += 1
  end
  return result
end
