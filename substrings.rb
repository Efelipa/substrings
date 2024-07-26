require 'pry-byebug'

def substrings(string, dictionary)
  # turn the string into an array
  string_to_arr = string.downcase.split(' ')
  # Use a reduce creating a hash with a default value "0"
  dictionary.reduce(Hash.new(0)) do |hash, info|
    # Iterate over each string inside the array
    string_to_arr.each do |string|
      # If the string include some character inside of dictionary
      if string.include?(info)
        # Create a key with the mentionated character and add 1 each time appears
        hash[info] += 1
      end
    end
  # Return the hash with the times appearing the characters inside the array
  hash
  end
end
