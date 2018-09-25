def begins_with_r(array)
array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  a = []
  array.each do |word|
    if word.include?("a")
      a << word
    end
  end
  return a
end

def first_wa(array)
   array.find do |el|
    if el[0] == "w" && el[1] == "a"
      el
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |el|
    el.class != String
  end
  array
end

def count_elements(array)
  counts = Hash.new(0)
  array.collect {|element| counts[element]+=1 }
    counts.collect do |hash, number|
      hash[:count] = number
    end
  counts.keys
end

def merge_data(keys, data)
  merged_array = []
  keys.each do |key|
    key_data = data[0][key[:first_name]]
    merged_array << key.merge(key_data)
  end
  return merged_array
end

def find_cool(array)
  cool_hashes = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      cool_hashes << hash
    end
  end
  return cool_hashes
end

def organize_schools(hash)
  organized = {}
  hash.each do |key, value|
    location = value[:location]
    if organized.has_key?(location)
      organized[location] << key
    else
      organized[location] = [key]
    end
  end
  return organized
end    
  
  
  
  # your code goes here
