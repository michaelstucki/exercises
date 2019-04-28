=begin
Problem:
Write a method that counts the number of occurrences of each element in a given array.
The words in the array are case-sensitive: 'suv' != 'SUV'. ` 
Once counted, print each element alongside the number of occurrences.

Solution:
Construct a hash, vehicle type is key, number of occurrences is value.
Iterate over the array adding it to the hash.
Use Hash#has_key? and String#to_sym.
If the item is already in the hash, increment its value.
If the item is not in the hash, add it with a value of one (1).

Iterate over the hash and print the key-value pairs.
=end

def count_occurrences(vehicles)
  vehicles_hash = {}

  vehicles.each do |vehicle|
    key = vehicle.downcase.to_sym
    if vehicles_hash.has_key?(key)
      vehicles_hash[key] += 1
    else
      vehicles_hash[key] = 1
    end
  end

  vehicles_hash.each { |k, v| puts "#{k} => #{v}" }
end

if __FILE__ == $0

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

end

