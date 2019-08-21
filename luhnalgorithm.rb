def validate(cardNumber)
  nums = cardNumber.to_s.split("")
  checkdigit = nums[nums.length - 1]
  nums[nums.length - 1] = 0
  nums.reverse!
  sum=0
  for i in 1..nums.length
    if i%2==0 
      sum = sum + nums[i].to_i  
      next
    end
    nums[i] = (nums[i].to_i*2 < 10 ) ? (nums[i].to_i*2) : (nums[i].to_i*2 - 9)
    sum = sum + nums[i].to_i
  end
  puts (10 - sum%10).to_i == checkdigit.to_i
end

validate(79927398713)