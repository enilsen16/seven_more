function ends_in_3 (num)
  return num % 10 == 3
end

function is_prime (num)
  local count = 0
  local i = 2
  while i <= math.sqrt(num) do
    if num % i == 0 then return false end
    i = i + 1
  end
  return true
end

function prime_ends_in_three (n)
  local i = 2
  local count = 0
  while n > count do
    if ends_in_3 (i) then
      if is_prime (i) then
        count = count + 1
        print(i)
      end
    end
    i = i + 1
  end
  return
end

prime_ends_in_three(10)
