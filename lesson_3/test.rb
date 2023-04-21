ages = [21, 34, 55, 19, 66]
highest = [0]
  
def greatest_age(arr, highest_age)
  i = 0
    
  loop do
    break if i == arr.size
      
    if (highest_age.last < arr[i])
      highest_age.push(arr[i])
      highest_age.shift
    end
      
    i += 1
  end
end
  
greatest_age(ages, highest)
p highest 