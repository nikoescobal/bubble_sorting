def bubble-sort (arr1)
  arr1.each do |i|
    x = i + 1
    loop do
      if arr1[x] < arr[i]
        arr1[x], arr[i] = arr[i], arr1[x] 
      end
      break if x > arr1.length - 1
    end 
  end
  puts #{arr1)}