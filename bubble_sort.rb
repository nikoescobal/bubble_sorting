# frozen_string_literal: true

# bubble_sort
def bubble_sort(arr)
  i = 0
  while i < arr.length
    x = i + 1
    while x < arr.length
      arr[x], arr[i] = arr[i], arr[x] if arr[x] < arr[i]
      x += 1
    end
    i += 1
  end
  arr
end
y = bubble_sort([1, 3, 5, 7])
puts y

# bubble_sort_by
def bubble_sort_by(arr)
  yield arr
  arr
end
y = bubble_sort_by([1, 7, 5, 3]) do |arr|
  i = 0
  while i < arr.length
    x = i + 1
    while x < arr.length
      arr[x], arr[i] = arr[i], arr[x] if arr[x] < arr[i]
      x += 1
    end
    i += 1
  end
end
# y = bubble_sort_by()
puts y
