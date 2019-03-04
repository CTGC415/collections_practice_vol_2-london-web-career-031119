# your code goes here
require "pry"
def begins_with_r(array)
  array.each do |string|
    if string.split(//).first != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  array.select { |e| e.include? ?a  }
end

def first_wa(array)
  array.select { |e| e.slice(0,2) == "wa" }.shift
end

def remove_non_strings(array)
  array.select { |e| e.is_a? String}
end

def count_elements(array)
  count = []
  array.uniq.each do |e|
    element = e
    element[:count] = array.count(e)
    count << element
  end
  count
end

def merge_data(keys, data)
#  binding.pry
  array = []
  keys.each do |hash|
    array << hash.merge(data[data.index(hash[:first_name])])
  end
  array
end

def find_cool

end

def organize_schools

end
