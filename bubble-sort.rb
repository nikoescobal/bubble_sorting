def bubblesort(arr)
  i=0
  while i< arr.length()
    x = i+1
    while x< (arr.length())
      if arr[x] < arr[i]
        arr[x], arr[i] = arr[i], arr[x] 
      end
      x+=1
    end 
    i+=1
  end 
  return arr
end
  y = bubblesort([1,7,5,3])
  puts y
  