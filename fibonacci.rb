def fib(n)
  array = [0,1]
  (3..n).each do |i|
    array << (array[i-3] + array[-1])
  end
  puts array
end

def fib_rec(n, result = [0,1])
  if n > 1
   result << result[-2] + result[-1]
   fib_rec(n, result)
 end
 result
end
