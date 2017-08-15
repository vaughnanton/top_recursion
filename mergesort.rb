def merge(l, r)
  arr = []

  while l.size > 0 && r.size > 0
    if l[0] < r[0]
	  arr << l.shift
	else
	  arr << r.shift
	end
  end

  if l.empty?
    arr += r
  else
    arr += l
  end

  arr
end

def merge_sort(arr)
  return arr if arr.size <= 1

  l = merge_sort(arr[0...(arr.length / 2)])
  r = merge_sort(arr[(arr.length / 2)..-1])
  merge(l, r)
end

input_array = [2,8,4,3,9,1,5,7,6,0]
puts "\nOriginal array: #{input_array}"
puts "Sorted array: #{merge_sort(input_array)}"
