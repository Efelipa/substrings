require 'pry-byebug'

def substrings(string, dictionary)
  string_to_arr = string.downcase.split(' ')
  dictionary.reduce(Hash.new(0)) do |hash, info|
    string_to_arr.each do |string|
      if string.include?(info)
        hash[info] += 1
      end
    end
  hash
  end
end
