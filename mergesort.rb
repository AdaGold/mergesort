def mergesort(unordered)

  return unordered if unordered.length <= 1
  left,right = unordered.each_slice( (unordered.size/2.0).round ).to_a
  return merge(mergesort(left), mergesort(right))

end


def merge(as, bs)
  results = []
  while as.length > 0 && bs.length > 0 do
    if as[0] < bs[0]
      a = as.slice!(0)
      results << a
      results += bs if as.empty?
    else
      b = bs.slice!(0)
      results << b
      results += as if bs.empty?
    end
  end
  results
end
