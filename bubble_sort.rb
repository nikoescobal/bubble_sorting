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
  i = 0

  while i < arr.length
    x = i + 1
    (x..(arr.length - 1)).each do |y|
      c = yield(arr[i], arr[y])

      arr[y], arr[i] = arr[i], arr[y] if c.positive?
    end
    i += 1
  end
  arr
end

y = bubble_sort_by(%w[hi greetings hello salutations hey]) do |left, right|
  left.length - right.length
end
print y
