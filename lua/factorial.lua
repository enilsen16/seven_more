function factorial(n)
  reduce(n, 1, (function(a , b) return a * b
  end
  ))
end

print (factorial(5))
