=begin
Write an implementation of a function map that applies a block to all elements of an array and returns an array of the results. For example,
```map([1,2,3]) { |x| x * x }```
should return

```[1,4,9]```
Hint: Adapt the filter function

What is the code of your function?
=end

def map(arr)
  r = []
  for i in arr
    r.push( yield(i) )
  end
  return r
end
p(map([1,2,3]) { |x| x * x })
p(map([4,5,6]) { |y| y + 1 })
