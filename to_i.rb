def to_i(input)
# split the string into an array of characters for ech letter in it.
chars = input.chars

# convert  each of the items in the array from a string into an integer representation of the number.
nums = []
map = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9
}
chars.each do |char|
  num = map[char]
  nums << num
end
  
# take into account  the position of each of the element with the value it has.
total = 0
nums.reverse.each_with_index do |num, index|
  total = total + (num * 10 ** index)
end
return total



end 

puts to_i("12345").inspect #12345

# ["1", "2", "3", "4", "5"]
# [1, 2, 3, 4, 5]
# (5 * 1) + (4 * 10) + (3 * 100) + (2 * 1000) + (1 * 10000)