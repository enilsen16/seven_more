function reduce(max, init, f)
  answer = init
  for i = 1, max do
    answer = f(answer, i)
  end
  return answer
end

function add(previous, next)
  return previous + next
end

print (reduce(5, 0, add))


function factorial(n)
  return reduce(n, 1, function(a , b) return a * b end )
end

print (factorial(5))
