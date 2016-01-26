math.randomseed(os.time())
function retry (count, body)
  local times_run = 0

  repeat
    local res = coroutine.wrap(body)()
    if (type(res) == 'string') then print(res) else return end
    times_run = times_run + 1
  until times_run > count

  print('error')
end

retry(5, function()
  if math.random() > 0.2 then coroutine.yield('Something bad happened') end
  print('Succeeded')
end)
