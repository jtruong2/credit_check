
def credit_check(num)
  list_of_num = num.each_char.map(&:to_i) # convert string to array of integers
  r_list = list_of_num.reverse # reverse the array of integers
  r_list.map!.with_index do |e,i| # modify every other index
    i % 2 != 0 ? e *= 2 : e = e # IF the index is odd, multiply the element by 2, ELSE the element stays the same
  end
  final_list = r_list.map  do |j| # Find elements in the array that are greater than or equal to 10
    j >= 10 ? j.to_s.chars.map(&:to_i).reduce(:+) : j = j # IF element in index is greater than or equal to 10, convert the digits into an array and get the sum, ELSE the element stays the same
  end
  final_sum = final_list.map.reduce(:+) # Sum all the numbers of array and assign to new variable
  final_sum % 10 == 0 ? "The number is valid!" : "The number is invalid!" # IF the sum is divisible by 10, print "The number is valid!", ELSE print "The number is invalid!"
end
card_number = "342801633855673"
card_check = credit_check(card_number)

require "pry";binding.pry
