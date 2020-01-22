$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  movies_count = 0
  gross = 0 
  
  while movies_count < director_data[:movies].length do
    gross += director_data[:movies][movies_count][:worldwide_gross] 
    movies_count += 1 
  end

  gross
end


def directors_totals(nds)
  result = {}
  directors_count = 0 
  
  while directors_count < nds.count do
    director = nds[directors_count][:name]
    result[director] = gross_for_director(nds[directors_count])
    directors_count += 1 
  end
  result 
end
