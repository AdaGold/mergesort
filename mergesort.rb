def mergesort(a)
  if a.length <= 1
    return a
  end
  # if the array size is 0|1 then the list is considered sorted, return sorted array
  # split the list into two halves
  left, right = split_array(a) # if odd, I put one less element on the left
  # merge sort each half
  left = mergesort(left)
  right = mergesort(right)
  # combine the sorted halves
  sorted = combine(left, right)
  return sorted
end

def split_array(a)
  # find the middle index
  n = a.length / 2
  # split the array in half - take a look at take and drop in the ruby docs, or use ranges
  left = a[0..(n-1)]
  right = a[n..-1]
  # return left and right halves of array as separate arrays - did you know a method can return multiple arrays? look it up
  return left, right
end

# precondition: a and b are sorted
def combine(a, b)
  # create a results array
  results = []
  # counters pointing to the index of the smallest elements in each array
  until a.length == 0 || b.length == 0 do
    if a[0] < b[0]
      results << a.shift
    else
      results << b.shift
    end
  end
  return results + a + b
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s

#I added this because I needed a pick me up:
puts "Yay, you did it!"
