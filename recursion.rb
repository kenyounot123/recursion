def fibs(n)
  fibs_array = [0,1]
  for i in 2..n-1
    fibs_array[i] = fibs_array[i-1] + fibs_array[i-2]
  end
  fibs_array
end

def fibs_rec(n)
  return [0] if n == 0
  return [0, 1] if n == 1

  fib_array = fibs_rec(n - 1)
  fib_array << fib_array[-1] + fib_array[-2]
  fib_array
end

def merge_sort(array)
  return array if array.size < 2 
  middle = array.size / 2 
  left_half = merge_sort(array[0...middle])   
  right_half = merge_sort(array[middle..-1])
  merge(left_half, right_half)
end

def merge(left, right)
  sorted_array = []
  until left.empty? || right.empty?
    left.first > right.first ? sorted_array << right.shift : sorted_array << left.shift
  end
  sorted_array + left + right
end
merge_sort([6, 2, 5, 1, 32, 4])


#take in array
#if array.size = 1 return array[0]
#[0,3,2,5,4,6]
# [0,3,2]   [5,4,6]
#  [0] [3,2]    [5] [4,6]
#[0] [] [3] [2]  [5] [] [4] [6]


