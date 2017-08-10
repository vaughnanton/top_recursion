def fibonacci(n)
  array = [0,1]
  (3..n).each do |i|
    array << (array[i-3] + array[-1])
  end
  puts array
end

def fibonacci_recursive
end
