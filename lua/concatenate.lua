setmetatable(_G, {
  __newindex = function (table, key, value)
    rawset(table, key, value)

    if type(value) == "table" then
      setmetatable(table[key], {__add = concatenate})
    end
  end})

function concatenate(a1,a2)
  result = #a1
  for i = 1, #a2 do
    a1[result + i] = a2[i]
  end
  return a1
end

function print_table(t)
  for k, v in pairs(t) do
    print(k .. ": " .. v)
  end
end

a = {1,2,3}
b = {4,5,6}
print_table(a + b)
