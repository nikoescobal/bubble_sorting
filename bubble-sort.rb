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
y = bubblesort([1,3,5,7])  
puts y
  
def bubble_sort_by(arr)
  yield (arr)
  return arr
 end
 y =bubble_sort_by([1,7,5,3]) do |arr|
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
end
# y = bubble_sort_by()
  puts y